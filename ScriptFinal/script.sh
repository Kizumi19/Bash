#!/bin/bash

# Verificar que s'ha passat un nom com a paràmetre
# $1 representa el primer paràmetre passat a l'script
if [ -z "$1" ]; then
    echo "Has de passar el teu nom com a paràmetre."
    # Si no es passa cap paràmetre, l'script es tanca amb codi d'error 1
    exit 1
fi

# Assignar el primer paràmetre passat a la variable 'nom'
nom=$1

# Bucle infinit per mantenir el menú actiu fins que l'usuari decideixi sortir
while true; do
    # Mostrar missatge de benvinguda amb el nom passat com a paràmetre
    echo "Benvingut/da, $nom!"
    # Mostrar el menú d'opcions
    echo "Selecciona una opció:"
    echo "1. Suma"
    echo "2. Resta"
    echo "3. Factorial"
    echo "4. Sortir"
    # Llegir l'opció escollida per l'usuari
    read -p "Opció: " opcio

    # Començar el cas per gestionar les diferents opcions del menú
    case $opcio in
        1)
            # Opción 1: Suma
            # Demanar els dos nombres per realitzar la suma
            read -p "Introdueix el primer nombre: " num1
            read -p "Introdueix el segon nombre: " num2
            # Realitzar la suma i emmagatzemar el resultat a la variable 'suma'
            suma=$((num1 + num2))
            # Mostrar el resultat de la suma
            echo "La suma de $num1 i $num2 és: $suma"
            ;;
        2)
            # Opción 2: Resta
            # Demanar els dos nombres per realitzar la resta
            read -p "Introdueix el primer nombre: " num1
            read -p "Introdueix el segon nombre: " num2
            # Realitzar la resta i emmagatzemar el resultat a la variable 'resta'
            resta=$((num1 - num2))
            # Mostrar el resultat de la resta
            echo "La resta de $num1 i $num2 és: $resta"
            ;;
        3)
            # Opción 3: Factorial
            # Demanar un nombre per calcular el seu factorial
            read -p "Introdueix un nombre: " num
            # Inicialitzar la variable 'factorial' a 1
            factorial=1
            # Bucle per calcular el factorial del nombre introduït
            for (( i=1; i<=num; i++ )); do
                factorial=$((factorial * i))
            done
            # Mostrar el resultat del factorial
            echo "El factorial de $num és: $factorial"
            ;;
        4)
            # Opción 4: Sortir
            # Mostrar un missatge de comiat amb el nom passat com a paràmetre
            echo "Fins una altra, $nom!"
            # Sortir de l'script amb codi de sortida 0
            exit 0
            ;;
        *)
            # Si l'opció introduïda no és vàlida, mostrar un missatge d'error
            echo "Opció no vàlida. Intenta-ho de nou."
            ;;
    esac

    # Esperar que l'usuari premi una tecla per tornar al menú
    read -p "Prem una tecla per tornar al menú..."
done
