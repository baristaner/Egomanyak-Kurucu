util.AddNetworkString("egomanyakkurucu")


local function hosgeldinkardesim( ply,steamid )
if steamid == "STEAM_0:1:61971864" or "STEAM_0:0:00000000" then -- STEAMIDLERİ DEĞİŞİN 
timer.Create( "egoistkurucu", 1, 5, function() ply:ChatPrint(ply:Nick().." sunucuya giriş yaptı!") end )
net.Start("egomanyakkurucu") 
net.Send(ply)
end
end

hook.Add( "PlayerAuthed", "gelgel", hosgeldinkardesim )


--[[ -- REİSİ GMOD ÇOK YAKINDA REİSİ GMOD İLE KANUNİ SULTAN SÜLEYMAN OLABİLİCEKSİNİZ ARKADAŞLAR
util.AddNetworkString("reisi_gmod")
local function reisigmoddlc( ply,steamid )
if steamid == "STEAM_0:1:61971864" or "STEAM_0:0:00000000" then
timer.Create( "kafayisiyirmisiz", 1, 5, function() ply:ChatPrint("Hz."..ply:Nick().." padişah sunucuya giriş yaptı!") end )
net.Start("reisi_gmod") 
net.Send(ply)
end
end

hook.Add( "PlayerAuthed", "buyuksunabi", reisigmoddlc )
--]]