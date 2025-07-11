# 🤖 README_FOXY_MODOS.md

### 📁 Carpeta: `/TecnoRescate/FOXY_Modos/`

Este módulo contiene los **modos operativos especiales** del asistente FOXY, adaptados a distintas funciones del sistema.  
Cada modo configura el entorno de trabajo con una lógica propia, visual o funcional, que puede activarse desde la consola HTML o scripts internos.

---

## 🧠 Modos disponibles

| Modo                       | Descripción                                                  | Carpeta                           |
|----------------------------|--------------------------------------------------------------|------------------------------------|
| `[MODO_APRENDIZAJE]`       | Guía paso a paso, con acompañamiento activo.                 | `/MODO_APRENDIZAJE/`              |
| `[FOXY_HTML_LOCAL]`        | Modo edición colaborativa HTML (VSCode + Foxy).              | `/MODO_ACTIVO_HTML_LOCAL/`        |

---

## 🧩 Activación sugerida desde consola retro

```html
<button onclick="window.open('FOXY_Modos/MODO_APRENDIZAJE/README.md')">📚 Modo Aprendizaje</button>
<button onclick="window.open('FOXY_Modos/MODO_ACTIVO_HTML_LOCAL/README.md')">💻 Modo HTML Local</button>
