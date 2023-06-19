let num;
num = prompt("Introduce un número para saber si es par o impar ", "...");
function esPar(num) {
    if  (num % 2 == 0){
    return "El número es par";
    }
    else {
    return "El número es impar"; 
    }
    }
document.write(esPar(num))
