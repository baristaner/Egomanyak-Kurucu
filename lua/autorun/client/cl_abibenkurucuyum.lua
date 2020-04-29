--M Ü P T E Z E L  S A M E T  S U N U C U Y A   G İ R İ Ş  Y A P T I-- 


net.Receive("egomanyakkurucu",function(len)
local silmezamani = 25 -- Kurucu sunucuya girdiğinde efektlerin ne zaman siliniceğini belirler (saniye)
surface.CreateFont( "kurucugeldi", { font = "Default", size = 50,weight = 500, antialias = true,} )
hook.Add( "HUDPaint", "h", function() 
	if (IsValid(LocalPlayer())) then 
	draw.SimpleText( "Kurucu Sunucuya Giris Yaptı", "kurucugeldi",  ScrW() * 0.50,ScrH() * 0.50, Color(200,0,0),TEXT_ALIGN_CENTER) 
end 
end )

timer.Create( "silbakalim", silmezamani, 1, function() hook.Remove("HUDPaint","h") end )
timer.Create( "silbakalim2", silmezamani, 1, function() hook.Remove("RenderScreenspaceEffects", "patlasekerim") end )
hook.Add( "RenderScreenspaceEffects", "patlasekerim", function() local sinScaler = math.sin( CurTime() ) DrawBloom( 0, 3, sinScaler *math.Rand(1, 8), sinScaler *math.Rand(1, 8), 6, math.Rand(0.5, 2), math.Rand(0, 0.3), math.Rand(0, 0.3), math.Rand(0.5, 1) )
DrawColorModify{["$pp_colour_addr"] = 0,["$pp_colour_addg"] = 0,["$pp_colour_addb"] = 00,["$pp_colour_brightness" ] = 0,["$pp_colour_contrast" ] = 1,["$pp_colour_colour" ] = 1,["$pp_colour_mulr" ] = 0,["$pp_colour_mulg" ] = 0,["$pp_colour_mulb" ] = 1} end )
util.ScreenShake( LocalPlayer():GetPos(), 175, 50, 1, 10000 )
surface.PlaySound( "ambient/explosions/explode_9.wav" )
end)


--[[ -- REİSİ GMOD ÇOK YAKINDA REİSİ GMOD İLE KANUNİ SULTAN SÜLEYMAN OLABİLİCEKSİNİZ ARKADAŞLAR
net.Receive("reisi_gmod",function(len)
surface.CreateFont( "kurucugeldi2", { font = "Default", size = 40,weight = 500, antialias = true,} )
hook.Add( "HUDPaint", "reis", function() draw.SimpleText( "DESTUR!", "kurucugeldi2",  ScrW() * 0.0+430,ScrH() * 0.0+200, Color(200,0,0)) end )
--sound.PlayURL("http://mp3semticdn.com/mp3_files/Osmanli-Muzikleri/Tum-Muzikler/Osmanli-Muzikleri-Plevne-Marsi.mp3","mono noblock",function(s)if(IsValid(s))then s:SetTime(70) s:SetPos(LocalPlayer():GetPos())s:Play() end end)
hook.Add( "HUDPaint", "reis2", function() draw.SimpleText( "Sunucumuzun Padisahi", "kurucugeldi2",  ScrW() * 0.0+430,ScrH() * 0.0+250, Color(200,0,0)) end )
hook.Add( "HUDPaint", "reis3", function() draw.SimpleText( "Genelkurmay cumhurbaskani basbakani", "kurucugeldi2",  ScrW() * 0.0+430,ScrH() * 0.0+300, Color(200,0,0)) end )
hook.Add( "HUDPaint", "reis4", function() draw.SimpleText( "Sunucuya inis yapti!", "kurucugeldi2",  ScrW() * 0.0+430,ScrH() * 0.0+350, Color(200,0,0)) end )
timer.Create( "silbakalimkurucumuzu", 10, 1, function() hook.Remove("HUDPaint","reis") hook.Remove("HUDPaint","reis2") hook.Remove("HUDPaint","reis3") hook.Remove("HUDPaint","reis4") hook.Remove("HUDPaint","reiskanuni") end )
util.ScreenShake( LocalPlayer():GetPos(), 400, 400, 1, 10000 )

hook.Add( "HUDPaint", "reiskanuni", function() local html = vgui.Create( "DHTML" ) html:SetSize(1280,720) html:OpenURL( "https://i4.hurimg.com/i/hurriyet/75/750x422/5bd9af7bb699de18287ea276.jpeg" ) end )

end)
--]]

