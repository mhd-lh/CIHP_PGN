#!/bin/bash
FILEID="1Mqpse5Gen4V4403wFEpv3w3JAsWw2uhk"
FILENAME="CIHP_pgn.zip"
wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id='$FILEID -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=$FILEID" -O $FILENAME && rm -rf /tmp/cookies.txt
unzip CIHP_pgn.zip
mv CIHP_pgn/* ./checkpoint
rm -rf CIHP_pgn*
