; Este script AutoHotkey alterna entre maximizar e minimizar abas do Google Chrome em um ciclo de 15 segundos.
; This AutoHotkey script toggles between maximizing and minimizing Google Chrome tabs in a 15-second cycle.

#Persistent ; Mantém o script em execução continuamente / Keeps the script running continuously
SetTitleMatchMode, 2 ; Define o modo de correspondência de título para correspondência parcial / Sets the title matching mode for partial matching
SetTimer, AlternarAbas, 15000 ; Configura um temporizador para executar a função a cada 15 segundos / Sets a timer to run the function every 15 seconds

AlternarAbas: ; Inicia a função AlternarAbas / Starts the AlternarAbas function
IfWinActive, - Google Chrome ; Verifica se a primeira aba do Chrome está ativa / Checks if the first Chrome tab is active
{
    WinMinimize ; Se estiver ativa, minimiza a janela / If it's active, minimizes the window
}
else
{
    IfWinActive, - Google Chrome ; Verifica se a segunda aba do Chrome está ativa / Checks if the second Chrome tab is active
    {
        WinMinimize ; Se estiver ativa, minimiza a janela / If it's active, minimizes the window
    }
    else
    {
        IfWinExist, - Google Chrome ; Se nenhuma aba estiver ativa, verifica se uma janela do Chrome existe / If no tab is active, checks if a Chrome window exists
        {
            WinActivate ; Ativa a janela do Chrome encontrada / Activates the found Chrome window
            Send, !{Space}x ; Envia "Alt + Espaço" seguido de "x" para maximizar a janela / Sends "Alt + Space" followed by "x" to maximize the window
        }
    }
}
Return ; Encerra a função AlternarAbas / Ends the AlternarAbas function
