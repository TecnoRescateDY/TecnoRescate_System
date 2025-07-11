import os
import pandas as pd

# Construir ruta absoluta al CSV
base_path = os.path.dirname(__file__)
csv_path = os.path.join(base_path, "../data/ethusdt_1h_sample.csv")

# Ruta para guardar el log
log_path = os.path.join(base_path, "../backtests/backtest_log.txt")

# Cargar datos
try:
    df = pd.read_csv(csv_path)
except FileNotFoundError:
    print(f"❌ Archivo no encontrado en: {csv_path}")
    input("Presiona Enter para salir...")
    exit()

print("✅ Datos cargados correctamente.\n")

# Abrir archivo de log para escritura
with open(log_path, "w", encoding="utf-8") as log_file:
    log_file.write("📜 The Daredevil Backtest Log\n")
    log_file.write("=============================\n\n")
    log_file.write("🔎 Clasificación de velas:\n\n")

    # Recorrer velas y guardar tanto en consola como en el log
    for index, row in df.iterrows():
        color = "🟩 Vela Verde" if row['close'] > row['open'] else "🟥 Vela Roja"
        line = f"{row['timestamp']} | {color} | Open: {row['open']} | Close: {row['close']}\n"
        print(line.strip())
        log_file.write(line)

print(f"\n✅ Log guardado en: {log_path}")

input("\nPresiona Enter para salir...")
