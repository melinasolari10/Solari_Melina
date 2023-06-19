const valores = [true, false, 2, "hola", "mundo", 3, "char"];

function ordenarVector(vector){
    let valoresScript = [];

    for (let i = 0; i < valores.length; i++) {
        if (typeof valores[i] === "string") {
            valoresScript.push(valores[i]);
        }
    }

    valoresScript.sort(function(a, b) {
        if (a === b) {
            return 0;
        }
        if (a < b) {
            return -1;
        }
        return 1;
    });
    return valoresScript
}

const menorAMayor = ordenarVector(valores);
document.write("Elementos ordenados de menor a mayor cantidad de letras:")
document.write("</br>")
document.write(menorAMayor);