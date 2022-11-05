#!/bin/sh
if [ ! -f UUID ]; then
  UUID="4086b0ce-3d0c-4b17-a40e-92a519f8541e"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

