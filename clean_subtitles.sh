#!/bin/bash

export LC_COLLATE=C.UTF-8

# rx_deaf_info="（[^）]*）"
# rx_parenthesis="[\(（][一-龯ぁ-ヿｦ-ﾞ 　々\\\\/]*[\)）]"
rx_parenthesis1='\([^\)]*\)'
rx_parenthesis2='（[^）]*）'
rx_music_start='[～〜]?♪[～〜]?'
rx_brackets='[≪≫《》]'
rx_weird_characters="‪"
# rx_an8='\{\\an8\}'

confirm_all=""

function check_prompt_remove {
    printf "Found matches: "
    grep -E -e "$1" -c "$2"
    printf "\n"
    if [ -z "$confirm_all" ];then
        read -p "Remove? Yes/No/All ? [y/n/a]: " -n 1 -r yn
        printf "\n"
        case $yn in
            [Yy]* ) ;;
            [Aa]* ) confirm_all="#" ;;
            * ) return ;;
        esac
    fi

    sed -E --in-place "s/$1//g" "$2"
    printf "\n"
}

for f in "${@}";do
    cp "$f" "$f.old"
    printf "FILE: \"%s\":\n" "$f"
    printf "Weird characters /%s/" "$rx_weird_characters"
    check_prompt_remove "$rx_weird_characters" "$f"
    # printf "an8 /%s/" "$rx_an8"
    # check_prompt_remove "$rx_an8" "$f"
    printf "Deaf Info 1 /%s/ :\n" "$rx_parenthesis1"
    check_prompt_remove "$rx_parenthesis1" "$f"
    printf "Deaf Info 2 /%s/ :\n" "$rx_parenthesis2"
    check_prompt_remove "$rx_parenthesis2" "$f"
    printf "Music Start  /%s/ :\n" "$rx_music_start"
    check_prompt_remove "$rx_music_start" "$f"
    printf "Brackets /%s/" "$rx_brackets"
    check_prompt_remove "$rx_brackets" "$f"
    # printf "Music End  /%s/ :\n" "$rx_music_end"
    # check_prompt_remove "$rx_music_end" "$f"
    # printf "\n"
done
