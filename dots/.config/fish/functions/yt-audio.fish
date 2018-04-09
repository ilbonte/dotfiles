function yt-audio -d "download audio as mp3 from youtube"
    echo "downloading" $argv
    youtube-dl --extract-audio --audio-format mp3 $argv
end