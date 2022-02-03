Titel
======

| modul      | ist da? |
|------------|---------|
| adc        | ist da |
| bit        | ist da |
| bthci      | gibt es nicht |
| can        | gibt es nicht |
| crypto     | ist da |
| dac        | gibt es nicht |
| encoder    | ist da |
| file       | ist da |
| gpio       | ist da |
| heaptrace  | gibt es nicht |
| http       | ist da |
| i2c        | ist da |
| ledc       | ist da |
| mqtt       | ist da |
| net        | ist da |
| node       | ist da |
| pipe       | ist da |
| pulsecnt   | gibt es nicht |
| qrcodegen  | ist da |
| sjson      | ist da |
| spi        | ist da |
| struct     | ist da |
| time       | ist da |
| tmr        | ist da |
| uart       | ist da |
| wifi       | ist da |
| ws2812     | ist da |


# Firmware flashen

Tested with version 3.2 . Please note that Ubuntu currently provides only v2.8, which is too old for the ESP32-C3.

Vorbereitung (nur einmal nötig):
```
sudo apt install python3-pip
pip install esptool
```

Dann flashen, indem man in diesem Git Repo ins Verzeichnis "firmware" wechselt, und das Kommando ausführt:

```
~/.local/bin/esptool.py -p /dev/ttyUSB0 -b 460800 --before default_reset --after hard_reset --chip esp32c3  write_flash --flash_mode dio --flash_size detect --flash_freq 40m 0x0 bootloader.bin 0x8000 partition-table.bin 0x10000 nodemcu.bin
```