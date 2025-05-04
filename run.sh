#!/usr/bin/env sh
# Forge requires a configured set of both JVM and program arguments.
# Add custom JVM arguments to the user_jvm_args.txt
# Add custom program arguments (such as nogui) to this file in the next line before the "$@" or
# pass them to this script directly
java -Xms9G -Xmx9G -XX:+UseG1GC -XX:MaxGCPauseMillis=50 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=60 -XX:G1HeapRegionSize=4M -XX:G1ReservePercent=10 -XX:G1HeapWastePercent=5 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=50 -XX:G1MixedGCCountTarget=8 -XX:+ParallelRefProcEnabled -XX:SurvivorRatio=24 -XX:MaxTenuringThreshold=1 -XX:+UseStringDeduplication -XX:+OptimizeStringConcat -XX:+PerfDisableSharedMem -XX:ParallelGCThreads=6 -XX:ConcGCThreads=4 -Dusing.aikars.flags=true -Daikars.new.flags=true @libraries/net/minecraftforge/forge/1.20.1-47.4.0/unix_args.txt nogui "$@"
