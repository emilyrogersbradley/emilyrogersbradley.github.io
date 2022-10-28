FILE=Gemfile.lock
if [ -f "$FILE" ]; then
    rm $FILE
fi
winpty docker run --rm -v "$PWD:/srv/jekyll/" -p "8081:8081" \
                    -it amirpourmand/al-folio bundler  \
                    exec jekyll serve --watch --port=8081 --host=0.0.0.0 
