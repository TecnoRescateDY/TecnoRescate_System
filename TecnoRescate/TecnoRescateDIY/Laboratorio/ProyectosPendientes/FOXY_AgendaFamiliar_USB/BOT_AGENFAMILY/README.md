# 🗓️ FOXY_AgendaFamiliar_USB

Sistema modular experimental diseñado para convertir un **pendrive común** en una **agenda familiar inteligente**, lista para ejecutarse en cualquier PC o router con capacidad de lectura USB.

---

## 🎯 Objetivo

Automatizar recordatorios, alertas, y sincronización de eventos domésticos o personales sin depender de conexión constante a internet.

Ideal para hogares, técnicos familiares, sistemas autónomos o usos educativos DIY.

---

## 📦 Componentes del sistema

- `BOT_AGENFAMILY.py` → Script principal en Python que ejecuta ciclos de verificación y alertas.
- `config.json` → Define alertas, intervalos y eventos clave.
- `AGENFAMILY.bat` → Prototipo inicial del instalador (revisar antes de ejecutar).
- `logs/` → Carpeta de registro automático diario.
- `estructura_deseada.md` → Descripción técnica de cómo debería funcionar el sistema.
- `panel.html` (opcional) → Panel local HTML de control y visualización.

---

## ⚠️ Estado actual

> 🧪 En desarrollo. Este proyecto fue rescatado desde un intento previo de instalación automática en un entorno sin control (pendrive raíz), lo que provocó desorden.

Se encuentra actualmente en proceso de **modularización dentro del ecosistema TecnoRescateDIY**.

---

## 🚧 Pendiente

- Revisión completa del archivo `AGENFAMILY.bat` para evitar sobrescrituras.
- Aislamiento del entorno de ejecución.
- Integración opcional con Telegram para alertas remotas.
- Conexión con otros módulos FOXY (panel general, backup, estado).

---

## 🧠 Modo de uso (versión actual)

1. Editar el archivo `config.json` con alertas personalizadas.
2. Ejecutar el script en terminal:
   ```bash
   python BOT_AGENFAMILY.py
