# 🗃️ README_ADMINISTRACION.md

### 📁 Carpeta: `/TecnoRescate/Administracion/`

Este módulo reúne todas las herramientas administrativas del sistema **TecnoRescate DIY**, funcionando como panel interno de control. Está pensado para el uso personal del desarrollador o de quien gestione el sistema (Adry / FOXY).

---

## 🧾 Submódulos clave

| Módulo                | Descripción                                             | Archivo / Carpeta                |
|-----------------------|---------------------------------------------------------|----------------------------------|
| 📆 Agenda Interna     | Organización diaria y planificación                     | `agenda_admin.html`              |
| 💰 Módulo Financiero  | Control de caja diaria, ingresos y egresos              | `/ModuloFinanciero/`             |
| 🧠 Mapa del Sistema    | Acceso directo al README_MAESTRO (mapa completo)        | `/SistemaNucleo/README_MAESTRO*` |
| 🗃️ Registro de Clientes | Lista y estado de proyectos o bots por cliente         | `clientes_admin.md`              |
| 📥 Descargas / Backups | Archivos importantes, respaldos del sistema             | `/Administracion/Backups/`       |
| ✅ Tareas y checklist  | Sistema de control de pendientes interno                | `checklist_admin.md`             |

---

## 🧩 Enlaces sugeridos desde el panel

- [📘 Mapa General del Sistema](../SistemaNucleo/README_MAESTRO_TecnoRescate.md)
- [📊 Caja Diaria (Finanzas)](../ModuloFinanciero/caja_diaria.html)
- [📋 Ver Lista de Bots Activos](../BotsActivos/)
- [🧪 Entrar al Laboratorio](../Laboratorio/)
- [🧰 Panel de Hardware y Repuestos](../Repuestos/)

---

## 🧠 Sugerencias de uso

- Usar esta carpeta como **Panel Interno Personal**, no accesible a clientes.
- Pegar el acceso desde el **índice principal o consola retro**, como:
```html
<button onclick="window.open('Administracion/README_ADMINISTRACION.md')">
📁 Administración Interna
</button>
