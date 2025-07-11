import pandas as pd

# Ruta al CSV (dejalo en la carpeta /data)
csv_path = "../data/ethusdt_1h_sample.csv"

# Cargar datos
try:
    df = pd.read_csv(csv_path)
except FileNotFoundError:
    print(f"❌ Archivo no encontrado en: {csv_path}")
    input("Presiona Enter para salir...")
    exit()

# Mostrar info básica
print("✅ Datos cargados correctamente.")
print(df.head())

# Recorrer cada vela
print("\n🔎 Recorrido de velas:\n")
for index, row in df.iterrows():
    print(f"{row['timestamp']} | Open: {row['open']} | High: {row['high']} | Low: {row['low']} | Close: {row['close']}")

input("\nPresiona Enter para salir...")
