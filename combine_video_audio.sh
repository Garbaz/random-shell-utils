if [ "$#" -ne "3" ];then
    printf "Usage:\n    combine_video_audio.sh VIDEO AUDIO RESULT\n"
    exit 1
fi

ffmpeg -i "$1" -i "$2" -map 0:v -map 1:a -c:v copy -shortest "$3"
