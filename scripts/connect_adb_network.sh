#!/usr/bin/env bash

# Conecta un dispositivo Android mediante Wireless debugging (Android 11+).
# En el teléfono abre: Opciones de desarrollador > Depuración inalámbrica >
# "Vincular dispositivo con código de vinculación".
set -euo pipefail

echo 'Necesitarás dos puertos distintos que Android muestra en Depuración inalámbrica:'
echo '  1. El puerto temporal de "Vincular dispositivo con código".'
echo '  2. El puerto de conexión mostrado en la pantalla principal de Depuración inalámbrica.'
printf '\n'

read -r -p 'IP del dispositivo: ' device_ip
read -r -p 'Puerto temporal de emparejamiento (pantalla de código): ' pairing_port
read -r -s -p 'Código de emparejamiento: ' pairing_code
printf '\n'

if [[ -z "$device_ip" || -z "$pairing_port" || -z "$pairing_code" ]]; then
  echo 'La IP, el puerto y el código son obligatorios.' >&2
  exit 1
fi

adb pair "$device_ip:$pairing_port" "$pairing_code"

read -r -p 'Puerto de conexión ADB (pantalla principal): ' connection_port
if [[ -z "$connection_port" ]]; then
  echo 'El puerto de conexión es obligatorio.' >&2
  exit 1
fi

adb connect "$device_ip:$connection_port"
adb devices -l
