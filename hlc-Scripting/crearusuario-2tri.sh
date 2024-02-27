#!/bin/bash

# Array de nombres de usuario
usernames=("javi6")

# Función para generar una contraseña aleatoria con pwgen
#generate_password() {
#    password=$(pwgen 8 1)
#    echo "$password"
#}

# Recorrer el array de nombres de usuario
for username in "${usernames[@]}"; do
    # Verificar si el usuario ya existe
    if id "$username" &>/dev/null; then
        echo "El usuario $username ya existe."
    else
        sudo useradd -m -s /bin/bash "$username" # Crear usuario
        password=$(openssl rand -base64 4) # Generar una contraseña aleatoria
        echo "$username:$password" | sudo chpasswd # Asignar la contraseña al usuario
        echo "El usuario $username ha sido creado con la contraseña: $password"
    fi
done
