# Pulsar Flatpak Extension for the Steam Flatpak

Want to run Space Engineers natively on Linux? YES, Pulsar can help with this.

Want to run Space Engineers in the Steam Flatpak? YES, then this flatpak extension can help.

Then you've come to the right place.

This Flatpak Extension adds Pulsar as a Linux compatibility tool to Steam inside the flatpak.

It supports both Space Engineers 1 and Space Engineers 2.

## Pulsar

You can find more information about pulsar here: https://github.com/SpaceGT/Pulsar. 

The flatpak uses the latest release binary downloaded from the Releases section, with no modifications.
You can check it by comparing the URL and [sha256sum](https://linuxize.com/post/sha256sum-and-md5sum-commands/) in the flatpak mainfest

### DOTNET 10 SDK

Pulsar and Space Engineers run with DOTNET 10 SDK, this can be found here: https://dotnet.microsoft.com/en-us/download/dotnet/10.0.
The flatpak uses the latest x64 linux binary release, with no modifications.
You can check it by comparing the URL and sha256sum in the flatpak mainfest.

## Install for steam flatpak

```bash
flatpak install com.valvesoftware.Steam
# Run steam, login and install space engineers 1
flatpak kill com.valvesoftware.Steam
flatpak install org.flatpak.Builder
flatpak run --command=flathub-build org.flatpak.Builder --install com.valvesoftware.Steam.CompatibilityTool.pulsar.yml 
flatpak run com.valvesoftware.Steam
# In steam, goto space engineers
# Open space engineers properties
# go to compatibility tab
# enable `force the use of a specfic compatibility tool` and find Pulsar 2.4.2 in dropdown
# Launch space engineers
```

## Manual install in steam flatpak

- Download https://github.com/SpaceGT/Pulsar/releases/download/v2.4.2/pulsar-v2.4.2-linux-x64.tar.gz and extract to `~/.var/app/com.valvesoftware.Steam/data/Steam/compatibilitytools.d/pulsar`
- Downlad https://builds.dotnet.microsoft.com/dotnet/Sdk/10.0.401/dotnet-sdk-10.0.401-linux-x64.tar.gz and extract to `~/.var/app/com.valvesoftware.Steam/data/Steam/compatibilitytools.d/pulsar/dotnet-sdk`
- copy `compatibilitytool.vdf`, `toolmanifest.vdf` and `pulsar.sh`
- open `pulsar.sh` and replace `/app/share/steam/compatibilitytools.d` with `~/.var/app/com.valvesoftware.Steam/data/Steam/compatibilitytools.d/` 

## TODO

- avoid hardcoded paths in pulsar.sh?
- Use dotnet10 flatpak extension instead of dotnet10 binary blob?
