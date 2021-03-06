--[[
Illarion Server

This program is free software: you can redistribute it and/or modify it under
the terms of the GNU Affero General Public License as published by the Free
Software Foundation, either version 3 of the License, or (at your option) any
later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY
WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE.  See the GNU Affero General Public License for more
details.

You should have received a copy of the GNU Affero General Public License along
with this program.  If not, see <http://www.gnu.org/licenses/>. 
]]
-- INSERT INTO "quests" ("qst_id", "qst_script") VALUES (603, 'quest.nobarg_603');

local common = require("base.common")
local M = {}

local GERMAN = Player.german
local ENGLISH = Player.english

-- Insert the quest title here, in both languages
local Title = {}
Title[GERMAN] = "Bragon Priester"
Title[ENGLISH] = "Priest of Bragon"

-- Insert an extensive description of each status here, in both languages
-- Make sure that the player knows exactly where to go and what to do
local Description = {}
Description[GERMAN] = {}
Description[ENGLISH] = {}
Description[GERMAN][5] = "Bringe Nobarg folgende Gegenst�nde: ein reines Feuer, eine rote Priesterrobe und einen Goldkelch. Er wird dir nur weiterhelfen, wenn du alle drei Gegenst�nde gleichzeitig bringst."
Description[ENGLISH][5] = "Take the following items to Nobarg: a pure element of fire, a red priest robe and a golden goblet. He will only help you when you deliver all three items together."
Description[GERMAN][8] = "Nachdem du nun seine Aufgabe erf�llt hast, wird dir Nobarg deine Frage von Sir Fludnar Yednos beantworten. Stelle sie ihm daher, um die Antwort zu erhalten und um die Quest 'Ork-Forscher' beenden zu k�nnen. Diese Quest ist damit beendet."
Description[ENGLISH][8] = "Since you have accomplished his task, Nobarg will answer your question from Sir Fludnar Yednos. Ask him the question and he will provide you with the answer you need. You can then continue with the quest 'Orc-Researcher'. This quest is over now."


-- Insert the position of the quest start here (probably the position of an NPC or item)
local Start = {}


-- For each status insert a list of positions where the quest will continue, i.e. a new status can be reached there
local QuestTarget = {}
QuestTarget[5] = {position(475, 795, 0)} -- Nobarg
QuestTarget[8] = {position(475, 795, 0)} -- Nobarg

-- Insert the quest status which is reached at the end of the quest
local FINAL_QUEST_STATUS = 8


function M.QuestTitle(user)
    return common.GetNLS(user, Title[GERMAN], Title[ENGLISH])
end

function M.QuestDescription(user, status)
    
    local german = Description[GERMAN][status] or ""
    local english = Description[ENGLISH][status] or ""

    return common.GetNLS(user, german, english)
end

function M.QuestStart()
    return Start
end

function M.QuestTargets(user, status)
    return QuestTarget[status]
end

function M.QuestFinalStatus()
    return FINAL_QUEST_STATUS
end

return M
