let num = prompt("Ingrese un numero para obtener su factorial")
let factorial = 1 

for (let i = 1; i <= num; i++) {
    factorial = factorial * i;
}

document.write(factorial)
