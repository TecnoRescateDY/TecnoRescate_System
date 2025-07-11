import pandas as pd

def calcular_estadisticas(path_csv):
    df = pd.read_csv(path_csv)
    
    wins = df['Ganancia'].dropna()
    losses = df['Pérdida'].dropna()

    total_trades = len(wins) + len(losses)
    win_rate = len(wins) / total_trades if total_trades > 0 else 0
    loss_rate = len(losses) / total_trades if total_trades > 0 else 0

    avg_win = wins.mean() if not wins.empty else 0
    avg_loss = losses.mean() if not losses.empty else 0

    payoff = abs(avg_win / avg_loss) if avg_loss != 0 else 0
    expectancy = (win_rate * avg_win) + (loss_rate * avg_loss)

    # f-Kelly (simplificada)
    kelly = win_rate - (loss_rate / payoff) if payoff != 0 else 0

    # f-Óptima (versión simple, igual a Kelly pero limitando de 0 a 1)
    f_optima = max(0, min(1, kelly))

    resultado = {
        "Total Trades": total_trades,
        "Win Rate": round(win_rate * 100, 2),
        "Payoff": round(payoff, 2),
        "Expectancy": round(expectancy, 2),
        "f-Kelly": round(kelly, 2),
        "f-Optima": round(f_optima, 2)
    }

    print("===== Resultados F-Óptima Calculator =====")
    for k, v in resultado.items():
        print(f"{k}: {v}")

    return resultado

# Ejemplo de uso:
# calcular_estadisticas("sample_trades.csv")
