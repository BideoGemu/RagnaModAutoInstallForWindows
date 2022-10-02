# RagnaMod modpack auto install script Linux Side

### NOTE: this is for modpack version 6.1.7

To download the modpack go to https://www.curseforge.com/minecraft/modpacks/ragnamod-vi

## How to:

- Download mod files that are not open to third parties on curseforge:
  * betterendforge-1.16.5-1.6.3.jar => https://www.curseforge.com/minecraft/mc-mods/betterend-forge-port/download/3467948
  * cagedmobs-1.16.5-1.3.8.jar => https://www.curseforge.com/minecraft/mc-mods/caged-mobs/download/3483966


### NOTE: You can also take these files in the mods folder of your local installation

- Copy mods files for Caged Mobs and BetterEnd(Forge) on mods directory
- Enter your API Key on server-setup-config.yaml (line 76) : `curseForgeAPIKey: XXX`
- Put all files on your server
- Launch `startserver.bat`

**Enjoy ! :)**

## API Key:

The official way is to create a CFCore account and generate an API key. This is the easiest and most straight forward way, but CurseForge allows mod/modpack creators to disable third-parties from being able to access the download URL through the API, so some mods may not be able to be downloaded automatically.

Visit this link for more informations : https://core.curseforge.com/

If you encounter any problem, do not hesitate to join the RagnaMod Community discord by clicking on the link below or open an issue on GitHub.

[![Discord](https://cdn.discordapp.com/attachments/934134390726995999/934150251391102976/Discord.png)](https://discord.gg/bjjvFj9yQC)
