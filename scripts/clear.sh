#!/usr/bin/env bash

# Finaliza de forma manual procesos de desarrollo que pertenecen a este proyecto.
# No mata procesos globales de Java, Dart o Flutter que no incluyan esta ruta.
set -u

project_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd -P)"
matched_pids=()

while IFS= read -r process; do
  pid="${process%% *}"
  command="${process#* }"

  if [[ "$command" == *"$project_root"* ]] \
    && [[ "$command" =~ (^|/)(flutter|dart|java|gradle|kotlin)([[:space:]]|$) ]]; then
    matched_pids+=("$pid")
    printf 'Terminando %s: %s\n' "$pid" "$command"
    kill -TERM "$pid" 2>/dev/null || true
  fi
done < <(ps -u "$(id -u)" -o pid=,args=)

if ((${#matched_pids[@]} == 0)); then
  echo 'No se encontraron procesos del proyecto para terminar.'
  exit 0
fi

sleep 2

for pid in "${matched_pids[@]}"; do
  if kill -0 "$pid" 2>/dev/null; then
    echo "El proceso $pid no respondió a SIGTERM; enviando SIGKILL."
    kill -KILL "$pid" 2>/dev/null || true
  fi
done

echo 'Limpieza finalizada.'
