min=1
max=100
function random(min, max) {
    return Math.floor((Math.random() * (max - min + 1)) + min);
}
document.write(random(min, max))