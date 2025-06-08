#!/bin/bash
export PATH="$HOME/.arduino15/packages/esp32/tools/xtensa-esp32-elf-gcc/$(ls ~/.arduino15/packages/esp32/tools/xtensa-esp32-elf-gcc)/bin:$PATH"
arduino-cli compile --fqbn esp32:esp32:esp32dev sketch/esp32_ota.ino
mkdir -p build
cp sketch/build/esp32dev/esp32_ota.ino.bin build/esp32_ota.bin
echo "Generated build/esp32_ota.bin"
