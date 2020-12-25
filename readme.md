## Summary
* Quake2 32bit textures pak
* Md3 items models (optional)
* Hi-res icons & font (optional)
* Skies (optional)

Based on collection of various high quality textures/models/icons paks from various authors and me too.

## Install ([q2pro](https://github.com/skullernet/q2pro))

Just download all paks from [latest release](https://github.com/tosher/q2textures/releases/latest) and copy them into baseq2 folder.

> r1q2 client unsupported from v2.4.1 due to image size restrictions.

## Build paks

### Without git
* Download repository as [zip file](https://github.com/tosher/q2textures/archive/master.zip).
* Extract data from zip into some folder
* From extracted directory `q2textures-master`, run `make_paks.bat` (or `make_pkz.bat` for `pkz` paks)
* All paks will be in folder with zip archive.

> You can just extract two files from archive: `make_paks.bat`, `pakman-062b.zip` and run `make_paks.bat`.

### With git
* Clone repo into some folder
* Run `make_paks.bat`

> [Qpakman](https://github.com/bunder/qpakman) - is a command-line tool for managing PAK and WAD files from QuakeI/II & Hexen II.

### Textures v2
Pak file: `pak99_textures.pak`

* [Screenshots](https://github.com/tosher/q2textures/tree/master/screenshots)

Pack includes all needed textures for maps:
q2dm1-8, match1, ztn2dm1-5, q2duel1-6, q2rdm1-11, q2rdm14, q2rdm15, fury, ptrip, q2next1, koldduel1

> Many textures were updated/fixed/added (22.09.2020).

> [Screenshots settings](https://github.com/tosher/q2textures/tree/master/screenshots.cfg)

### MD3 models
* Pak file: `pak97_models.pak` - original md3 models
* Pak file: `pak97_models_bright.pak` - bright skins version
* Pak file: `pak95_v_models.pak` - in hand weapons (based on excellent [Quake XP](https://www.moddb.com/mods/quake-2-xp) models)

![](screenshots/models_bright.png?raw=true)

### Icons, font & console/ui background image
Pak file: `pak98_pics.pak`

![](screenshots/pics-01.png?raw=true)

![](screenshots/prochars-01.png?raw=true)

```
set con_font "prochars"
set scr_font "prochars"
```

Optional settings:

```
set scr_scale "2"
set con_scale "2"
set gl_fontshadow "0"
set gl_bilerp_chars "1"
set gl_bilerp_pics "1"
```

Console background:
```
set con_background "conback_1920x1080.png"
```

Menu background (file `q2pro.menu`)
```
background menuback_1920x1080.png
```

### Skies
Pak file: `pak96_env.pak`

![Blue](screenshots/env-01.png?raw=true)
*Blue skies*

![Red](screenshots/env-02.png?raw=true)
*Red skies*

![Night (q2rdm11)](screenshots/env-q2rdm11-03.png?raw=true)
*Night (q2rdm11)*

**Quake2** is great!
