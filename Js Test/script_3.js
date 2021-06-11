let chosenNum = prompt("Combien d'étages aura ta pyramide ?");
let row = "#"
let space = " "
for (let i = 1; i <= chosenNum; i++) {
	rows = space.repeat(chosenNum - i) + row.repeat(i)
	console.log(rows)
}
