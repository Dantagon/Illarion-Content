require("base.common")

-- UPDATE common SET com_script = 'test.lillian' WHERE com_itemid = 2697 ;

module("test.lillian", package.seeall)

function UseItem(User, SourceItem, ltstate)
	ScriptVars:set("ArenaListCadomyr", "Hans Zwei;543;Peter Drei;321;Wolfgang Eins;987;Klaus F�nf;111;Holger Vier;222")
	local testTable = {"Hans Zwei", 543, "Peter Drei", 321, "Wolfgang Eins", 987, "Klaus F�nf", 111, "Holger Vier", 222}
	if (User.lastSpokenText == "list") then
		getRanklist(User, User, true)
	end
	
	if (User.lastSpokenText == "join") then
		local testString = join(testTable, ";");
		User:inform("String: "..testString);
	end
	
	if (User.lastSpokenText == "sound") then
		world:makeSound( 13, User.pos )
	end
end

function LookAtItem(User, Item)
	base.lookat.SetSpecialDescription(Item, "Lillians rasp of doom", "Lillians rasp of doom");
	world:itemInform(User,Item,base.lookat.GenerateLookAt(User, Item, base.lookat.NONE));
    return true    
end

function join(joinTable, pattern)
	local joinString = joinTable[1];
	for i=2, #(joinTable) do
		joinString = joinString..pattern..joinTable[i];
	end	
	return joinString;
end

arenaInformations = {{playerPos=position(10,10,0), monsterPos=position(10,0,0), npcName="Alsaya", town="Cadomyr"}, 
					{playerPos=position(10,10,0), monsterPos=position(10,0,0), npcName="Alsaya", town="Runewick"}, 
					{playerPos=position(10,10,0), monsterPos=position(10,0,0), npcName="Alsaya", town="Galmair"}}

function getRanklist(User, NPC, message)
	local arena = getArena(User, NPC);
	local town = arenaInformations[arena].town;
	local found = false;
	local arenaEntry;
	local arenaList = {};
	local list = " ";
	local place = 2;
	
	for i=1, 5 do  -- get the top 5
		found, arenaEntry = ScriptVars:find("ArenaListCadomyr");
		if found then
			arenaList = sortTable(split(arenaEntry, ";"));
		elseif found == false or table.getn(arenaList) ~= 10 then
			User:inform("[ERROR] An error occured please contact a developer.")
		end
	end
	
	if message then
		local mdList = function(dialog)
			if (not dialog:getSuccess()) then
				return;
			end
		end
		if User:getPlayerLanguage() == 0 then
			list = "Platz 1: "..arenaList[1].." mit "..arenaList[2].." Punkten.\n";
			for i=3,#(arenaList),2 do
				list = list.."Platz "..place.." : "..arenaList[i].." mit "..arenaList[i+1].." Punkten.\n";
				place = place +1;
			end
			mdList = MessageDialog("Top f�nf K�mpfer des Reiches", list, nil);			
		else
			list = "Place 1: "..arenaList[1].." with "..arenaList[2].." points.\n";
			for i=3, #(arenaList),2 do
				list = list.."Place "..place.." : "..arenaList[i].." with "..arenaList[i+1].." points.\n";
				place = place +1;
			end
			mdList = MessageDialog("Top five fighters of the realm", list, nil);
		end
		User:requestMessageDialog(mdList);
	else
		return arenaList;
	end
end

function getArena(User, NPC)
	for i=1, #(arenaInformations) do
		if arenaInformations[i].npcName == NPC.name then
			return i;
		else
			return "";
		end
	end
end

function sortTable(inputTable)
	local numberTable = {}
	local sortedTable = {}
	for i=2, #(inputTable), 2 do
		table.insert(numberTable, inputTable[i]);
	end	
	table.sort(numberTable);
	for i= 1, #(numberTable) do
		for j=2, #(inputTable), 2 do
			if inputTable[j] == numberTable[i] then
				table.insert(sortedTable, 1, inputTable[j]);
				table.insert(sortedTable, 1, inputTable[j-1]);
			end
		end
	end
	return sortedTable;
end

--[[
Splits a string at a given pattern and puts then
resulting substrings into a table.

Usage: result = split("Hans;Dampf",";") -> result = {"Hans", "Dampf"}
]]
function split(splitString,pattern)
	local splitTable = {};
	local tempTable = {};
	local tempString;
	local index = 0;
	
	while true do
		index = string.find(splitString, pattern, index+1);
		if index == nil then
			break;
		end;
		table.insert(tempTable, index)
	end;
	tempString,_ = string.gsub(string.sub(splitString, 0, tempTable[1]), ";", "")
	table.insert(splitTable, tempString);
	for i=1, table.getn(tempTable) do
		tempString,_ = string.gsub(string.sub(splitString, tempTable[i], tempTable[i+1]), ";", "")
		table.insert(splitTable, tempString);
	end
	
	return splitTable;
end