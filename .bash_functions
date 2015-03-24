# man pages for Google Chrome (Safari won't work like this)
function gman {
    man -P cat "$1" | col -b > "/tmp/$1"
    open -a "/Applications/Google Chrome.app" "/tmp/$1"
}


# find a file
function findx {
    if [[ ! "$#" -eq 2 ]]; then
        echo "Usage: findx [directory] [searchterm]"
        return
    elif [[ ! -d "$1" ]]; then
        echo "$1 is not a valid directory."
        return
    fi
    sudo find -x $1 -iname "$2" -print
}


# convert windows line endings to unix line endings
function crlf2lf {
    grep --exclude-dir .git -lIr "^M$" . | xargs sed -i 's/^M$//'
}


# convert mkv files to mp4
function ff-copy {
    ffmpeg -i $1 -c:v copy -c:a copy "${1%.*}.2ch.x264.mp4"
}

function ff-copy-batch {
    for i in *.mkv; do ffmpeg -i $i -c:v copy -c:a copy "${i%.*}.2ch.x264.mp4";done
}

function ff-audio {
    #ffmpeg -i $1 -c:v copy -c:a libfaac -ac 2 -bsf:a aac_adtstoasc "${1%.*}.2ch.x264.mp4"
    ffmpeg -i $1 -c:v copy -c:a aac -strict -2 -ac 2 -bsf:a aac_adtstoasc "${1%.*}.2ch.x264.mp4"
}

function ff-audio-batch {
    #for i in *.mkv; do ffmpeg -i $i -c:v copy -c:a libfaac -ac 2 -bsf:a aac_adtstoasc "${i%.*}.2ch.x264.mp4";done
    for i in *.mkv; do ffmpeg -i $i -c:v copy -c:a aac -strict -2 -ac 2 -bsf:a aac_adtstoasc "${i%.*}.2ch.x264.mp4";done
}

function ff-video {
    ffmpeg -i $1 -c:v libx264 -c:a copy "${1%.*}.2ch.x264.mp4"
}

function ff-video-batch {
    for i in *.mkv; do ffmpeg -i $i -c:v libx264 -c:a copy "${i%.*}.2ch.x264.mp4";done
}

function ff-full {
    #ffmpeg -i $1 -c:v libx264 -c:a libfaac -ac 2 -bsf:a aac_adtstoasc "${1%.*}.2ch.x264.mp4"
    ffmpeg -i $1 -c:v libx264 -c:a aac -strict -2 -ac 2 -bsf:a aac_adtstoasc "${1%.*}.2ch.x264.mp4"
}

function ff-full-batch {
    #for i in *.mkv; do ffmpeg -i $i -c:v libx264 -c:a libfaac -ac 2 -bsf:a aac_adtstoasc "${i%.*}.2ch.x264.mp4";done
    for i in *.mkv; do ffmpeg -i $i -c:v libx264 -c:a aac -strict -2 -ac 2 -bsf:a aac_adtstoasc "${i%.*}.2ch.x264.mp4";done
}

