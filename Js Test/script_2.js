function factorial(n) {
  if ((n === 0) || (n === 1))
    return 1;
  else
    return (n * factorial(n - 1));
}
number = prompt("Choisi un nombre :");
console.log(`Le resultat est ${factorial(number)}`);