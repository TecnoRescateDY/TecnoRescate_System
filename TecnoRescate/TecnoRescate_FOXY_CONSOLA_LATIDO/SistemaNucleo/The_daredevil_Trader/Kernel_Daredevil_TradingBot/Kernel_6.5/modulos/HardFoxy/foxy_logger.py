"""
🦊 HardFoxy - Logger de Automatización

Descripción:
Módulo encargado de registrar logs, estados y resultados
de todas las tareas de automatización dentro del sistema.

Autor: The_Daredevil M.
Fecha de creación: [Completar]
"""

import datetime

def log_event(message):
    """
    Registra un evento en el log del sistema.

    Args:
        message (str): Mensaje a registrar.
    """
    timestamp = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    print(f"[{timestamp}] {message}")
    # En versiones futuras: Guardar en archivo .log
