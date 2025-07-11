"""
🦁 Plantilla: backtest_template.py

Descripción:
Ejemplo de backtest simple que recorre un dataset de velas, clasifica cada vela como
"Vela Verde" o "Vela Roja" según su relación Open-Close, y guarda el resultado en un log.

Autor: The_Daredevil M.
Fecha de creación: [Completar]
"""

import os
import pandas as pd

def classify_candles(df):
    """
    Clasifica cada vela del dataset como Vela Verde o Vela Roja.

    Args:
        df (DataFrame): Dataset con columnas 'timestamp', 'open', 'close'.

    Returns:
        List[str]: Lista de líneas de clasificación listas para guardar en log.
    """
    classification_lines = []

    for index, row in df.iterrows():
        color = "🟩 Vela Verde" if row['close'] > row['open'] else "🟥 Vela Roja"
        line = f"{row['timestamp']} | {color} | Open: {row['open']} | Close: {row['close']}\n"
        print(line.strip())
        classification_lines.append(line)

    return classification_lines

def run_candle_classification_backtest():
    """
    Ejecuta el backtest de clasificación de velas y guarda el resultado en un archivo de log.
    """
    # Construir rutas
    base_path = os.path.dirname(__file__)
    csv_path = os.path.join(base_path, "../data/ethusdt_1h_sample.csv")
    log_path = os.path.join(base_path, "../backtests/backtest_log.txt")

    # Cargar datos
    try:
        df = pd.read_csv(csv_path)
    except FileNotFoundError:
        print(f"❌ Archivo no encontrado en: {csv_path}")
        input("Presiona Enter para salir...")
        return

    print("✅ Datos cargados correctamente.\n")

    # Clasificar velas
    lines_to_log = classify_candles(df)

    # Guardar log
    with open(log_path, "w", encoding="utf-8") as log_file:
        log_file.write("📜 The Daredevil Backtest Log\n")
        log_file.write("=============================\n\n")
        log_file.write("🔎 Clasificación de velas:\n\n")
        log_file.writelines(lines_to_log)

    print(f"\n✅ Log guardado en: {log_path}")

if __name__ == "__main__":
    run_candle_classification_backtest()
