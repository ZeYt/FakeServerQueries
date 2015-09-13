#include <amxmodx> 
#include <fakequeries> 

new giPlayers = 0; 

public plugin_init()  
{  
    register_plugin("FQ: AddBotsNum", "1.0", "Shooting King"); 
}  

public client_putinserver( id )  
{  
    if( is_user_connected(id) ) 
    { 
        giPlayers++; 
        fq_set_players(giPlayers); 
    } 
    fq_set_botsnum(0);
} 

public client_disconnect(id) 
{ 
    giPlayers--; 
    fq_set_players(giPlayers);
    fq_set_botsnum(0);
 
}
