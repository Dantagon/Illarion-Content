-- Schaf melken
-- Nop

-- UPDATE common SET com_script='item.id_164_emptybottle' WHERE com_itemid IN (164);

require("base.common")

module("item.id_164_emptybottle", package.seeall)

function UseItem( User, SourceItem, TargetItem, Counter, Param, ltstate )

	-- the following few lines are for the alchemy system
    -- getting the stock or potion from the cauldron into the bottle
   if base.common.GetFrontItemID(User) == 1008 then   -- is the char infront of a culdron?
   
       local cauldron = base.common.GetFrontItem( User );
       
	   local cauldronData = tonumber(cauldron:getData("cauldronData"));
	   

	   if (cauldron:getData("cauldronData") == "") or cauldronData < 11111111 then -- no stock
					base.common.InformNLS( User,
					"In dem Kessel befindet sich nichts zum Abf�llen.",
					"There is nothing to be bottled in the cauldron."
						   );
			return;
	   end
	   
	   if cauldronData >= 11111111 and cauldronData <= 99999999 and (cauldron:getData("potionType") == "") then -- a normal stock
		  SourceItem:setData("stockData",cauldronData)
		  SourceItem.id = 331
		  SourceItem.quality = cauldron.quality
		  world:changeItem(SourceItem)
		  cauldron:setData("cauldronData","")
		  cauldron.quality = 333
		  world:changeItem(cauldron)
		  world:makeSound(10,User.pos);
		  User:talkLanguage(Character.say, Player.german, "#me f�llt den Inhalt des Kessels in eine Flasche.");
		  User:talkLanguage(Character.say, Player.english,"#me bottles the substances from the cauldron.");
		  return;
	   end
	
	   if (cauldron:getData("potionType") ~= "") then -- a potion
	    
		   local potionType = tonumber(cauldron:getData(potionType));
	       if potionType == 1 then
	          PotionId = 165;
	       elseif potionType == 2 then
	          PotionId = 59;
           elseif potionType == 3 then
	          PotionId =  327;
	       elseif potionType == 4 then
	          PotionId =  329;
	       elseif potionType == 5 then
	          PotionId =  166;
	       elseif potionType == 6 then
	          PotionId =  328;
           elseif potionType == 7 then
	          PotionId =  330;
           end
	   
	   
	       SourceItem:setData("potionData",cauldronData)
	       SourceItem.id = PotionId
	       SourceItem.quality = cauldron.quality
	       world:changeItem(SourceItem)
	   
	       cauldron:setData("cauldronData","")
	       cauldron:setData("potionType","")
	       cauldron.quality = 333
	       world:changeItem(cauldron)
	       world:makeSound(10,User.pos);
	       User:talkLanguage(Character.say, Player.german, "#me f�llt den Inhalt des Kessels in eine Flasche.");
           User:talkLanguage(Character.say, Player.english,"#me bottles the substances from the cauldron.");
	       return;
	   end
	end
    

	
	-- bottle in hand?
	if SourceItem:getType() == 4 and (SourceItem.itempos == 5 or SourceItem.itempos == 6) then

		-- check for sheep
		local frontChar = base.common.GetFrontCharacter(User);
		if frontChar and frontChar:getRace() == 18 then
			-- get milk
			world:erase(SourceItem,1);
            User:createItem(330,1,333,0);
			return;
		end
		
		-- check for frontPos
		local frontPos = base.common.GetFrontPosition(User);
		-- TODO: convert quests & positions to New Illarion
		-- if equapos(frontPos, position(51, -55, 0)) then -- Troll's Vein
            -- --User:inform("at vein");
			-- local itempos = SourceItem.itempos;
			-- local number = SourceItem.number;
			-- world:erase(SourceItem,number);
			-- User:createAtPos(itempos, 2496, number);
			-- local bottles = User:getItemAt(itempos);
			-- bottles.data = 1;
			-- bottles.number = number;
			-- world:changeItem(bottles);
			-- return;
		-- elseif equapos(frontPos, position(116, -121, 0)) then -- Fairy's Tears
            -- --User:inform("at tears");
			-- local itempos = SourceItem.itempos;
			-- local number = SourceItem.number;
			-- world:erase(SourceItem,number);
			-- User:createAtPos(itempos, 2496, number);
			-- local bottles = User:getItemAt(itempos);
			-- bottles.data = 2;
			-- bottles.number = number;
			-- world:changeItem(bottles);
			-- return;
        -- end;
	end	
end
