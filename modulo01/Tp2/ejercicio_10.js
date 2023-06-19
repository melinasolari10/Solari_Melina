function DiasXMes() {
    let mes = prompt("Cantidad de días que tiene el mes", 'Escriba el mes que desee...');
    mes = mes.toLowerCase();
    switch (mes) {
        case 'enero':
        case 'marzo':
        case 'mayo':
        case 'julio':
        case 'agosto':
        case 'octubre':
        case 'diciembre':
            document.write(`<h2>El mes ${mes} tiene 31 días.</h2>`)  
            break;
        case 'abril':
        case 'junio':
        case 'septiembre':
        case 'noviembre':
            document.write(`<h2>El mes ${mes} tiene 30 días.</h2>`)
            break;
        case 'febrero':
            document.write(`<h2>El mes ${mes} tiene 28 días y cada 4 años tiene 29 jaja.</h2>`);
            break;
        default:
            document.write(`<h2> Ingresar el nombre de un mes válido.</h2>`);
    }
}
DiasXMes();
console.log