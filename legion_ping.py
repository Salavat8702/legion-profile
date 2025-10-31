#!/usr/bin/env python3
import requests
import datetime
import json

LEGION_API = "https://api.legion.cc/ping"

def check_legion_status():
    try:
        response = requests.get(LEGION_API, timeout=5)
        data = {
            "timestamp": datetime.datetime.now().isoformat(),
            "status_code": response.status_code,
            "ok": response.ok,
        }
        print("✅ Legion доступен:", json.dumps(data, indent=2, ensure_ascii=False))
    except Exception as e:
        print("⚠️ Ошибка при проверке Legion:", e)

if name == "main":
    print("🔄 Проверка связи с Legion API...")
    check_legion_status()
