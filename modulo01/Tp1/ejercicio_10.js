let meses = ["enero", "febrero", "marzo", "abril", "mayo", "junio", "julio", "agosto", "septiembre", "octubre", "noviembre", "diciembre"]

let num = prompt("ingrese un valor entre 1 y 12");
3
if (parseInt(num) >= 1 && parseInt(num) <= 12) {
    document.write("El mes correspondiente es: " + meses[num -1]);
} else {
    num = prompt("El número asignado no es válido")
}