Title: NSS Admin Console 
Version: 1.73
Author: MAD T 
Author URL: http://steamcommunity.com/id/MAD_T/ 

--------------------------------------------------------------------------------------------- 

Description: 

This is an Administrating / Debugging / Mission development tool i wrote long ago for the NSS Gamers community. 
There was soon not much need for it anymore so it was released to the public and rarly being worked on for updates. 

--------------------------------------------------------------------------------------------- 

Once in the game you will have to press (Shift + F1) to open the console. 
In a multiplayer environment you need to be either the host or logged in as admin to open it. 

--------------------------------------------------------------------------------------------- 

Features: 
- 1st and 3rd person spectator mode 
- Free cam (BIS splendid camera) 
- Code execution (server, global, local, on choosed player) 
- Code saving 
- Variable monitor 
- Script execution (executes the file script.sqf located in the addon directory, only works if -filePatching is added to startup paramters) 
- Map teleport 
- Invulneribility 
- No target (AI will not attack player) 
- Server side logging of console users actions (search for NSS_AC_Log: in .rpt files) 
- Virtual Garage 
- Virtual Arsenal 
- Opening of Zeus interface even if no curator was set in the mission previously 

--------------------------------------------------------------------------------------------- 

For certain features like server side logging and being able to enter the Zeus interface the console needs to also run 
on the server. Also you will not be able to use the BIS console while using this addon because of it´s server side logging which the BIS one doesn´t have. There is also a very high chance this addon will not work anymore in BIS created missions or other community created content due to the implementation of CfgRemoteExec ( https://community.bistudio.com/wiki/CfgRemoteExec ) which some developers might use nowadays. If any 
CfgRemoteExec is classified in the mission or certain addon you will have to modify CfgRemoteExec in the description.ext and add the following two functions below. If no CfgRemoteExec is classified the console should work without any problem especialy in self created content where no CfgRemoteExec is classified. 

--------------------------------------------------------------------------------------------- 

class CfgRemoteExec 
{ 
class Functions 
{ 
// State of remoteExec: 
// 0-turned off, 
// 1-turned on, taking whitelist into account, 
// 2-turned on, however, ignoring whitelists (default because of backward compatibility) 

mode = 2; 

// Whitelist, who can execute which function 
// 0-Everyone 
// 1-Only clients 
// 2-Only server 

class NSS_AC_fnc_curatorCreateModuleMP {allowedTargets=2}; 
class NSS_AC_fnc_Execute {allowedTargets=0}; 
}; 
}; 

--------------------------------------------------------------------------------------------- 

I am providing the source code for understanding how everything works and a version for mission developers to implement it in their missions. Files are located in the addon folder. My time to work on this is limited but if you find any bugs feel free to report them and i will try to fix them. 

--------------------------------------------------------------------------------------------- 

Credits: 

Thanks to Hammer, BiGi, Mantis and Seq for testing. 

--------------------------------------------------------------------------------------------- 

Licence: 

Modifications to the code for personal and private usage is allowed. 
Implementation of modified code to mission files for public releases is also allowed. 
However, rereleasing of this work (the console addon itself or it´s source code, modified or not) without my permission is not allowed. 

--------------------------------------------------------------------------------------------- 

Paypal donation link: 

https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=7MFATC34CX2BA