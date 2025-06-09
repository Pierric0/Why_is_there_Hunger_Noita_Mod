dofile_once("data/scripts/lib/utilities.lua")

function OnPlayerSpawned(player)

    local init_check_flag = "new_game"
    local comp = EntityGetFirstComponent (player, "IngestionComponent")

    EntityAddComponent( player, "LuaComponent", 
		{
            
			script_source_file = "mods/why_is_there_hunger/files/scripts/dissapointing_hunger_mechanic.lua",  -- script for damaging the player when too hungry
			execute_every_n_frame = "2",
            
            
		} )

        if GameHasFlagRun( init_check_flag ) then
            return
        end
        GameAddFlagRun( init_check_flag )

        EntityAddComponent( player, "LuaComponent", 
		{
            ComponentSetValue2( comp, "ingestion_size", 7499), 
        } )
    
end


