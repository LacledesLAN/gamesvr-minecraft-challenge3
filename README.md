# Laclede's LAN Minecraft Challenge 3

Minecraft world divided into multiple identical zones that are blocked off from each other. A build challenge is set and teams of 1 to 3 players gets assigned a zone. At the end each team's creation is judged.

Each zone has goodies, supplies, and [Easter-eggs](https://en.wikipedia.org/wiki/Easter_egg_(media)) spread throughout to encourage exploration. All players new to the server spawn in a 'spawn jail' which they cannot escape - an admin must teleport them to the appropriate zone.

![alt text](https://raw.githubusercontent.com/LacledesLAN/gamesvr-minecraft-challenge3/master/.docs/OverheadMap.png "Overhead Map")

## Teleportation Coordinates

| Zone   |                 |
| ------ | --------------- |
| Jail   | -706 95 -1162   |
| 1      | -1484  70  451  |
| 2      | -1350  70  451  |
| 3      | -1215  70  451  |
| 4      | -1080  70  451  |
| 5      | -1484  70  1134 |
| 6      | -1350  70  1134 |
| 7      | -1215  70  1134 |
| 8      | -1080  70  1134 |

## Admin Commands

| Description             | Command                                          | Notes |
| ----------------------- | ------------------------------------------------ | ----- |
| Enable whitelist        | `/whitelist on`                                  | Prevents players besides OP and players listed on the whitelist form connecting. Use while judging results. |
| Teleport to player      | `tp [target player] <destination player>`        |       |
| Teleport to coordinates | `tp [target player] <x> <y> <z> [<yaw> <pitch>]` |       |
| Set world spawn         | `/setworldspawn`; `/setworldspawn <x> <y> <z>`   |       |
| Set player spawn        | `/spawnpoint <player> <x> <y> <z>`               |       |
| Set game rules          | `/gamerule <rule name> [value]`                  |       |
| Night vision            | `/effect @p minecraft:night_vision 99999 255`    |       |
| Reset vision            | `/effect @p clear`                               |       |
| Give barrier block      | `/give <player> minecraft:barrier`               |       |

## Docker

### Build

```shell
docker build -t lacledeslan/gamesvr-minecraft-challenge3 -f linux.Dockerfile .
```

### Run Interactive Server

```shell
docker run -d --rm -p 25565:25565 lacledeslan/gamesvr-minecraft-challenge3 java -Xms512M -Xmx1024M -jar /app/minecraft-server.jar nogui
```
