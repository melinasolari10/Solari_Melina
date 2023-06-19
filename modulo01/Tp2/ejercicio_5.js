function info(cadena) {
var resultado = "La cadena \""+cadena+"\" ";
  if(cadena == cadena.toUpperCase()) {
    resultado += "Está formada sólo por mayúsculas";
  }
  else if(cadena == cadena.toLowerCase()) {
    resultado += "Está formada sólo por minúsculas";
  }
  else {
    resultado += "Está formada por mayúsculas y minúsculas";
  }
 return resultado;
}

alert(info("DNI = DOCUMENTO NACIONAL DE INDENTIDAD"));
alert(info("mi gatito pisó la compu y desconfiguró el visualcode"))
alert(info("El cambio de clima en Posadas está bravo..."));