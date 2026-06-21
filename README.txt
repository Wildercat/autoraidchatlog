AUTO RAID CHAT LOG
==================

Automatically enables WoW chat logging when your character enters the
March on Quel'Danas raid. It disables chat logging when you leave that raid.

INSTALLATION
------------

1. Exit World of Warcraft.
2. Extract the AutoRaidChatLog folder into:
   World of Warcraft\_retail_\Interface\AddOns\
3. Start WoW and enable "Auto Raid Chat Log" on the AddOns screen.

If WoW labels the addon as out of date after a game patch, enable
"Load out of date AddOns". The addon uses stable built-in APIs.

USAGE
-----

The addon works automatically and does not enable chat logging in other raids.
Type /raidchatlog to check the logging state and whether the addon recognizes
your current location as March on Quel'Danas.

The raid is identified by its instance-map ID (2913), so detection works with
every WoW client language.

WoW writes chat logs to:
World of Warcraft\_retail_\Logs\WoWChatLog.txt

NOTE
----

Chat logging records chat. It is separate from combat logging, which is used by
sites such as Warcraft Logs.
