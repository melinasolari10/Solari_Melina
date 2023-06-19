let dato, resultado;
//se declaran las variables

val1 = window.prompt("Introduce tu nombre", "...");
//muestra una ventana que solicita y permite introducir el nombre
//almacena el dato introducido en la variable 'val1'

val2 = window.prompt("Introduce tu apellido", "...");
//muestra una ventana que solicita y permite introducir el apellido
//almacena el dato introducido en la variable 'val2'

resultado = `Concatenado tu nombre y apellido es: ${val1} ${val2} ` ;
//la variable 'resultado' almacena el mensaje "concatenado tu nombre y apellido es:" 
//lee los datos de las variables 'val1' y 'val2'

document.write(resultado);
//la función escribe en pantalla el mensaje guardado en la variable 'resultado'