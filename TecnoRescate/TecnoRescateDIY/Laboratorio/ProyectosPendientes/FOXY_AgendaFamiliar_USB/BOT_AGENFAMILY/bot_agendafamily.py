import os
import json
import datetime
import time
import logging

# Cargar configuración
with open("config.json", "r") as f:
    config = json.load(f)

log_dir = "logs"
if not os.path.exists(log_dir):
    os.makedirs(log_dir)

# Seteo del log diario
log_filename = os.path.join(log_dir, f"log_{datetime.date.today()}.txt")
logging.basicConfig(filename=log_filename, level=logging.INFO)

def log(msg):
    now = datetime.datetime.now().strftime("%H:%M:%S")
    logging.info(f"[{now}] {msg}")
    print(f"[{now}] {msg}")  # Solo si querés consola también

def sync_calendars():
    log("Iniciando sincronización...")
    # Simulamos conexión a calendario
    try:
        # Acá conectarías con Google Calendar o un .ics local
        log("Calendario sincronizado exitosamente.")
    except Exception as e:
        log(f"Error al sincronizar: {str(e)}")

def check_alerts():
    log("Verificando alertas programadas...")
    # Aquí iría tu lógica de notificación, por ejemplo:
    alertas = config.get("alertas", [])
    for alerta in alertas:
        log(f"Alerta activa: {alerta}")

def main_loop():
    while True:
        sync_calendars()
        check_alerts()
        time.sleep(config.get("intervalo_minutos", 5) * 60)

if __name__ == "__main__":
    log("BOT_AGENFAMILY iniciado.")
    main_loop()
