#!/bin/bash

# Função para animação de abertura
animate_opening() {
    clear
    echo -e "\n\n\n\n\n\n\n\n"

    # Exibindo a animação com o codinome em outra cor
    echo -e "\033[0;33m.__   .__                   \033[0m"
    echo -e "\033[0;33m|  |  |__|  ____    ____  _______ \033[0m"
    echo -e "\033[0;33m|  |  |  |_/ ___\\  /  _ \\ \\_  __ \\\033[0m"
    echo -e "\033[0;33m|  |__|  |\\  \\___ (  <_> ) |  | \/\033[0m"
    echo -e "\033[0;33m|____/|__| \\___  > \\____/  |__|   \033[0m"
    echo -e "\033[0;33m               \\/                   \033[0m"

    # Adicionando o codinome em uma cor diferente (branco)
    echo -e "\033[1;37mCodinome: MangoBrew\033[0m"

    sleep 5
    clear
}

# Executa a animação de abertura
animate_opening

# Restante do script...

# Função para exibir o tutorial
show_help() {
    clear
    cat <<EOF
========================
Tutorial de Uso do licor(updater)
========================

Este script oferece opções para atualizar pacotes no Arch Linux usando o licor(updater).

1. Atualizar todos os pacotes:
   - Esta opção atualiza todos os pacotes do sistema, incluindo os instalados pelo yay e Flatpak.
   - Nota: Certifique-se de ter o yay e o Flatpak instalados para atualizar todos os pacotes possíveis.

2. Atualizar apenas os pacotes do sistema:
   - Atualiza apenas os pacotes do sistema, ignorando os instalados pelo usuário.

3. Atualizar apenas pacotes do usuário:
   - Atualiza apenas os pacotes instalados pelo usuário.

4. Desligar:
   - Desliga o sistema.

5. Reiniciar:
   - Reinicia o sistema.

6. Ajuda:
   - Exibe este tutorial.

7. Sair:
   - Sai do script.
EOF
}

# Função para atualizar todos os pacotes
update_all() {
    echo "Atualizando todos os pacotes..."
    yay -Syu
    flatpak update
    clear
    echo "Atualização concluída com sucesso!"
    sleep 2
}

# Função para atualizar apenas os pacotes do sistema
update_system() {
    echo "Atualizando apenas os pacotes do sistema..."
    yay -Syu
    flatpak update
    clear
    echo "Atualização concluída com sucesso!"
    sleep 2
}

# Função para atualizar apenas pacotes do usuário
update_user() {
    echo "Atualizando apenas pacotes do usuário..."
    yay -Syu
    flatpak update
    clear
    echo "Atualização concluída com sucesso!"
    sleep 2
}

# Loop para exibir o menu até que uma opção válida seja escolhida
while true; do
    # Menu de opções
    echo "Escolha uma opção para licor(updater):"
    echo "1. Atualizar todos os pacotes"
    echo "2. Atualizar apenas os pacotes do sistema"
    echo "3. Atualizar apenas pacotes do usuário"
    echo "4. Desligar"
    echo "5. Reiniciar"
    echo "6. Ajuda"
    echo "7. Sair"

    read -p "Digite o número da opção desejada: " choice

    # Executa a opção escolhida
    case $choice in
        1) update_all ;;
        2) update_system ;;
        3) update_user ;;
        4) poweroff ;;
        5) reboot ;;
        6) show_help ;;
        7) echo "Saindo..."; exit 0 ;;
        *) echo "Opção inválida. Tente novamente." ;;
    esac
done
