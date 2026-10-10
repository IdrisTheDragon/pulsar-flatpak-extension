#!/usr/bin/env bash

set +e

if [[ $@ == *"d3ddriverquery64.exe"* ]]; then
   echo "Steam is trying to query Direct3D graphics driver capabilities with d3ddriverquery64.exe through pulsar compatibility tool. We'll just ignore this"
   exit 0;
fi

echo "Launching Pulsar"
echo "args" $@
if [[ $@ == *"244850"* ]]; then
    DOTNET_ROOT=/app/share/steam/compatibilitytools.d/Pulsar/dotnet-sdk /app/share/steam/compatibilitytools.d/Pulsar/Interim.bin -useHome -noUpdate
    RETURN_CODE=$?;
elif [[ $@ == *"1133870"* ]]; then
    DOTNET_ROOT=/app/share/steam/compatibilitytools.d/Pulsar/dotnet-sdk /app/share/steam/compatibilitytools.d/Pulsar/Modern.bin -useHome -noUpdate
    RETURN_CODE=$?;
else
    notify-send "Pulsar only supports Space Engineers and Space Engineers 2, I have no idea how to run this game."
    RETURN_CODE=-1
fi
echo "Space Engineers Exited:" $RETURN_CODE

exit $RETURN_CODE