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
-- INSERT INTO "quests" ("qst_id", "qst_script") VALUES (706, 'quest.gerald_deloid_706_galmair');

local common = require("base.common")
local factions = require("base.factions")
local M = {}

local GERMAN = Player.german
local ENGLISH = Player.english

-- Insert the quest title here, in both languages
local Title = {}
Title[GERMAN] = "Das Kerzenziehen"
Title[ENGLISH] = "Candle making"

-- Insert an extensive description of each status here, in both languages
-- Make sure that the player knows exactly where to go and what to do
local Description = {}
Description[GERMAN] = {}
Description[ENGLISH] = {}
Description[GERMAN][1] = "Sammel 20 Honigwaben f�r Gerald Deloid bei der Werkstatt von Galmair. Die Bienenst�cke stehen auf den Tischen vor ihm."
Description[ENGLISH][1] = "Collect twenty honeycombs for Gerald Deloid at the workshop in Galmair. The beehives are on the table in front of him."
Description[GERMAN][2] = "Geh zu Gerald Deloid bei der Werkstatt von Galmair, er hat bestimmt noch eine Aufgabe f�r dich."
Description[ENGLISH][2] = "Go to Gerald Deloid at the workshop in Galmair, he is sure to have another task for you."
Description[GERMAN][3] = "Stell 20 St�ck Wachs beim Kerzenziehertisch her und zeig diese Gerald Deloid bei der Werkstatt von Galmair. Der Tisch befindet sich in der Werkstatt, neben den Glasschmelz�fen. Um das Wachs herzustellen musst du die Zange in die Hand nehmen und den Tisch anschlie�end benutzen."
Description[ENGLISH][3] = "Produce twenty pieces of wax at the chandler table in the workshop of Galmair and show these to Gerald Deloid. The table is in the workshop next to the glass melting ovens. To produce the wax you have to take the crucible-pincers in your hand and then use the table."
Description[GERMAN][4] = "Geh zu Gerald Deloid bei der Werkstatt von Galmair, er hat bestimmt noch eine Aufgabe f�r dich."
Description[ENGLISH][4] = "Go to Gerald Deloid at the workshop in Galmair, he is sure to have another task for you."
Description[GERMAN][5] = "Stell mittels der Kerzenform zehn Kerzen beim Kerzenziehertisch in Galmair her und bringe diese zu Gerald Deloid bei der Werkstatt von Galmair. Um die Kerzen herzustellen musst du die Kerzenform in die Hand nehmen und diese benutzen."
Description[ENGLISH][5] = "Produce ten candles using the candle mould at the chandler table in the workshop for Gerald Deloid. To produce the candles you have to take the candle mould in your hand and use it whilst staying in front of the chandler table."
Description[GERMAN][6] = "Geh zu Gerald Deloid bei der Werkstatt von Galmair, er hat bestimmt noch eine Aufgabe f�r dich."
Description[ENGLISH][6] = "Go to Gerald Deloid at the workshop in Galmair, he is sure to have another task for you."
Description[GERMAN][7] = "Stell mittels schwarzer Disteln zwei Flaschen Lampen�l an der �lpresse in Galmair her und bring diese zu Gerald Deloid. Schwarze Disteln kannst du finden, wenn du auf felsigem Boden in Grasb�scheln mit der Sichel in der Hand suchst. Benutz dabei die Sichel in der Hand, w�hrend du vor dem Grass stehst. F�r eine Flasche Lampen�l brauchst du zwei schwarze Disteln."
Description[ENGLISH][7] = "Produce two bottles of lamp oil with black thistles at the press in Galmair and take them to Gerald Deloid. You can find black thistles if you search the patches of grass on rocky ground, whilst holding the sickle in your hand. Use the sickle in your hand whilst standing in front of the grass to gather the thistles. For one bottle of lamp oil you will need two black thistles."
Description[GERMAN][8] = "Du hast alle Aufgaben von Gerald Deloid erf�llt."
Description[ENGLISH][8] = "You have fulfilled all the tasks for Gerald Deloid."


-- Insert the position of the quest start here (probably the position of an NPC or item)
Start = {379, 275, 1}


-- For each status insert a list of positions where the quest will continue, i.e. a new status can be reached there
local QuestTarget = {}
QuestTarget[1] = {position(379, 275, 1), position(387, 272, 1)} -- Beehives
QuestTarget[2] = {position(379, 275, 1)} 
QuestTarget[3] = {position(379, 275, 1), position(380, 271, 1)} -- Chandler table
QuestTarget[4] = {position(379, 275, 1)} 
QuestTarget[5] = {position(379, 275, 1), position(380, 271, 1)} -- Chandler table
QuestTarget[6] = {position(379, 275, 1)} 
QuestTarget[7] = {position(379, 275, 1)}
QuestTarget[8] = {position(379, 275, 1)} 

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

function M.QuestAvailability(user, status)
    if factions.isGalmairCitizen(user) and status == 0 then
        return Player.questAvailable
    else
        return Player.questNotAvailable
    end
end

return M
