if [ -z "`pactl list short  | grep 'default_null_sink'`" ];then
    pactl load-module module-null-sink object.linger=1 media.class=Audio/Sink sink_name=default_null_sink channel_map=FL,FR
fi

pw-jack carla-rack
