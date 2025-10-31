#!/bin/bash
# AUTO BACKUP SCRIPT
# Автор: Салават Ахметшин
# Назначение: автоматизация резервного копирования

SRC_DIR="/home/user/project"     # каталог, который нужно копировать
BACKUP_DIR="/home/user/backup"   # куда сохранять копии
DATE=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_FILE="$BACKUP_DIR/backup_$DATE.tar.gz"

echo "🧩 Запуск резервного копирования..."
mkdir -p "$BACKUP_DIR"
tar -czf "$BACKUP_FILE" "$SRC_DIR"
echo "✅ Резервное копирование завершено: $BACKUP_FILE"
