function invertirTexto(texto) {
    textoInvertido = "";
    for (i = texto.length - 1; i >= 0; i--) {
        textoInvertido += texto.charAt(i);
    }
    return textoInvertido;
}
texto = prompt("Ingrese un texto para mostrarlo invertido");
texto_invertido=invertirTexto(texto);
console.log(texto_invertido);
alert(texto_invertido)