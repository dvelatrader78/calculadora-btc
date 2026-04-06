#!/bin/bash

# Colores para que sea más legible
VERDE='\033[0;32m'
AZUL='\033[0;34m'
NC='\033[0m' # Sin color

echo -e "${AZUL}--- Iniciando subida a GitHub (Adictos.shop) ---${NC}"

# 1. Añadir todos los cambios
git add .

# 2. Pedir mensaje de commit (si no escribes nada, usa uno por defecto)
echo -e "${VERDE}Escribe el mensaje del cambio (o pulsa ENTER para 'Update Adictos'):${NC}"
read mensaje
if [ -z "$mensaje" ]; then
    mensaje="Update Adictos.shop - Post Semana Santa"
fi

# 3. Commit y Push
git commit -m "$mensaje"
git push origin main

echo -e "${AZUL}--- ¡Hecho! Código en la nube. ---${NC}"
