# 🦁 The_Daredevil_Auto

Proyecto personal de automatización de estrategias de trading basado en la metodología interpretativa de **The_Daredevil**.

---

## 🎯 Objetivo del Proyecto

Desarrollar, probar y automatizar un sistema de trading basado en:

- Análisis multiframe: **1D / 4H / 1H / 15M**
- Confirmación por volumen y zonas de negociación (POP, acumulación institucional, etc)
- Gestión dinámica del Stop Loss
- Distribución de capital por **carteras de riesgo**
- Filosofía de **"La Estación del Tren"**:  
  **"Esperar al precio... no correr detrás de él"**

---

## 💰 Distribución de Capital Inicial

- **Capital Total:** $10 USD
- **Capital Operativo (80%):** $8 USD
- **Fondo de Reserva (20%):** $2 USD (No se toca)

### 📈 Carteras Definidas:

| Cartera | Mercado | Timeframe Entrada | Proyección | % del Operativo | Capital Inicial |
|--------|--------|----------------|------------|----------------|----------------|
| **Alto Riesgo - Futuros** | Futuros | 15m | 1H | 20% | $1.6 |
| **Medio Riesgo - Spot** | Spot | 1H | 4H | 20% | $1.6 |
| **Bajo Riesgo - Spot** | Spot | 4H | Diario | 60% | $4.8 |

---

### 🔁 Redistribución de Ganancias:

- Las **ganancias obtenidas en carteras de mayor riesgo migran hacia carteras de menor riesgo**.
- Distribución basada en un **35% dinámico ajustable por F-Óptima**.
- Filosofía:  
  👉 **Cuanto más gane el sistema, más seguro se vuelve el capital.**

---

## 🛠️ Fases del Proyecto

### ✅ Fase 1: Documentación y creación de estructura base
- Carpeta estructurada
- Archivos `.bat` para automatización local
- Repositorio controlado vía GitHub
- Integración con VS Code

### ✅ Fase 2: Automatización del flujo operativo
- Scripts de backtest inicial
- Simulaciones de entrada y salida
- Registro automático de operaciones

### 🚧 Fase 3: Optimización de la estrategia
- Ajuste de parámetros
- Incorporación de la **F-Óptima / Kelly** para control de riesgo
- Definición de ventanas operativas por timeframe y cartera

### 🚧 Fase 4: Escalado a temporalidades menores
- Análisis en **15M / 5M / 1M**
- Adaptación de targets y gestión del riesgo

### 🚧 Fase 5: Implementación de bot automático
- Detección de señales
- Ejecución semi o totalmente automática
- Monitoreo y gestión de riesgos en tiempo real

---

## 💾 Entorno de Desarrollo

- **Editor:** Visual Studio Code
- **Control de versiones:** Git + GitHub
- **Automatización local:** Archivos `.bat`
- **Entorno remoto (opcional):** Replit

---

## 📂 Estructura de Carpetas

The_Daredevil_Auto/
├── scripts/ # Scripts Python
├── data/ # Datos históricos o exportados
├── backtests/ # Resultados de pruebas
├── utils/ # Funciones auxiliares
├── risk_management/ # Módulos de gestión de capital (F-Óptima, Kelly)
├── setup.bat # Lanzador de VSCode
├── run_backtest.bat # Ejecuta simulaciones
└── README.md # Este documento

yaml
Copiar
Editar

---

## 🧙‍♂️ Nota del Autor

Este proyecto no busca perseguir el mercado...  
**Busca entenderlo, respetarlo… y esperar el tren en la estación correcta.**  
**"No somos cazadores… somos observadores pacientes."**

---

### 🚦 Estado Actual:  
✅ **Fase 1: Finalizando**  
🚧 **Entrando en Fase 2: Automatización inicial de Backtests y Money Management**