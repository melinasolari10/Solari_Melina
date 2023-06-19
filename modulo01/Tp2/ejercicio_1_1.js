var valores = [true, false, 2, "hola", "mundo", 3, "char"];
let longitud =  0;
for (let letras of valores){
    tipo = typeof (letras);
    if(tipo == "numero"){
        if(letras.length > longitud){
            mayor = letras
            longitud = letras.length
        }
    }
}
console.log("El mayor es:"+ mayor);

var v2=valores.filter(function(elementos){
    elementos === "numero";
});
//Hola profe, no pude con el ejercicio, el ejercicio pudo conmigo :( jajaj
//Igual dejo acá lo que armé más o menos con lo de github así me marca los errores y cómo podría haber resuelto