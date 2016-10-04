#!/bin/bash
while true
do
echo "Bienvenido al instalador de sistemas operativos en pendrive"
echo "Indica dónde está la iso a intalar"
echo "Si quires salir pulsa la tecla p "
read ruta
        if [ $ruta = "p"  ]
                then
                        exit
        elif [[ -z "$ruta" ]
                then 
                         echo "Oiga, introduzca la ruta"
                 elif [ ( -n "$ruta" ) &&  ( -f "$ruta" ) ]]
                0        #Aquí comprobamos que la variable ruta no esté vacía y sea la ruta exacta donde cargar la imagen del sistema operativo a instalar.
                then
                        echo "Ahora introduce la ruta donde está el pendrive"
                                read rutapen 
                                         if [[ ( -n "$rutapen" ) && ( -d "$rutapen" ) ]]
                                                then
                                                        `dd if=$ruta of=$rutapen` 
                                                        #Aquí ejecutamos la instrucción que permite grabar las isos booteables
                                                else
                                                echo "La ruta no es correcta"
                                        fi      
        fi

done
