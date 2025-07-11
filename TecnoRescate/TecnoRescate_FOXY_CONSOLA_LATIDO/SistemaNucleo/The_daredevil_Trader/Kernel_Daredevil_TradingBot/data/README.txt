# 📂 Carpeta: /data/

## 📌 Descripción:

Espacio dedicado al almacenamiento de **datasets históricos, archivos CSV, JSON o cualquier otra fuente de datos** usada por el sistema Daredevil TradingBot.

---

## ✅ Tipos de archivos esperados:

- **Históricos de precios:** CSV o JSON con OHLCV.
- **Datos de volumen, indicadores previos o sentiment analysis.**
- **Archivos temporales generados por el sistema.**

---

## 🛠️ Buenas prácticas:

- Organizar los datasets por símbolo o temporalidad.
- Mantener una carpeta de respaldo si se usan datos en pruebas destructivas.
- Evitar sobrescribir datasets sin respaldo.

---

## 🦊 Ejemplo de estructura interna futura:

- `/data/BTCUSDT/`
- `/data/ETHUSDT/`
- `/data/multiframe/`

---
