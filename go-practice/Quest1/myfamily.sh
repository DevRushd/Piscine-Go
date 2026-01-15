#! /bin/bash

curl https://acad.learn2earn.ng/assets/superhero/all.json | jq --argjson id "$HERO_ID" '. [] | select(.id == $id) | .connections.relatives' | sed 's/^"\(.*\)"$/\1/'

curl https://acad.learn2earn.ng/assets/superhero/all.json | jq -r --argjson id "$HERO_ID" '. [] | select(.id == $id) | .connections.relatives'



