for f in "$@";do
    dir=`dirname "$f"`
    filename=`basename "$f"`
    extension="${filename##*.}"
    filename="${filename%.*}"
    convert -interpolate nearestneighbor -filter point -resize 200% "$dir/${filename}.$extension" "$dir/${filename}_2x.$extension"
done
