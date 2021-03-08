local appid = 'APPIDHERE' -- Make an application @ https://discordapp.com/developers/applications/ ID can be found there.
local asset = 'ASSETNAMEHERE' -- Go to https://discordapp.com/developers/applications/APPID/rich-presence/assets

function SetRP()
    local name = GetPlayerName(PlayerId())
--    local id = GetPlayerServerId(PlayerId())

--    SetRichPresence(name .. ' is playing BouleVard RolePlay')
    SetDiscordAppId(appid)
    SetDiscordRichPresenceAsset(asset)

    static void UpdatePresence()
{
    DiscordRichPresence discordPresence;
    memset(&discordPresence, 0, sizeof(discordPresence));
    discordPresence.largeImageKey = " ";
    discordPresence.largeImageText = " ";
    discordPresence.smallImageKey = " ";
    discordPresence.partyId = "";
    discordPresence.partySize = 1;
    discordPresence.partyMax = 5;
    discordPresence.joinSecret = " =";
    Discord_UpdatePresence(&discordPresence);
}


end

Citizen.CreateThread(function()
    SetRP()
end)
