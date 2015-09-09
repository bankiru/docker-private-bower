#!/bin/bash

if [ ! -z "${ADDRESS}" ]; then
    sed -i "s/<address>/${ADDRESS}/g" /private-bower/config.json
fi

private-bower --config /private-bower/config.json

