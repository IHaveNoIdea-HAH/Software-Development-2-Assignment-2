local LocalizationService = game:GetService("LocalizationService")
local Players = game:GetService("Players")
local SOURCE_LOCALE = "en"
local translator = nil
local AnimateUI = {}



function AnimateUI.loadTranslator()
	pcall(function()
		translator = LocalizationService:GetTranslatorForPlayerAsync(Players.LocalPlayer)
	end)
	if not translator then
		pcall(function()
			translator = LocalizationService:GetTranslatorForLocaleAsync(SOURCE_LOCALE)
		end)
	end
end

function AnimateUI.typeWrite(guiObject, text, delayBetweenChars, click)
	guiObject.Visible = true
	guiObject.AutoLocalize = false
	guiObject.RichText = true -- Ensure RichText is enabled
	local displayText = text

	-- Translate text if possible
	if translator then
		displayText = translator:Translate(guiObject, text)
	end

	displayText = displayText:gsub("<br%s*/>", "\n")

	-- Process pause markers and create pause table
	local pausePositions = {}
	local cleanText = ""
	local textIndex = 0

	-- Method 1: Using {pause:duration} markers
	-- Example: "Oh!{pause:1} Hey there!{pause:0.5} How are you?"
	local i = 1
	while i <= #displayText do
		local char = displayText:sub(i, i)

		-- Check for pause marker
		local pauseStart, pauseEnd, duration = displayText:find("{pause:([%d%.]+)}", i)
		if pauseStart == i then
			-- Found pause marker at current position
			pausePositions[textIndex] = tonumber(duration)
			i = pauseEnd + 1
		else
			-- Regular character
			cleanText = cleanText .. char
			textIndex = textIndex + 1
			i = i + 1
		end
	end

	-- Method 2: Using punctuation-based pauses (alternative approach)
	-- Uncomment this section if you prefer automatic pauses after punctuation

	cleanText = displayText
	-- Add automatic pauses after certain punctuation
	local punctuationPauses = {
		["!"] = 0.8,
		["?"] = 0.8,
		["."] = 0.6,
		[","] = 0.3,
		[":"] = 0.4,
		[";"] = 0.4,
		["..."] = 1.0
	}

	for i = 1, #cleanText do
		local char = cleanText:sub(i, i)
		-- Check for ellipsis first (3 dots)
		if cleanText:sub(i, i+2) == "..." then
			pausePositions[i+2] = punctuationPauses["..."]
		elseif punctuationPauses[char] then
			pausePositions[i] = punctuationPauses[char]
		end
	end


	guiObject.Text = cleanText
	guiObject.MaxVisibleGraphemes = 0
	local termination

	termination = click.MouseButton1Click:Connect(function() 
		guiObject.MaxVisibleGraphemes = -1
		termination:Disconnect()
	end)

	local index = 0
	for first, last in utf8.graphemes(cleanText) do
		if guiObject.MaxVisibleGraphemes == -1 then break end 
		index += 1
		guiObject.MaxVisibleGraphemes = index

		-- Check if there's a pause at this position
		if pausePositions[index] then
			task.wait(pausePositions[index])
		else
			task.wait(delayBetweenChars)
		end
	end
end

-- Alternative function for simple dot-based pauses
function AnimateUI.typeWriteWithDotPauses(guiObject, text, delayBetweenChars, click, dotPauseDuration)
	dotPauseDuration = dotPauseDuration or 1.0 -- Default 1 second pause for ".."

	guiObject.Visible = true
	guiObject.AutoLocalize = false
	guiObject.RichText = true
	local displayText = text

	if translator then
		displayText = translator:Translate(guiObject, text)
	end

	displayText = displayText:gsub("<br%s*/>", "\n")
	guiObject.Text = displayText
	guiObject.MaxVisibleGraphemes = 0
	local termination

	termination = click.MouseButton1Click:Connect(function() 
		guiObject.MaxVisibleGraphemes = -1
		termination:Disconnect()
	end)

	local index = 0
	local i = 1

	while i <= #displayText do
		if guiObject.MaxVisibleGraphemes == -1 then break end

		local char = displayText:sub(i, i)
		index += 1
		guiObject.MaxVisibleGraphemes = index

		-- Check for double dots or more for pauses
		if char == "." then
			local dotCount = 0
			local j = i
			while j <= #displayText and displayText:sub(j, j) == "." do
				dotCount += 1
				j += 1
			end

			-- If 2 or more dots, add pause after them
			if dotCount >= 2 then
				-- Skip to end of dots
				for k = 1, dotCount - 1 do
					if guiObject.MaxVisibleGraphemes == -1 then break end
					index += 1
					guiObject.MaxVisibleGraphemes = index
					task.wait(delayBetweenChars)
				end
				i = j
				task.wait(dotPauseDuration) -- Longer pause
			else
				i += 1
				task.wait(delayBetweenChars)
			end
		else
			i += 1
			task.wait(delayBetweenChars)
		end
	end
end

return AnimateUI
