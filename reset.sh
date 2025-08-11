#!/bin/bash

# Detecta o dispositivo USB do mouse pela classe HID e nome genérico "Cooler"
device=$(usbreset | grep -i "Cooler" | head -n1 | grep -o '[0-9]\{3\}/[0-9]\{3\}')

if [ -z "$device" ]; then
  echo "Mouse USB não encontrado."
  exit 1
fi

echo "Resetando mouse USB em $device ..."
sudo usbreset $device
sudo usbreset $device
