echo '\n\n Requesting all heroes'
curl localhost:3000/heroes

echo '\n\n Requesting hero 01'
curl localhost:3000/heroes/1

echo '\n\n Requesting with invalid body'
curl --silent -X POST \
    --data-binary '{"invalid": "data"}' \
    localhost:3000/heroes

echo '\n\n Creating super hero'
CREATE=$(curl --silent -X POST \
    --data-binary '{"name": "super hero", "age": 17, "power": "invisibility"}' \
    localhost:3000/heroes)

echo $CREATE