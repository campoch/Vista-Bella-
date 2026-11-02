#!/usr/bin/env sh
# Genera index.html (documento completo) a partir de vivienda-2a.html (contenido del artifact).
set -e
cd "$(dirname "$0")"
{
  printf '<!doctype html><html lang="es"><head><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover"><style>:root{padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}body{margin:0}[hidden]{display:none!important}</style></head><body>\n'
  cat vivienda-2a.html
  printf '\n</body></html>\n'
} > index.html
