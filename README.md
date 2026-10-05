# Pulsar extension for Steam Flatpak

WIP PoC

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
- Identify if space engineers 1 or 2 was launched and pick appropraite pulsar entry point.
- Use dotnet10 flatpak extension instead of dotnet10 blob
- Stop it launching multiple times.. Space Engineers not returning exit code zero so steam is retrying?
