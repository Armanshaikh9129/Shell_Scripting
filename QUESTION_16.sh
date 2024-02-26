#!/bin/bash

MUSIC="*.mp3"
DOCUMENT="*.pdf"
PHOTO="*.jpg"
TXT="*.txt"
DESTINATION="/root"
SOURCE="/home"

function MUSIC1() {
    mkdir -p "$DESTINATION/MUSIC-FILE"
    mv "$SOURCE"/*.mp3 "$DESTINATION/MUSIC-FILE"
}

if ls $SOURCE/$MUSIC
then
    echo "Music files are Found"
    echo "Files Containing $MUSIC Moved in Specified DIR"
    MUSIC1
else 
    echo "Music files are Not Found"
    echo "ERROR CODE"
fi

function DOCUMENT1() {
    mkdir -p "$DESTINATION/DOC-FILE"
    mv "$SOURCE"/*.pdf "$DESTINATION/DOC-FILE"
}

if ls $SOURCE/$DOCUMENT 
then
    echo "Document files are Found"
    echo "Files Containing $DOCUMENT Moved in Specified DIR"
    DOCUMENT1
else
    echo "Document files are Not Found"
    echo "ERROR CODE"
fi

function PHOTO1() {
    mkdir -p "$DESTINATION/PHOTO-FILE"
    mv "$SOURCE"/*.jpg "$DESTINATION/PHOTO-FILE"
}

if ls $SOURCE/$PHOTO 
then
    echo "Image files are Found"
    echo "Files Containing $PHOTO Moved in Specified DIR"
    PHOTO1
else
    echo "Image files are Not Found"
    echo "ERROR CODE"
fi

function TEXT1() {
    mkdir -p "$DESTINATION/TEXT-FILE"
    mv "$SOURCE"/*.txt "$DESTINATION/TEXT-FILE"
}

if ls $SOURCE/$TXT 
then
    echo "Text files are Found"
    echo "Files Containing $TXT Moved in Specified DIR"
    TEXT1
else
    echo "Text files are Not Found"
    echo "ERROR CODE"
fi
