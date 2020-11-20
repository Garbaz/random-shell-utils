index="$(pacmd list-sinks | grep "\* index: " | sed 's/[ ]*\* index: //')"
if [ "${#index}" -ne "1" ];then
    printf "Failed to find index of default device: \"$index\"\n"
    exit 1
fi

pacmd load-module module-remap-sink sink_name=mono master=$index channels=2 channel_map=mono,mono
