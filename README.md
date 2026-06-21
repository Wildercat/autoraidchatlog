# Auto Raid Chat Log

![Auto Raid Chat Log icon](icon.png)

Auto Raid Chat Log is a small World of Warcraft addon that automatically
enables chat logging when your character enters **March on Quel'Danas** and
disables it again when you leave.

It only activates in that raid. Detection uses the raid's instance-map ID
(`2913`), so it works with every WoW client language.

## Installation

1. Download the latest release archive.
2. Extract the `AutoRaidChatLog` folder into:
   `World of Warcraft/_retail_/Interface/AddOns/`
3. Restart WoW or type `/reload` if the addon was installed while WoW was open.

## Usage

The addon works automatically. Type `/raidchatlog` to display:

- Whether chat logging is currently on or off.
- Whether the addon recognizes your location as March on Quel'Danas.

WoW writes the log to:

`World of Warcraft/_retail_/Logs/WoWChatLog.txt`

## Important

This addon controls **chat logging**, not combat logging. Combat logging is the
separate feature used by services such as Warcraft Logs.

## Compatibility

- World of Warcraft Retail
- Midnight 12.0.5 and 12.0.7

## License

Copyright (c) 2026 Abram. All rights reserved.
