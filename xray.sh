#!/bin/sh
if [ ! -f UUID ]; then
  UUID="367a2b12-3658-4956-a198-0f3c2716b5c4"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

