
for f in *.tex; do 
    mv -- "$f" "${f%.tex}.txt"
done
