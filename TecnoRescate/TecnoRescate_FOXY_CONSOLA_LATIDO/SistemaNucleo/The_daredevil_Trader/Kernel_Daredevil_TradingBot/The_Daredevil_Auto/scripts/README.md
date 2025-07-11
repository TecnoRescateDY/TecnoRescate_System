# 🧰 Carpeta: /scripts/ - Scripts Principales

## 📌 Descripción:

Aquí se almacenan **todos los scripts Python que ejecutan funciones principales del sistema**, como generación de señales, backtests o procesamiento de datos.

---

## ✅ Ejemplos actuales:

- `backtest.py` → Script principal para ejecutar backtests.
- `backtest_template.py` → Plantilla base para crear nuevos backtests.

---

## 🦊 Buenas prácticas:

- Mantener un archivo `.py` por cada función principal.
- Si un script crece demasiado, dividirlo en módulos dentro de `/utils/` o `/risk_management/`.
- Mantener siempre un bloque `if __name__ == "__main__":` para ejecución directa.

---

## ✅ Estado actual:

**Contiene:**  
✔️ Scripts de backtest iniciales.

---
