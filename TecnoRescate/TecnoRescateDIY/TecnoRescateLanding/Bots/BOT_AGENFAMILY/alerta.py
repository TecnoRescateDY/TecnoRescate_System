import time
import json

with open("config.json") as f:
    config = json.load(f)

for user in config["usuarios"]:
    print(f"🔔 Enviando alerta a {user['nombre']} vía {user['canal']}")
