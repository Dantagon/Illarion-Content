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
local class = require("base.class")
local consequence = require("npc.base.consequence.consequence")

module("npc.base.consequence.attribute", package.seeall)

attribute = class.class(consequence.consequence,
function(self, name, mode, value)
    consequence.consequence:init(self);
    self["value"], self["valuetype"] = npc.base.talk._set_value(value);
    self["name"] = name;
    if (mode == "=") then
        self["perform"] = _attribute_helper_set;
    elseif (mode == "+") then
        self["perform"] = _attribute_helper_add;
    elseif (mode == "-") then
        self["perform"] = _attribute_helper_sub;
    else
        -- unkonwn comparator
    end;
end);

function _attribute_helper_set(self, npcChar, player)
    local value = npc.base.talk._get_value(self.npc, self.value, self.valuetype);
    local currAttrib = player:increaseAttrib(self.name, 0);
    local modAttrib = value - currAttrib;
    player:increaseAttrib(self.name, modAttrib);
end;

function _attribute_helper_add(self, npcChar, player)
    local value = npc.base.talk._get_value(self.npc, self.value, self.valuetype);
    player:increaseAttrib(self.name, value);
end;

function _attribute_helper_sub(self, npcChar, player)
    local value = npc.base.talk._get_value(self.npc, self.value, self.valuetype);
    player:increaseAttrib(self.name, -value);
end;