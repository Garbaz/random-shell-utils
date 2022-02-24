back="`pwd`"
for d in `find . -type d -name ".git" 2>/dev/null`;do
    d=${d%$".git"}
    cd "$d"
    #printf -- "--------------------------------------------------------\n"
    clear
    printf "$d:\n\n"
    git status
    read -n 1
    cd "$back"
done
