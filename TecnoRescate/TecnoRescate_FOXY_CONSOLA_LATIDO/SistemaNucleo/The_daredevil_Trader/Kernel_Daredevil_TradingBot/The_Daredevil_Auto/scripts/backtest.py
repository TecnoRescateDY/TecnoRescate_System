"""
🦁 Script: backtest.py

Descripción:
Script principal para iniciar un backtest dentro de The_Daredevil_Auto.
Este archivo actúa como lanzador de pruebas. Puede ser adaptado para ejecutar
diferentes tipos de backtests según la estrategia o lógica deseada.

Autor: The_Daredevil M.
Fecha de creación: [Completar]
"""

import pandas as pd

def explore_dataset(csv_path):
    """
    Función de exploración rápida de un dataset CSV.

    Args:
        csv_path (str): Ruta al archivo CSV.
    """
    try:
        df = pd.read_csv(csv_path)
    except FileNotFoundError:
        print(f"❌ Archivo no encontrado: {csv_path}")
        input("Presiona Enter para salir...")
        return

    print("✅ Datos cargados correctamente.\n")
    print(df.head())

    print("\n🔎 Recorrido de velas:\n")
    for index, row in df.iterrows():
        print(f"{row['timestamp']} | Open: {row['open']} | High: {row['high']} | Low: {row['low']} | Close: {row['close']}")

def run_backtest():
    """
    Función principal del backtest. Aquí se puede configurar
    qué tipo de backtest ejecutar.
    """
    print("🚀 Ejecutando backtest...\n")

    csv_path = "../data/ethusdt_1h_sample.csv"

    # Exploración previa del dataset
    explore_dataset(csv_path)

    # Aquí en el futuro podrás elegir qué tipo de backtest correr
    # Por ejemplo: backtest_candle_classification(), backtest_signal_generation(), etc.

    print("\n✅ Backtest finalizado.")

if __name__ == "__main__":
    run_backtest()
