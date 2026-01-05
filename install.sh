#!/bin/bash
# Установка Bash + Starship конфигов для пользователя и root
# Для нового компьютера / новой системы

# -----------------------------
# Конфиги пользователя
# -----------------------------
echo "Применение конфигов bash для обычного пользователя..."

# Копируем bashrc
cp user/bashrc ~/.bashrc
# Копируем Starship конфиг
mkdir -p ~/.config
cp user/config/starship.toml ~/.config/starship.toml

# -----------------------------
# Конфиги root
# -----------------------------
echo "Применение конфигов bash для Root..."

# Копируем bashrc для root
sudo cp root/bashrc /root/.bashrc
# Копируем Starship конфиг для root
sudo mkdir -p /root/.config
sudo cp root/config/starship.toml /root/.config/starship.toml

# -----------------------------
# Применяем изменения
# -----------------------------
echo "Применение пользовательского bashrc..."
source ~/.bashrc

echo "Готово! Применены пользовательские и root-конфигурации."
