let today = new Date();
let hour = today.getHours();

var g1 = 'karangaina';
var g2 = 'ingabong';
var g3 = 'tawanou';
var g4 = 'bwakantaai';
var g5 = 'tairiki';
var g6 = 'nukanibong';
// var g6 = 'こんばんは ';
document.getElementById('greetings').innerText = 'mauri n\n'
if (hour > 0 && hour < 5) {
    document.getElementById('greetings').innerText += g1;
} else if (hour >= 6 && hour < 12) {
    document.getElementById('greetings').innerText += g2;
} else if (hour == 12) {
    document.getElementById('greetings').innerText += g3;
} else if (hour > 12 && hour < 18) {
    document.getElementById('greetings').innerText += g4;
} else if (hour >= 18 && hour <= 23) {
    document.getElementById('greetings').innerText += g5;
} else if (hour == 0) {
    document.getElementById('greetings').innerText += g6;
} else {
    document.getElementById('greetings').innerText += g1;
}