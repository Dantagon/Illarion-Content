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
-- UPDATE items SET itm_script='item.id_122_finesmithhammer' WHERE itm_id IN (122);

local goldsmithing = require("content.craft.goldsmithing")
local licence = require("base.licence")
local metal = require("item.general.metal")

module("item.id_122_finesmithhammer", package.seeall)

LookAtItem = metal.LookAtItem

function UseItem(User, SourceItem, ltstate)
	if licence.licence(User) then --checks if user is citizen or has a licence
		return -- avoids crafting if user is neither citizen nor has a licence
	end

    goldsmithing.goldsmithing:showDialog(User, SourceItem)
end