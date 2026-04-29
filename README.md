# Software Development 2 Sprint 2 / Game Design Document

## What is the Project about? 

The project is to develop a game.
The game I'm developing is a horror simulator game where you work inside a government facility as scientist. In a world filled with different creaures your goal is to research said creatures contained in the facility while doing objectives.

Inspired by Lobotomy Corporation created by Project Moon and SCP Foundation which is a fictiona organization that contains stories from writiers contributing to a wiki contain different creatures.

## Table of Contents
- [1.0 Backlog Updated](#10-backlog-updated)
  - [1.1 Completed](#11-completed)
  - [1.2 In Progress & To Do](#12-in-progress--to-do)
- [2.0 Design and Development Documentation](#20-design-and-development-documentation)
  - [2.1 Things Added](#21-things-added)
  - [2.2 Things Changed](#22-things-changed)
- [3.0 Project Management](#30-project-management)
  - [3.1 Burndown Chart](#31-burndown-chart)
  - [3.2 Week Review](#32-week-review)
    - [Week 1 01/04/2026 - 08/04/2026](#week-1-01042026---08042026)
    - [Week 2 09/04/2026 - 15/04/2026](#week-2-09042026---15042026)
    - [Week 3 16/04/2026 - 28/04/2026](#week-3-16042026---28042026)
- [4.0 Tools and Techniques](#40-tools-and-techniques)
  - [4.1 Tools](#41-tools)
    - [4.1.1 Roblox Studio](#411-roblox-studio)
    - [4.1.2 Pathfinding Module](#412-pathfinding-module)
    - [4.1.3 Typewriting Module](#413-typewriting-module)
    - [4.1.4 DataStoreService](#414-datastoreservice)
  - [4.2 Techniques](#42-techniques)
    - [4.2.1 State Machine](#421-state-machine)
    - [4.2.2 Modularisation](#422-modularisation)
    - [4.2.3 OOP](#423-oop)
- [5.0 Test](#50-test)

# 1.0 Backlog updated


## 1.1 Completed

| ID | Sprint | Title | Points | Priority | User Story | Definition of Done | Status |
|---|---|---|---|---|---|---|---|
| 1 | Sprint 1 | Database to store player data | 9 | High| As a developer, I want to store players data on Roblox Servers through using their API <br> <br> So I can make players data to be used in game. Example: Money, that will be used in shops and other things.| Data being stored, can be retrieved, and is separate for every other player.  | COMPLETE |
| 2 | Sprint 1 | Objective generation | 5 | Normal | As a developer, I want my game to generate a list of objective for players to complete. So that players have mini goal to reach | Objectives being Side tasks, Main tasks, Extra Tasks. <br> <Br> Side and Main tasks being given from the system <br> <br> Extra Tasks given by npc | COMPLETE |
| 3 | Sprint 1 | Night and day to represent a round system |5 | Medium  |As a developer, I want a day and night system acting as a round system to give players a break. So that it feels like a real job <br> <br>So I have a goal to keep playing the game and to make it more fun. | Day and night must last 30 minutes combined.| COMPLETE |
| 4 | Sprint 1 | NPC Simple Monster AI | 5 | Normal | As a developer, I want an AI that has simple functions such as roaming, chasing and attacking. <br><br> So that there's a threat players should look out for | Monster walks to set waypoint. <br><br> If player is nearby, chase them. <br><br> If player is close enough, damage them | COMPLETE |
| 5 | Sprint 1 | Paycheck | 3 | Low |As a developer, I want a paycheck that is given at the end of the day, depending on how many objectives they completed. If the player fails to complete half of the objectives they get punished and rewards reduced. <br> <br> So it gives reason for players to do objectives instead of doing nothing, and to reward those that do all the objectives | Gives money <br> <br>Reduce money if objectiives not completed | COMPLETE |
| 7 | Sprint 1 | Creation of UI | 5 | Normal | As a developer, I want basic UI that can be expanded on. <br><br> So that in the future, Ui can be redesign and fit the aesthetic of the game | Basic UI | COMPLETE |
| 10 | Sprint 2 | Interactive AI to talk to | 6 | High | As a player, I want to be capable of interacting with different characters inside the game. <br><br> So I can learn more about the world building and hidden lore. As well as to learn more about the characters. | Certain NPC can be interacted with <br><br> Some NPC may give tasks to do <br><br> Entities can be talked to as well. | COMPLETE |
| 17 | Sprint 2 | Choice System | 4 | High | As a player, I want to be able to choose responses when talking to NPCs. <br><br> So I can feel more engaged with the world and characters. | Player is presented with choices during NPC dialogue <br><br> Each choice triggers a different NPC response | COMPLETE |
| 6 | Sprint 2 | Creation of map | 7 | High | As a developer, I want a map that players can walk on instead of the default baseplate. So that players are more immersed into the game. | Must be Facility Lab Style. <br><br>Must have 1 floor in sprint 1 | COMPLETE |

---

## 1.2 In Progress & To Do

| ID | Sprint | Title | Points | Priority | User Story | Definition of Done | Status |
|---|---|---|---|---|---|---|---|
| 8 | Sprint 1 | Multiple Monster | 7 | High | As a developer, I want 4 entities. <br><br> So that it can be expanded on and makes players more interested in learning new creatures and their mechaninics | Multiple entities that vary in appearance and mechanic | IN PROGRESS |
| 9 | Sprint 1 | Punishment and reward system | 3 | Low | As a developer, I want a fair reward and punishment. <br><br> So that players got goals to either meet the quota or achieve higher. | Appropriate rewards base on performance. <br><br> Punishment base on lack of doing quests | IN PROGRESS |
| 11 | Sprint 1 | Shop System | 3 | Low | As a player, I want to use the money I obtained to gain items. <br><br> So I have a goal to keep playing the game and to make it more fun. | The shop must be able to take away money from the player <br><br> The shop must give items in store to the player | TO DO |
| 12 | Sprint 1 | Unique Monster AI | 7 | High | As a developer I want Monster AI to have unique behaviour such as stalking. <br><br> So it increases the horror factor | State Machine controlling NPC | TO DO |
| 13 | Sprint 1 | NPC Giving mini quests | 2 | Low | As a developer, I want NPC that give small quests so players can learn more about the NPC while gaining small rewards | NPC gives quests that may give lore <br><br> The quests give rewards | TO DO |
| 14 | Sprint 1 | NPC Scientist walking to waypoints | 5 | Normal | As a developer, I want npc to walk from one point to another to pretend they are working. So that the place seems more lively | The NPC shouldn't take too much processing power causing it to lag. <br><br> NPC shouldn't collide with players or each other. | TO DO |
| 15 | Sprint 1 | Audio System | 5 | Medium | As a developer, I want an audio system that plays the appropriate audio when a certain action or scenario occurs. <br><br> So that players get a user input feedback | Plays audio at the correct time | TO DO |
| 16 | Sprint 1 | Animation of AI | 5 | Normal | As a developer I want an Animation Handler <br><br> So when AI or players move or do an action, it plays an animation enhancing the player experience. | Plays animation | TO DO |

---



# 2.0 Design and Development Documentation

---

## 2.1 Things added

### Choice System

A dialogue choice system that enables players to select a response with the npc.

Allowing for players to learn more about the world they're in, rather than forcing tons of information onto them.

### Interactive NPC

NPC were implemented for players to interact with.

Currently their only functionality is to give dialogue

In the future, expanding the NPC to interact with the evironment and the the player is still needed

---

## 2.2 Things changed

### Map 

The map was updated to block off unncessary parts that has no impact on the gameplay as a whole.
As well as reducing decoration and how the building looked

This was to save time and reduce workload.


### Entities reduces

Due to lack of time to focus on the project, the entities been reduce to 2.

This is because of the lack of time and resources needed to make the mod

The two entities that stayed in the game were E-134A and E-311NA. Refer back to sprint 1 to see more information onto the entities.

---




# 3.0 Project Management


## 3.1 Burndown Chart

---

## 3.2 Week Review

---

### Week 1 01/04/2026 - 08/04/2026

**What was completed**

Nothing

**What's next**

+ Map creation
+ Full objectives completed

**Problem Faced**

Due to assignments ruining the way how things progressed. All tasks were put on halt.

---

### Week 2 09/04/2026 - 15/04/2026

**What was completed**

+ Objectives
+ Pathfinding issue solved

**What's next**

+ Map Creation
+ Multiple Monster
+ Chat/Dialogue System

**Problem Faced**

Assignments stalling tasks.

Generally the lack of time to focus on the tasks is what stalled the project.

---

### Week 3 16/04/2026 - 28/04/2026

**What was completed**

+ Map Layout
+ Choice System
+ Dialogue
+ Extra GUI
+ Characters


**What's next**

Extending the features of the game and polishing the GUI

**Problem Faced**

The lack of time and motivation to complete most of what is needed.
If more people were to work on the game or full focus on the project without any distractions. Most requirements could of been met.
In the future, better planning in work schedule is needed.


---



# 4.0 Tools and Techniques

---

## 4.1 Tools

---

### 4.1.1 Roblox Studio

Refere back to Sprint 1.

---

### 4.1.2 Pathfinding Module

https://grayzcale.github.io/simplepath/

The Pathfinding Module which was created by grayzcale offered a Module Script for people tomuse.

Although the Module Script didn't have all the necessities for my Pathfinding Issue. It was enough to create a state machine after some modifications on the module script.

The features of the module script included:
+ A more optimise use of Pathfinding Service
+ Constant tracking of the goal to reach
+ A better way to handle way points

with these, the pathfinding problem was solved

---

### 4.1.3 TypeWriting Module

The Typewriting module was found in the Roblox Dev Forum or something i forgot recheck that

This Module was used fo give text on the GUI a text writing effect to immerse the player into think they are talking to someone 

---

### 4.1.4 DataStoreService

This tool is an Inbuilt system in roblox. Used to call an API to the Roblox server, then storing data sent for the game.

Thus service was used to keep track of the player data.

<img width="1593" height="1066" alt="image" src="https://github.com/user-attachments/assets/7503ee2e-e37c-4f86-946b-373190d3a585" />

---

## 4.2 Techniques

---

### 4.2.1 State Machine 

A State Machine was used for the AI to follow.

This was used after the rework of the pathfinding AI make it more functional.

<img width="1156" height="791" alt="image" src="https://github.com/user-attachments/assets/9c6fe7c4-5b33-4359-afff-5a862143a4e7" />


---

### 4.2.2 Modularisation

There has been many instance where modularisation was used to optimise the game.

For example:
+ Tasks instead of being hardcoded into scripts. Was made into a module for easier configuration

Things like the tasks were used to reduce the amount of lines are in single scrpt

---

### 4.2.3 OOP

This was used in the Module SimplePath.

Even if roblox had no real Object Oriented Programming into it. Developers still mimicked OOP by making private values _variable and without the _

---

# 5.0 Test

animation
dialogue
Choices
| ID | What's being tested | What should happen | What actually happen | Evidence | Comment |
| --- | ------- | -------- | ------------ | ---------- | ----------- |
| 1 | Implementation of Module Pathfinding | After implementing the module, tracking the player should be smooth | Worked as intended | N/A | Add the attacking and state machine |
| 2 | State Machine | When reachijg near player, chase them, when close enough. Attack | Smoothly chased Player, and attacked | N/A | Further extension such as unique behaviour to the creatures are beomg considered |
| 3 | Dialogue | When interacting with an NPC. A GUI appears for players to interact with | GUI Show up | <img width="1591" height="594" alt="image" src="https://github.com/user-attachments/assets/03db21ce-edef-4ac8-999d-9387bc350aea" />
 | Inputting type writer next |
| 4 | Typewriter Effect | When entering dialogue, a type writer effect should slowly type out the message | Typed it | N/A | N/A |
| 5 | Choice System | When reaching a certain point, display multiple choices that leads to different pathways | After tons of times attempts to optimise the way choices were chosen. It was decided to hard code the display messages after choosing a choice. Still Done as intended in the end | <img width="1203" height="556" alt="image" src="https://github.com/user-attachments/assets/85975047-81b7-4231-a8fe-1a0c7d916919" />| N/A |
| 6 | Dialogue After Talking | When interacting and then exiting conversation to reinteract with the NPC. <br><br> Display new messages different from initial messages. | Done as intended | N/A | N/A |
| 7 | Minigame GUI text, quests 4 | When interacting with prompt, Display GUI where player has to type out the word displayed. | Work as intended | <img width="1306" height="504" alt="image" src="https://github.com/user-attachments/assets/dae4f0a4-916e-4513-9693-aa6106dda5ab" /> | N/A |
| 8 | Minigame GUI Click, quest 5 | When interacting the the prompt, Display GUI where the player has to click a box that's moving constantly | Worked as intended | <img width="955" height="457" alt="image" src="https://github.com/user-attachments/assets/069b9d27-7cc5-4a25-9a57-99dc14597ace" />
 | N/A |
| 9 | Minigame GUI Time clicks, quest 2 | When Interacting with the prompt, Display GUI where players must time their click as a red bar goes left and right. | Done as intended. Damages player when failing | <img width="908" height="328" alt="image" src="https://github.com/user-attachments/assets/787ec5cf-9151-44f5-af13-e9bcc4999bc1" />
 | N/A |
| 10 | NPC attacking | When NPC AI reaches nearby player, it attacks the player and damages them. | When reaching player at a certain distance, puts block infront and damages them | N/a | Furhter extension to expand the behaviour the entity is needed. |
 
