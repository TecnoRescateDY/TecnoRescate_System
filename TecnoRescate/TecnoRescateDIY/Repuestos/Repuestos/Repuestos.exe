import pandas as pd

# Ruta del archivo Excel
file_path = "/mnt/data/Inventario_TecnoRescate_Hardware.xlsx"

# Intentar leer el archivo (aunque esté vacío inicialmente)
try:
    df = pd.read_excel(file_path)
    
    # Si hay contenido, generar resumen por tipo y estado
    if not df.empty:
        resumen_tipo = df["Tipo de dispositivo"].value_counts().to_frame(name="Cantidad").reset_index().rename(columns={"index": "Tipo de dispositivo"})
        resumen_estado = df["Estado"].value_counts().to_frame(name="Cantidad").reset_index().rename(columns={"index": "Estado"})
        resumen_tipo, resumen_estado
    else:
        "El inventario aún está vacío. Completalo con tus dispositivos para que Foxy lo lea 🦊📋"
except Exception as e:
    str(e)
