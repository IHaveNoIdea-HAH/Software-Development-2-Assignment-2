# Software Development 2 Sprint 1 / Game Design Document

## What is the Project about? 

The project is to develop a game.
The game I'm developing is a horror simulator game where you work inside a government facility as scientist. In a world filled with different creaures your goal is to research said creatures contained in the facility while doing objectives.

Inspired by Lobotomy Corporation created by Project Moon and SCP Foundation which is a fictiona organization that contains stories from writiers contributing to a wiki contain different creatures.

## Table of Contents
- [1.0 User & System Requirements](#10-usersystem-requirements)
  - [1.1 User Requirements](#11-user-requirements)
  - [1.2 System Requirements](#12-system-requirements)
- [2.0 Backlog](#20-scrum-style-backlog)
  - [2.1 Clickup Board](#21-clickup-board)
  - [2.2 Backlog](#22-backlog)
- [3.0 Overall Design](#30-overall-design)
  - [3.1 Atmosphere](#31-atmosphere)
  - [3.2 Development Strategy](#32-development-strategy)
  - [3.3 Game Design](#33-game-design)
    - [3.3.1 Characters](#331-characters)
    - [3.3.2 reward & challenges](#332-reward--challenge)
  - [3.4 State Diagram](#34-state-diagram)
  - [3.5 Programming & Platform](#35-programming--platform)
  - [3.6 Map](#36-map)
  - [3.7 UI Mockup](#37-UI-mockup)
- [4.0 Project Management](#40-project-management)
  - [4.1 Backlog review](#41-backlog-review)
    - [4.1.1 Week 1-2 Review](#411-week-1-2-review)
    - [4.1.2 Week 3-4 Review](#412-week-3-4-review)
    - [4.1.3 Week 5 Review](#413-week-5-review)
  - [4.2 Burndown Chart](#42-burndown-chart)
  - [4.3 Test Plan](#43-test-plan)
- [5.0 Tools Used](#50-tools-used)
  - [5.1 Clickup](#51-clickup)
  - [5.2 Roblox Studio](#52-roblox-studio)
    - [5.2.1 Roblox Tools](#521-roblox-tools)
    - [5.2.2 Explorer](#522-explorer)
    - [5.2.3 Properties](#523-properties)
- [6.0 Test](#60-test)


# 1.0 User/System Requirements

In this section. The User and System Requirements are explained in Scrum style user stories and Acceptenance requirements.


## 1.1 User requirements

**This section will explore the players needs and what should be expected when developing the game.**
| | |
|---|---|
| **Title** | Gameplay Loop |
| **Sprint #** | 1 |
| **Priority** |  High |
| **Difficulty** | MEDIUM |


### Story
As a player, I want to receive 5-15 objectives each shift that require 2-5 minutes each to complete.
As well as a Reward and Punishment system..


So that i have a clear set of tasks that I can complete during the 30 minute shift. And a goal to reach while trying to be efficient with time 

### Definition of Done
-  Objectives generate randomly at shift start
-  Objectives can be completed within 30 minutes while still having enough free time to roam around and explore.
-  Random events occuring at random wihthin the 30 minute time.
-  Objectives have two types. Objectivee given by System and NPC Quests.
-  By the end of the day players are rewarded or punished based on performance.

---

---


| | |
|---|---|
| **Title** | Player Movement |
| **Sprint #** | 1 |
| **Priority** | Very High |
| **Difficulty** | MEDIUM |


### Story
As a player, I want to be capable of sprinting

So that i can run

### Definition of Done
-  Players walkspeed increase when inputting a button

---

---

| | |
|---|---|
| **Title** | Interactive NPC |
| **Sprint #** | 1 |
| **Priority** |  High |
| **Difficulty** | MEDIUM / Low High |

### Story
As a player, I want to be capable of interacting with different characters inside the gamme.

So I can learn more about the world building and hidden lore. As well as to learn more about the characters.

### Definition of Done
-  Certain NPC can be interacted with
-  Some NPC may give tasks to do
-  Entities can be talk to as well.

---

---

| | |
|---|---|
| **Title** | Enemies |
| **Sprint #** | 1 |
| **Priority** |  High |
| **Difficulty** | Low High |


### Story
As a player, I want Enemies that chase around the player, and attack me

So I have to be checking my surrounding at all times if an enemy is hunting me down.
### Definition of Done
- AI walks to waypoints
- Follows players when they are nearby
- Attacks player when close enough


---

---

| | |
|---|---|
| **Title** | Objectives |-----can
| **Sprint #** | 1 |
| **Priority** | Medium |
| **Difficulty** | MediuM |

### Story
As a player, I want a list of objectives players can do to get paid at the end.

So I can be engaged with the game and have something to do


### Definition of Done
.
- Objectives being Side tasks, Main tasks, Extra Tasks.
- Side and Main tasks being given from the system
- Extra Tasks given by npc

---

---

| | |
|---|---|
| **Title** | Shop |chan
| **Sprint #** | 1 |
| **Priority** | Low |
| **Difficulty** | Medium |

### Story
As a player, I want to use the money I obtained through to gain items

So I have a goal to keep playing the game and to make it more fun.

### Definition of Done
- The shop must be able to take away money from the player
- The shop must give items in store to the player


## 1.2 System Requirements


| | |
|---|---|
| **Title** | Day and night System |chan
| **Sprint #** | 1 |
| **Priority** | Medium |
| **Difficulty** | Low Medium |


### Story
As a developer, I want a day and night system acting as a round system to give players a break. So that it feels like a real job

So I have a goal to keep playing the game and to make it more fun.

### Definition of Done
- Day and night must last 30 minutes combined.
- By the end of the day the players get a paycheck.

---

---

| | |
|---|---|
| **Title** | Punishment & Reward System |---chan
| **Sprint #** | 1 |
| **Priority** | Low |
| **Difficulty** | Easy |


### Story
As a developer, I want a paycheck that occurs at the end of the day, depending on how many objectives they completed. If the player fails to complete half of the objectives they get punished. 

So it gives reason for players to do objectives instead of doing nothing, and to reward those that do all the objectives
### Definition of Done
- Total of objectives the player has will be half and rounded up to the highest number is the total of objetives they need to complete.
- The punishment must be cruel enough but fair enough.

---

---

| | |
|---|---|
| **Title** | Database |
| **Sprint #** | 1 |
| **Priority** | Very High |
| **Difficulty** | Medium |


### Story
As a developer, I want to store players data on Roblox Servers through using their API

So I can make players data to be used in game. Example: Money, that will be used in shops and other things.

### Definition of Done
- Data being stored, can be retrieved, and is separate for every other player. 

---

---

| | |
|---|---|
| **Title** | Entities Mood System |
| **Sprint #** | 1 |
| **Priority** | Low |
| **Difficulty** | Easy |


### Story
As a developer, Entities contained in a cell will have a 0-100% chance of escaping the cell. The chance is manipulated based on the action revolving around the Entity interaction. 

So that Entities don't just stay in place the whole day, they have a chance to escape so players have to monitor the entities while balancing time to do objectives

### Definition of Done
- 3 things to change the chances, those 3 things are also the main task to complete.
- 1. Players can send test to see its beheaviour, this will increase chances
- 2. To feed entities, decrease chance
- 3. Chatting can increase and decrease chance 

---

---

| | |
|---|---|
| **Title** | Audio System |---
| **Sprint #** | 1 |
| **Priority** | Medium |
| **Difficulty** | Medium |


### Story
As a developer, I want an audio system that plays the appropriate audio when a certain action or scenario occurs.

So that players get a user input feedback

### Definition of Done
- Plays audio


---
player movement they cant jump but they sprint
---

# 2.0 SCRUM Style Backlog

## 2.1 Clickup board:

<img width="835" height="884" alt="Image" src="https://github.com/user-attachments/assets/4c8a895f-b32c-4953-a99f-eb7030603f94" />

## 2.2 Backlog
| ID | Title | Points | Priority | User Story | Definition of Done | Status |
|---|---|---|---|---|---|---|
| 1 | Database to store player data | 9 | High| As a developer, I want to store players data on Roblox Servers through using their API <br> <br> So I can make players data to be used in game. Example: Money, that will be used in shops and other things.| Data being stored, can be retrieved, and is separate for every other player.  | COMPLETE |
| 2 | Objective generation | 5 | Normal | As a developer, I want my game to generate a list of objective for players to complete. So that players have mini goal to reach | Objectives being Side tasks, Main tasks, Extra Tasks. <br> <Br> Side and Main tasks being given from the system <br> <br> Extra Tasks given by npc | COMPLETE |
| 3 | Night and day to represent a round system |5 | Medium  |As a developer, I want a day and night system acting as a round system to give players a break. So that it feels like a real job <br> <br>So I have a goal to keep playing the game and to make it more fun. | Day and night must last 30 minutes combined.| COMPLETE |
| 4 | NPC Simple Monster AI | 5 | Normal | As a developer, I want an AI that has simple functions such as roaming, chasing and attacking. <br><br> So that there's a threat players should look out for | Monster walks to set waypoint. <br><br> If player is nearby, chase them. <br><br> If player is close enough, damage them |COMPLETE |
| 5 | Paycheck | 3 | Low |As a developer, I want a paycheck that is given at the end of the day, depending on how many objectives they completed. If the player fails to complete half of the objectives they get punished and rewards reduced. <br> <br> So it gives reason for players to do objectives instead of doing nothing, and to reward those that do all the objectives | Gives money <br> <br>Reduce money if objectiives not completed | COMPLETE |
| 6 | Creation of map | 7 | High | As a developer, I want a map that players can walk on instead of the default baseplate. So that players are more immersed into the game. | Must be Facility Lab Style. <br><br>Must have 1 floor in sprint 1 | IN PROGRESS |
| 7 | Creation of UI | 5 | Normal | As a developer, I want basic UI that can be expanded on. <br><br> So that in the future, Ui can be redesign and fit the aesthetic of the game | Basic UI | COMPLETE  |
| 8 | Multiple Monster | 7 |High | As a developer, I want 4 entities. <br><br> So that it can be expanded on and makes players more interested in learning new creatures and their mechaninics | Multiple entities that vary in appearance and mechanic | IN PROGRESS |
| 9 | punishment and reward system | 3 | low | As a developer, I want a fair reward and punishment. <br><br> So that players got goals to either meet the qouta or achieve higher.| Appropiate rewards base on performance. <br><br> Punishment base on lack of doing quests| IN PROGRESS |
| 10 | Interactive AI to talk to | 6 | High | As a player, I want to be capable of interacting with different characters inside the gamme. <br><br> So I can learn more about the world building and hidden lore. As well as to learn more about the characters. | Certain NPC can be interacted with <br><br> Some NPC may give tasks to do <br><br> Entities can be talk to as well. | TO DO |
| 11 | Shop System | 3 | low |As a player, I want to use the money I obtained through to gain items <br> <br> So I have a goal to keep playing the game and to make it more fun. | The shop must be able to take away money from the player <br><br> The shop must give items in store to the player | TO DO |
| 12 | Unique Monster AI | 7 | High | As a developer I want Monster AI to have unique behaviour such as stalking. <br><br> So it increases the horror factor | State Machine controlling NPC| TO DO |
| 13 | NPC Giving mini quests | 2 | Low| As a developer, I want NPC that give small quests so players can learn more about the NPC while gainings mall rewards| NPC gives quests that may give lore<br><br>The quests give rewards| TO DO |
| 14 | NPC Scientist walking to waypoints | 5 | Normal  |As a developer, I want npc to walk to one point to another. To pretend they are working. So that the place seem more lively | The NPC Shouldn't take  too much processing power causing it to lag. <br><br> NPC shouldn't collide with players or each other.| TO DO |
| 15 | Audio System | 5 | Medium| As a developer, I want an audio system that plays the appropriate audio when a certain action or scenario occurs. <br> <br>So that players get a user input feedback | Plays audio at the correct time | TO DO |
| 16 | Animation of AI |5 | Normal | As a developer I want an Animation Handler <br> <br> So when AI or players move or do an action, it plays an animation enhancing the player experience.| Plays animation| TO DO |


---

# 3.0 Overall Design

This is the part where the design choices for creating the game are made.

Exploring the Game design, devleopment strategies, the game story, characters, encironment, levels, gameplay and more.

### 3.1 Atmosphere
+ The Game will be a horror simulator game, with objectives to do and creatures roaming around.
+ Every time a player dies they experience consequences.
+ Semi-Realistic

---

### 3.2 Development Strategy

**Methodology: Agile/Scrum**

The Project will follow the agile Methodology. Using Scrum Framework.

Agile Methodology is used in software development. Where people focus in delivering small parts of the projects and making changes as they review. 

Scrum is when you check what has been done, what they'll do next and if there was any blockers

---

### 3.3 Game Design

**Game Lore**

Once in a peaceful world, suddenly turned chaotic during an eclipse. As creatures began manifesting from the dark. Causing terror across the globe. Humanity military were deployed to deal with the new threeat, all attempts were in vain as the creatures were too vast in numbers and powers. Causing humanity to create an Organization called the (CRC) to Contain, Research and Combat the creatures found in the world in hopes to restore peace in the world. 


> [!NOTE]
> This incident was named "The Eclipse Collapse" ever since the creatures manifested.


CRC
Contain: Contain all entities found in the wild.
Research: Research all information about the entities.
Combat: Combat all entities for a better future

<img width="674" height="720" alt="image" src="https://github.com/user-attachments/assets/d05b2b1d-efcf-4cb5-89e8-bc0653dcea94" />




### 3.3.1 Characters

**Main Characters**

| Name | Role | Info| 
| --- | ---| ---|
| The PLayer | Recruited Scientist | Recently Hired by the CRC |
|Emily Forrest | Head Scientist | Responsible for managing the scientist |
| Jack Uchi | Senior Security Guard | Responsible for guarding the facility |
| James Pello | Junior Security Guard | Responsible for guarding the facility |
| Sara Yuwilno | Junior Scientist | To research and objectives |

**Facility Roles**

| Role | What they'll do | Other info | 
| --- | --- | --- | 
|Scientist | Research entities and find out how to combat the entity long terms. | Normally responsible for cleaning the facility, other entities cell as well as delivering documents and testing entities |
| Security Guard | Ensure the entities are contained and protect Scientist | All Security guards must sacarfise their lives if a scientist is endanger. |
| Test Subject | To be test on entities | Death row inmates that were transferred and now to be tested on |



**Entities contained in the facility**

Each entity will be Catelogged using this

Number: Assigned Number 

Danger level: 
+ 1 being not aggressive
+ 5 being super aggressive

Risk of escaping:
+ 1 being unlikely they'll escape
+ 5 being monitor at all times

Classified: Animated or non-animate

Final Designation: E-111A

---

E-134A

Made by: ⋆౨ eheg ৎ˚ 

<img width="861" height="484" alt="image" src="https://github.com/user-attachments/assets/a3f8c4e3-ecef-439d-baf3-baf18e23ec97" />



<details>
  
  
  <summary>Click to expand</summary>
  <br>
  Name: Skin Keeper/Mimic
  
  <br>
  Danger level: 3
  <br>
  Risk of escaping: 4
  <br>
  Classified: Animated
  <br>
  Designation: E-134A (Designated number, Danger Level, Risk of Escaping, Classificatiion)
  <br><br>
  info:  <br>
  
E-134A is a humanoid shape figure covered in an unknown black liquid substance. 

E-134A normally has skin attached to their body, the skin is from their last victim they stole it from. A unique property of E-134A is the skin it steals rot faster than normal.

E-134A is generally docile. However when the skin decays to a certain degree, it will become hostile and hunt for humans, ignore animals unless attacked by one. When reaching its target, it will kill and take the skin and wear it. After enough skin has been collected, E-134A will become docile agaiin.

The Skin Keeper was contained during the beginning of the Eclipse Collapse, found in a house, docile. It later escape containment during the time it's skin fully rotted.

</details>



---

E-223A

Made by: ⋆౨ eheg ৎ˚ 

<img width="861" height="484" alt="image" src="https://github.com/user-attachments/assets/f150ed5c-c079-42c1-8278-f933cf037e52" />



<details>
  
  
  <summary>Click to expand</summary>
  <br>
Name: The Invisible Watcher

Danger level: 3

Risk of escaping: 3

Classified: Animated

Designation: E-233A


Info:

E-223A is a tall and lanky humanoid figure, with their arms and torso being stretch than normal. E223A constantly disguises itself based on the surroundings it's in.

E-223A has shown hostile behaviour to staff and had been violent during an outbreak in Site-██. Causing it to be relocated mutiple times.

The Invisible watcher was captured in the Amazon Forest after 3 missing people suddenly appeared and warned of a tall creature. Task Force was dispatched and only a trapped creature was sent back as the rest of the Task Force were MIA.
</details>

---

E-311NA

Made by: ⋆౨ eheg ৎ˚ 

<img width="861" height="484" alt="image" src="https://github.com/user-attachments/assets/2770c5b8-c8ee-4601-b0be-e28801871850" />



<details>
  
  
  <summary>Click to expand</summary>
  <br>

Name: The Wise Banana

Danger level: 1

Risk of escaping: 1

Classified: Non-Animated

Designation: E-311NA

info:

The wise Banana was brought into containment after a Scientist had predicted multiple events such as power outage, creatures escaping, and even large scale incidents that were to happen to cities.

It was later found that the Scientist held a speaking Banana that predicted the future. The scientist had been put on administrative leave due to mishandling an entityy.

E-311NA is an ordinary banana when ripen, and will slowly unpeel itself. When unpeeled with no human interference, a face will grow on the Banana and it will develop a mind of its own, often warning dangers of events that will happen before peeling itself and ripening again to repeat the cycle.
</details>

---

E-441NA

No image were provided due to the properities.

<details>
  
  
  <summary>Click to expand</summary>
  <br>
Name: The unknown

Danger level: 4

Risk of escaping: 1

Classified: Non-Animated

Designation: E-441NA

Info:

E-441a has no confirmed form on what it looks like. Any attempts on looking at the entity, directly or indirectly will make the viewer be forced to look away, this has been called the "Don't look effect" where no matter the life form, the head, eyes, or torso will be turned to look away no matter what. This includes to animals, robots, any concept of "looking".

This has resulted in 93 casuality from employees alike, due to the "Don't Look" effect snapping their neck as their head is turned 180 degree.

It's unknown how this Entity was brought into the custody of the CRC. Some Speculate that the facility was built around E-441A, while others say that E-441A teleported inside the cell.
</details>

---

### 3.3.2 Reward & Challenges

<h><u>Rewards</u></h1>

Players are given a random amount of objectives to do.

Objectives are combined into three categories.



**Main Objectives**

These objectives mainly revolve around the entities.

They give higher rwards when completed.




**Side Objectives**

These objectives involve the facility itself.

It includes cleaning around the facility, restocking supplies, etc.

These don't give much reward. However there's more objectives than main.



**Requests**

These are objectives that are given by NPC and are specific to their respected NPC.

They give random rewards, Some Higher than main objective, some lower than side objectives.

---

<h1><u>Challenges</u></h1>

**Consequences**

The Consequence occur when
+  you fail to complete half of the total Objectives
+  You die

If any of these occur, your "RiskOfFiring" will be increased by one

The consequences is getting the money of each objective you failed decreasing the total value of your money.

If it reaches below 0, kicks player out of game.

**Entities**

There will be multiple entities in the game with different mechanics. So players will have to learn how to adapt to them

Each entity will have a risk of escaping **(RIE)** value that is 1-100. The RIE can be increase and decrease by certain actions, however, the RIE will increase passviely regardless of any player input. Meaning entities must be monitored at all times.






---


### 3.4 State Diagram

**Enemy AI**

<img width="804" height="1125" alt="Image" src="https://github.com/user-attachments/assets/d981a23c-0329-496f-b30e-34cfb7203c42" />



**Game Loop**


<img width="392" height="934" alt="Image" src="https://github.com/user-attachments/assets/1c665ac6-6aa0-4c2b-8b0c-cb6f1af5585a" />


## 3.5 Programming & Platform

LUAU a customise version of LUA

On the platform Roblox. A storage filled with thousands of games created by many. 

## 3.6 Map

Floor 1:

<img width="1293" height="791" alt="image" src="https://github.com/user-attachments/assets/c3004389-9b71-479a-9998-c469ac0a712b" />

Floor 2:

<img width="1670" height="939" alt="image" src="https://github.com/user-attachments/assets/f52d3af9-e01b-498e-a599-b8a08fd6c917" />

## 3.7 UI Mockup

MENU:

<img width="1236" height="684" alt="image" src="https://github.com/user-attachments/assets/a2f836c1-eda2-4268-ba7a-073352c37093" />


ENTITY INFORMATION:

<img width="1236" height="684" alt="image" src="https://github.com/user-attachments/assets/1c79735b-f2e3-4bb1-ba3c-5762977ab5be" />


# 4.0 Project Management

## 4.1 Backlog Review
### 4.1.1 Week 1-2 Review

**6th February 2026 - 20th February**

**What we completed**

+ Objectives Generation
+ Database to store player information
+ Increased Objectives
+ Day and Night System
+ Round System
+ PayCheck

**What's next**
+ NPC Creation
+ Better AI

**Problems faced**
+ Pathfinding
There were problems with the pathfinding, AI stopped every few seconds when reaching a waypoint

---

### 4.1.2 Week 3-4 Review  

**21 February 2026 - 7th March 2026 **

**What we completed**
+ UI showing objective
+ Made objectives be connected to the UI
+ Completed a bit of the map


**What's next**
+ NPC Giving side quests
+ Rework AI Pathfinding
+ Complete more of the map
+ Script more objectives.


**Problem faced**
+ Ai Pathfinding
There were still trouble when chasing the players.

+ Lack of time
Not enough time to dedicate in fixing pathfinding. Focus has been shifted to other things.

---

### 4.1.3 Week 5 Review

**7 February 2026 - 14th March 2026**

**What we completed**
+ Redone paycheck
+ Relocated to clickup instead of jira
+ Increase GUI for Game.
+ Added more tasks

**What's next**
Until next sprint. Polishing what we have currently

**Problem faced**
The backlog in clickup incorrectly showcase the events that occured across the weeks the project took place in.
Jira being too confusing to navigate and use. Ultimately leading to the migration to clickup.

Not enough time in general to fix every bug found. Due to other assignments

## 4.2 Burndown Chart

<img width="907" height="426" alt="image" src="https://github.com/user-attachments/assets/e889c010-14c1-42f6-ab35-e02c852bb717" />

---

## 4.3 Test plan

The test will be separated into three categories

System: Anything that occurs in the system directly will be categories here

AI: Anything related to the AI such as waypoint, movement, attacking.

Objectives: Objectives similar to the system. However, it solely must revolve around the objectives


# 5.0 Tools used

## 5.1 Clickup

For creating the Backlog, I used Clickup after switching from Jira.

<img width="908" height="578" alt="image" src="https://github.com/user-attachments/assets/3546e61f-a2de-4e2e-9b20-ca0257ac0f1c" />


## 5.2 Roblox Studio

The game was created on the Platform called "Roblox". Where thousands of games created by millions are stored in Roblox Servers. The way players create games is through Roblox Studio, a 3d Space where players can build anything and code with the customised lanaguage of LUA created by Roblox called LUAU.

Game engine: LUAU used by Roblox

Game Hosted: Roblox Platform

### 5.2.1 Roblox Tools

Roblox Studio offers a wide range of tools. However, there is very few that are actually important

<img width="1579" height="137" alt="Image" src="https://github.com/user-attachments/assets/7a3728e7-e456-43ac-a571-d74edcba72f7" />



**Important**:

Select: Selects models and parts. Highlighting the selected parts.

<img width="278" height="190" alt="Image" src="https://github.com/user-attachments/assets/1aa775f0-fd1d-4b2a-8582-6a39918dd854" />

Move: Moves the selected part across the Y, X and Z Axis.

<img width="308" height="286" alt="Image" src="https://github.com/user-attachments/assets/c307acb7-2c7c-4712-934c-c0ebf2844b7f" />

Scale: Resizes Selected Parts across the Y, X and Z Axis

<img width="291" height="228" alt="Image" src="https://github.com/user-attachments/assets/b161443f-a751-42b2-9131-ba82570dcb4e" />

Rotate: Rotate selected parts in a 360 degree across the Y, X and Z Axis

<img width="287" height="288" alt="Image" src="https://github.com/user-attachments/assets/b0c6e704-5673-452f-b172-92dfd4c4f0be" />

Part: Different parts for building

<img width="181" height="280" alt="Image" src="https://github.com/user-attachments/assets/e825292e-4a33-4b64-a7f0-3c0fefb48752" />

GUI: GUI for players

<img width="146" height="238" alt="Image" src="https://github.com/user-attachments/assets/e384cd51-1925-4da1-a1f6-a220c4f960bd" />

Scripts: For coding

<img width="164" height="191" alt="Image" src="https://github.com/user-attachments/assets/87635ff7-b015-42a3-9f76-a8355349ec39" />

---

### 5.2.2 Explorer

Explorer holds different service creators can use to build their game.

However, we'll list the more important Services

<img width="284" height="384" alt="Image" src="https://github.com/user-attachments/assets/a320287c-166d-48b8-b338-223170a5b733" />



Workspace: Responsible for the 3d space players

Players: Responsible for keeping track of player name and data

Lighting: Responsible for how the workspace looks

ReplicatedStorage: Things that need to be replicated multiple times

ServerScriptService: Cannot be access locally. responsible for holding scripts that effect the entire server

StarterGUI: the GUI that will show up when joining if enabled

StarterPlayer: Responsible for holding the local scripts.


### 5.2.3 Properties

Properties holds the instances of the selected item.

<img width="608" height="548" alt="Image" src="https://github.com/user-attachments/assets/f0db5072-1bc4-42d0-8e17-390c831b18de" />





# 6.0 Test (future self sort these into 3 categories System, Ai, Objectives and possibly more we are running out of time,the past is counting on you


## System
| What's being tested | How is it being tested | What should happen | What actually happened | Evidence | Comment |
| ---------------- | ---------------- | ---------------- | ---------------- | ---------------- | ---------------- |
| Database | Joining | When joining it creates data for the player | Done exactly like that | <img width="1478" height="651" alt="image" src="https://github.com/user-attachments/assets/8b132417-1b69-46f8-974d-f482e3592dd6" /> <br> <br>  <img width="710" height="600" alt="image" src="https://github.com/user-attachments/assets/3a97a951-1f66-43ea-aea6-bf84a4b9cabf" /> | N/A |
| Database saving | Leaving and seeing if data been saved | When leaving a message in the server should say the data been saved. Checking the database the information should be updated | No Issue | <img width="982" height="69" alt="image" src="https://github.com/user-attachments/assets/cf3a092f-a1b3-4823-9c45-c342da9bfa7f" /> <br> <br> Before: <img width="644" height="398" alt="image" src="https://github.com/user-attachments/assets/b2a84381-966c-411c-91b6-e489d48da4f9" /> <br> <br> After: <img width="672" height="626" alt="image" src="https://github.com/user-attachments/assets/9f3de3b6-f704-4de5-871e-4c25dc5f0f3c" /> | N/A |
| Day & Night System | Waitig | Turned day and night at the correct | Done as intended | <img width="980" height="351" alt="image" src="https://github.com/user-attachments/assets/38c99b16-dce3-4b1a-a454-ebb4cb7c77f6" /> <img width="1275" height="624" alt="image" src="https://github.com/user-attachments/assets/7c8407a2-0c6f-4eec-967e-dd7f27e5ca76" />| N/A |
| Reward/Paycheck system | Waiting till the end of day | Show gui of the reward based on objective done |  Some weird issue where rewards are still given despite doing no objectives. It's unknown what's the cause.  | <img width="588" height="565" alt="image" src="https://github.com/user-attachments/assets/9ebc4fcc-f789-49cb-8870-f26300456f22" /> <img width="563" height="565" alt="image" src="https://github.com/user-attachments/assets/867177ef-a049-4fad-a503-f07c98b80a57" />  | Further investigation is needed. |


---


## AI
| What's being tested | How is it being tested | What should happen | What actually happened | Evidence | Comment |
| ---------------- | ---------------- | ---------------- | ---------------- | ---------------- | ---------------- |
| AI Walking to way point | The AI roams around reaching certain points | Caculates a pathway and move the waypoint | Stops every time they reach a point | <img width="723" height="274" alt="image" src="https://github.com/user-attachments/assets/125c124b-bdca-49de-898e-11de8d0a8f2b" /> | Issue been fixed |
| AI Chasing player | A player nearby AI | Chase player | Chase player but stops for unknown reason | <img width="703" height="329" alt="image" src="https://github.com/user-attachments/assets/fa778154-4b17-407d-8f98-08d01581d199" /> | More research requirde |


---


## Objective
| What's being tested | How is it being tested | What should happen | What actually happened | Evidence | Comment |
| ---------------- | ---------------- | ---------------- | ---------------- | ---------------- | ---------------- |
| Objective generation | PLaying the game and seeing the console | Generates objective | Generated a list of objective | <img width="930" height="495" alt="image" src="https://github.com/user-attachments/assets/ff5cfc84-73f6-42c0-a9dc-c4c521c7065b" /> | N/A |
| GUI  | Pressing a button to showcase objectives | Shows gui when pressing button | No issues | <img width="1064" height="588" alt="image" src="https://github.com/user-attachments/assets/0b03682a-4f7d-41a3-ae50-b9a64328f4aa" /> | GUI show be reworked |
| OBjective 1 Delivery | When completing the objectives. You can't complete more than required | Value of the objective is enabled and you can't enable any more | Done as intended | <img width="457" height="516" alt="image" src="https://github.com/user-attachments/assets/b8c3264e-55da-46f9-8dfd-b83b503298ae" />| Need further enhancing |
| Objective 3 Clean up puddle generation | Generates puddle in spots | Generates 10 puddles | puddles generated with no issue | <img width="457" height="295" alt="image" src="https://github.com/user-attachments/assets/33c1d3b1-4870-4caa-8fda-5c3bc67928a8" /> | N/A |
| Objective 3 Completion | Collecting all puddles | Says you completed with no issue | done as intended | <img width="579" height="41" alt="image" src="https://github.com/user-attachments/assets/57ec3e62-5061-4490-88a8-a767f5b78521" /> | N/A |



