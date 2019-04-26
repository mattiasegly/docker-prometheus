#!/bin/bash

echo "Create Prometheus data folder if it doesn't exist..."
if [ ! -d /prometheus/data ]; then
mkdir /prometheus/data
fi

echo "Finished! Run container."
exec "$@"
