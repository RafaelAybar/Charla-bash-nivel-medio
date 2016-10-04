#!/bin/bash
while true
do
echo "Bienvenido al instalador de sistemas operativos en pendrive"
echo "Indica dónde está la iso a intalar"
echo "Si quires salir pulsa la tecla p "
read ruta
	if [[ $ruta = "p"  ]]; then
            exit
	elif [[ ( -n $ruta ) &&  ( -f  $ruta ) ]]; then
		#Aquí comprobamos que la variable ruta no esté vacía y sea la ruta exacta donde cargar la imagen del sistema operativo a instalar.
			echo "Ahora introduce la ruta donde está el pendrive"
			read rutapen
			if [[ ( -n $rutapen ) && ( -d $rutapen )]]; then
                    true
                    exit
        			#	`dd if=$ruta of=$rutapen`
					#Aquí ejecutamos la instrucción que permite grabar las isos booteables
			else 
					echo "La ruta no es correcta"
			fi
     else
             echo "Oiga, introduzca la ruta"
     fi
done
