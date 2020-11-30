for f in *.py;
do
    mv "$f" "${f#image}"
    mv "$i" "${i/-[0-9.]*.pkg/.pkg}"
done