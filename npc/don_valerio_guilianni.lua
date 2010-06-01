-- INSERT INTO npc VALUES (nextval('npc_seq'),1,358,235,0,4,false,'Don Valerio Guilianni','npc_don_valerio_guilianni.lua',0);

require("npc.base.autonpcfunctions")
module("npc.don_valerio_guilianni", package.seeall)

function useNPC(user,counter,param)
    thisNPC:increaseSkill(1,"common language",100);
    thisNPC:talkLanguage(CCharacter.say, CPlayer.german, "Finger weg!");
    thisNPC:talkLanguage(CCharacter.say, CPlayer.english, "Don't you touch me!");
end

function initializeNpc()
    if TraderFirst then
        return true;
    end

    npc.base.autonpcfunctions.InitTalkLists();

    -- ********* START DYNAMIC PART ********

    QuestID = 0;
    -- NPC by Estralis Seborian
    -- Help
    npc.base.autonpcfunctions.AddTraderTrigger("Help","");
    npc.base.autonpcfunctions.AddConsequence("inform","[Game Help] This NPC is Don Valerio Guilianni of Galmair. Keyphrases: TRIGGERS.");
    npc.base.autonpcfunctions.AddTraderTrigger("Hilfe","");
    npc.base.autonpcfunctions.AddConsequence("inform","[Spielhilfe] Dieser NPC ist Don Valerio Guilianni von Galmair. Schl�sselw�rter: TRIGGERS.");
    -- General speech
    npc.base.autonpcfunctions.AddTraderTrigger("Hello","ENGLISH1.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Greetings");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Be greeted");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Hail");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Good day");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Good morning");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Good evening");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npc.base.autonpcfunctions.AddTraderTrigger("Gr��e","GERMAN1.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Gru�");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Seid gegr��t");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Guten Tag");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Guten Abend");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Mahlzeit");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Tach");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Moin");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npc.base.autonpcfunctions.AddTraderTrigger("Hiho","ENGLISH1.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Hallo");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Hey");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Greebas");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Greebs");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npc.base.autonpcfunctions.AddTraderTrigger("Hiho","GERMAN1.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Hallo");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Hey");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Greebas");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Greebs");
    npc.base.autonpcfunctions.AddCondition("lang","german");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npc.base.autonpcfunctions.AddTraderTrigger("Farewell","ENGLISH1.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Good bye");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Bye");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Fare thy well");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npc.base.autonpcfunctions.AddTraderTrigger("Tsch��","GERMAN1.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Tsch�ss");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Wiedersehen");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Gehabt euch wohl");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npc.base.autonpcfunctions.AddTraderTrigger("Ciao","ENGLISH1.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Adieu");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Au revoir");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npc.base.autonpcfunctions.AddTraderTrigger("Ciao","GERMAN1.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Adieu");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Au revoir");
    npc.base.autonpcfunctions.AddCondition("lang","german");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npc.base.autonpcfunctions.AddTraderTrigger("How are you","ENGLISH1.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("How feel");
    npc.base.autonpcfunctions.AddAdditionalTrigger("How do you do");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npc.base.autonpcfunctions.AddTraderTrigger("Wie geht","GERMAN1.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Wie f�hlst");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Wie ist es ergangen");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npc.base.autonpcfunctions.AddTraderTrigger("your name","ENGLISH1.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("who are you");
    npc.base.autonpcfunctions.AddAdditionalTrigger("who art thou");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npc.base.autonpcfunctions.AddTraderTrigger("dein name","GERMAN1.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("wer bist du");
    npc.base.autonpcfunctions.AddAdditionalTrigger("wer seid ihr");
    npc.base.autonpcfunctions.AddAdditionalTrigger("wie hei�t");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    -- Catching typical NPC phrases
    npc.base.autonpcfunctions.AddTraderTrigger("what sell","ENGLISH1.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("what buy");
    npc.base.autonpcfunctions.AddAdditionalTrigger("list wares");
    npc.base.autonpcfunctions.AddAdditionalTrigger("price of");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npc.base.autonpcfunctions.AddTraderTrigger("was verkauf","GERMAN1.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("was kauf");
    npc.base.autonpcfunctions.AddAdditionalTrigger("warenliste");
    npc.base.autonpcfunctions.AddAdditionalTrigger("preis von");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npc.base.autonpcfunctions.AddTraderTrigger("tell something","ENGLISH1.");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npc.base.autonpcfunctions.AddTraderTrigger("erz�hl was","GERMAN1.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("erz�hl etwas");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    -- Small talk: The talk here should focus on possible questions. Feel free to add more!
    npc.base.autonpcfunctions.AddTraderTrigger("profession","ENGLISH1.");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npc.base.autonpcfunctions.AddTraderTrigger("beruf","GERMAN1.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npc.base.autonpcfunctions.AddTraderTrigger("job","GERMAN1.");
    npc.base.autonpcfunctions.AddCondition("lang","german");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npc.base.autonpcfunctions.AddTraderTrigger("job","ENGLISH1.");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npc.base.autonpcfunctions.AddTraderTrigger("Gobaith","ENGLISH1.");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npc.base.autonpcfunctions.AddTraderTrigger("Gobaith","GERMAN1.");
    npc.base.autonpcfunctions.AddCondition("lang","german");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    -- More small talk; add at least five triggers
    npc.base.autonpcfunctions.AddTraderTrigger("ENGLISH1.","ENGLISH1.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("ENGLISH2.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("ENGLISH3.");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npc.base.autonpcfunctions.AddTraderTrigger("ENGLISH1.","ENGLISH1.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("ENGLISH2.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("ENGLISH3.");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npc.base.autonpcfunctions.AddTraderTrigger("ENGLISH1.","ENGLISH1.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("ENGLISH2.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("ENGLISH3.");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npc.base.autonpcfunctions.AddTraderTrigger("ENGLISH1.","ENGLISH1.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("ENGLISH2.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("ENGLISH3.");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npc.base.autonpcfunctions.AddTraderTrigger("ENGLISH1.","ENGLISH1.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("ENGLISH2.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("ENGLISH3.");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npc.base.autonpcfunctions.AddTraderTrigger("GERMAN1.","GERMAN1.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("GERMAN2.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("GERMAN3.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npc.base.autonpcfunctions.AddTraderTrigger("GERMAN1.","GERMAN1.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("GERMAN2.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("GERMAN3.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npc.base.autonpcfunctions.AddTraderTrigger("GERMAN1.","GERMAN1.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("GERMAN2.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("GERMAN3.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npc.base.autonpcfunctions.AddTraderTrigger("GERMAN1.","GERMAN1.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("GERMAN2.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("GERMAN3.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npc.base.autonpcfunctions.AddTraderTrigger("GERMAN1.","GERMAN1.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("GERMAN2.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("GERMAN3.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    -- Faction stuff
    npc.base.autonpcfunctions.AddTraderTrigger("Elvaine","ENGLISH1.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Morgan");
    npc.base.autonpcfunctions.AddAdditionalTrigger("archmage");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Erzmagier");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npc.base.autonpcfunctions.AddTraderTrigger("Elvaine","GERMAN1.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Morgan");
    npc.base.autonpcfunctions.AddAdditionalTrigger("archmage");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Erzmagier");
    npc.base.autonpcfunctions.AddCondition("lang","german");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npc.base.autonpcfunctions.AddTraderTrigger("Runewick","ENGLISH1.");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npc.base.autonpcfunctions.AddTraderTrigger("Runewick","GERMAN1.");
    npc.base.autonpcfunctions.AddCondition("lang","german");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npc.base.autonpcfunctions.AddTraderTrigger("Valerio","ENGLISH1.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Guilianni");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Don");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npc.base.autonpcfunctions.AddTraderTrigger("Valerio","GERMAN1.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Guilianni");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Don");
    npc.base.autonpcfunctions.AddCondition("lang","german");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npc.base.autonpcfunctions.AddTraderTrigger("Galmair","ENGLISH1.");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npc.base.autonpcfunctions.AddTraderTrigger("Galmair","GERMAN1.");
    npc.base.autonpcfunctions.AddCondition("lang","german");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npc.base.autonpcfunctions.AddTraderTrigger("rosaline","ENGLISH1.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("k�nigin");
    npc.base.autonpcfunctions.AddAdditionalTrigger("queen");
    npc.base.autonpcfunctions.AddAdditionalTrigger("edwards");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npc.base.autonpcfunctions.AddTraderTrigger("rosaline","GERMAN1.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("k�nigin");
    npc.base.autonpcfunctions.AddAdditionalTrigger("queen");
    npc.base.autonpcfunctions.AddAdditionalTrigger("edwards");
    npc.base.autonpcfunctions.AddCondition("lang","german");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npc.base.autonpcfunctions.AddTraderTrigger("Cadomyr","ENGLISH1.");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npc.base.autonpcfunctions.AddTraderTrigger("Cadomyr","GERMAN1.");
    npc.base.autonpcfunctions.AddCondition("lang","german");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    -- Main land factions
    npc.base.autonpcfunctions.AddTraderTrigger("albar","ENGLISH1.");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npc.base.autonpcfunctions.AddTraderTrigger("albar","GERMAN1.");
    npc.base.autonpcfunctions.AddCondition("lang","german");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npc.base.autonpcfunctions.AddTraderTrigger("gynk","ENGLISH1.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("gync");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npc.base.autonpcfunctions.AddTraderTrigger("gync","GERMAN1.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("gynk");
    npc.base.autonpcfunctions.AddCondition("lang","german");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npc.base.autonpcfunctions.AddTraderTrigger("salkama","ENGLISH1.");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npc.base.autonpcfunctions.AddTraderTrigger("salkama","GERMAN1.");
    npc.base.autonpcfunctions.AddCondition("lang","german");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    -- Gods; gods are relevant, so the faction leader has to have an opinion on ALL gods
    npc.base.autonpcfunctions.AddTraderTrigger("Adron","ENGLISH1.");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npc.base.autonpcfunctions.AddTraderTrigger("Adron","GERMAN1.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npc.base.autonpcfunctions.AddTraderTrigger("Bragon","ENGLISH1.");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npc.base.autonpcfunctions.AddTraderTrigger("Bragon","GERMAN1.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npc.base.autonpcfunctions.AddTraderTrigger("Cherga","ENGLISH1.");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npc.base.autonpcfunctions.AddTraderTrigger("Cherga","GERMAN1.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npc.base.autonpcfunctions.AddTraderTrigger("Elara","ENGLISH1.");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npc.base.autonpcfunctions.AddTraderTrigger("Elara","GERMAN1.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npc.base.autonpcfunctions.AddTraderTrigger("Eldan","ENGLISH1.");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npc.base.autonpcfunctions.AddTraderTrigger("Eldan","GERMAN1.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npc.base.autonpcfunctions.AddTraderTrigger("Findari","ENGLISH1.");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npc.base.autonpcfunctions.AddTraderTrigger("Findari","GERMAN1.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npc.base.autonpcfunctions.AddTraderTrigger("Irmorom","ENGLISH1.");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npc.base.autonpcfunctions.AddTraderTrigger("Irmorom","GERMAN1.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npc.base.autonpcfunctions.AddTraderTrigger("Malachin","ENGLISH1.");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npc.base.autonpcfunctions.AddTraderTrigger("Malachin","GERMAN1.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npc.base.autonpcfunctions.AddTraderTrigger("Moshran","ENGLISH1.");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npc.base.autonpcfunctions.AddTraderTrigger("Moshran","GERMAN1.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npc.base.autonpcfunctions.AddTraderTrigger("Nargun","ENGLISH1.");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npc.base.autonpcfunctions.AddTraderTrigger("Nargun","GERMAN1.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npc.base.autonpcfunctions.AddTraderTrigger("Oldra","ENGLISH1.");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npc.base.autonpcfunctions.AddTraderTrigger("Oldra","GERMAN1.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npc.base.autonpcfunctions.AddTraderTrigger("Ronagan","ENGLISH1.");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npc.base.autonpcfunctions.AddTraderTrigger("Ronagan","GERMAN1.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npc.base.autonpcfunctions.AddTraderTrigger("Sirani","ENGLISH1.");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npc.base.autonpcfunctions.AddTraderTrigger("Sirani","GERMAN1.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npc.base.autonpcfunctions.AddTraderTrigger("Tanora","ENGLISH1.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Zelphia");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npc.base.autonpcfunctions.AddTraderTrigger("Tanora","GERMAN1.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npc.base.autonpcfunctions.AddTraderTrigger("Ushara","ENGLISH1.");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npc.base.autonpcfunctions.AddTraderTrigger("Ushara","GERMAN1.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npc.base.autonpcfunctions.AddTraderTrigger("Zhambra","ENGLISH1.");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npc.base.autonpcfunctions.AddTraderTrigger("Zhambra","GERMAN1.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    -- Catching quest triggers
    npc.base.autonpcfunctions.AddTraderTrigger("quest","ENGLISH1.");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npc.base.autonpcfunctions.AddTraderTrigger("quest","GERMAN1.");
    npc.base.autonpcfunctions.AddCondition("lang","german");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npc.base.autonpcfunctions.AddTraderTrigger("task","ENGLISH1.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("adventure");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npc.base.autonpcfunctions.AddTraderTrigger("Auftrag","GERMAN1.");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Aufgabe");
    npc.base.autonpcfunctions.AddAdditionalTrigger("Abenteuer");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    -- Last catch: Think about keyphrases the player might say and that are not caught until here
    npc.base.autonpcfunctions.AddTraderTrigger("Yes","ENGLISH1.");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npc.base.autonpcfunctions.AddTraderTrigger("Ja","GERMAN1.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    npc.base.autonpcfunctions.AddTraderTrigger("No","ENGLISH1.");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH2.");
    npc.base.autonpcfunctions.AddAdditionalText("ENGLISH3.");
    npc.base.autonpcfunctions.AddTraderTrigger("Nein","GERMAN1.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN2.");
    npc.base.autonpcfunctions.AddAdditionalText("GERMAN3.");
    -- Cycletext: Please add at least(!) ten cycletext messages. The more, the better. You can use emotes (#me is green), too.
    npc.base.autonpcfunctions.AddCycleText("GERMAN.","ENGLISH.");
    npc.base.autonpcfunctions.AddCycleText("GERMAN.","ENGLISH.");
    npc.base.autonpcfunctions.AddCycleText("GERMAN.","ENGLISH.");
    npc.base.autonpcfunctions.AddCycleText("GERMAN.","ENGLISH.");
    npc.base.autonpcfunctions.AddCycleText("GERMAN.","ENGLISH.");
    npc.base.autonpcfunctions.AddCycleText("GERMAN.","ENGLISH.");
    npc.base.autonpcfunctions.AddCycleText("GERMAN.","ENGLISH.");
    npc.base.autonpcfunctions.AddCycleText("GERMAN.","ENGLISH.");
    npc.base.autonpcfunctions.AddCycleText("GERMAN.","ENGLISH.");
    npc.base.autonpcfunctions.AddCycleText("GERMAN.","ENGLISH.");
    -- ********* END DYNAMIC PART ********
    TradSpeakLang={0,1};
    TradStdLang=0;

    npc.base.autonpcfunctions.increaseLangSkill(TradSpeakLang);
    thisNPC.activeLanguage=TradStdLang;

end

function nextCycle()  -- ~10 times per second
    initializeNpc();
    npc.base.autonpcfunctions.SpeakerCycle();
end

function receiveText(texttype, message, originator)
    if npc.base.autonpcfunctions.BasicNPCChecks(originator,2) then
        if npc.base.autonpcfunctions.LangOK(originator,TradSpeakLang) then
            npc.base.autonpcfunctions.TellSmallTalk(message,originator);
        else
            npc.base.autonpcfunctions.Confused(
               "#me sieht dich leicht verwirrt an",
               "#me looks at you a little confused"
            );
        end
    end
end