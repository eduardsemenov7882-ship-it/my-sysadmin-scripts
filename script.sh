#!/bin/bash

LOG_FILE="monitor.log"
INTERVAL=10

while true; do
    {
        echo "========================================"
        echo "Дата и время: $(date '+%Y-%m-%d %H:%M:%S')"
        echo "--- Оперативная память ---"
        free -h
        echo "--- Дисковое пространство ---"
        df -h
        echo "--- Нагрузка системы ---"
        uptime
        echo
    } >> "$LOG_FILE" 2>&1 || echo "Ошибка записи в лог: $(date)" >&2

    sleep "$INTERVAL" || {
        echo "Ошибка ожидания. Завершение скрипта." >&2
        exit 1
    }
done
