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
-- Tree Script
-- Envi
require("base.common")
require("base.lookat")

module("item.pennant", package.seeall)

-- UPDATE items SET itm_script='item.pennant' WHERE itm_id IN (2046, 2069, 512, 2924, 2925, 2926, 2927);


function LookAtItem(User, Item)
    return base.lookat.GenerateLookAt(User, Item, base.lookat.NONE)
end