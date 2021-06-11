const seq1 = "CCGUCGUUGCGCUACAGC";
const seq2 = "CCUCGCCGGUACUUCUCG";


function translateDna(sequence){
  let tmp = sequence.match(/.{1,3}/g);
  for(let i = 0; i < tmp.length ; i ++ ){
    tmp[i] = translateCodon(tmp[i]);
  }
  return tmp.join("-");
}
function translateCodon(codon){
  switch (codon){
  case "UCU": case "UCC": case "UCA": case "UCG": case "AGU": case "AGC" :
    return "Sérine";
  case "CCU": case "CCC": case "CCA": case "CCG" :
    return "Proline";
  case "UUA": case "UUG": case "CUU": case "CUC": case "CUA": case "CUG" :
    return "Leucine";
  case "UUU": case "UUC" :
    return "Phénylalanine";
  case "CGU": case "CGC": case "CGA": case "CGG": case "AGA": case "AGG" :
    return "Arginine";
  case "UAU": case "UAC" :
    return "Tyrosine";
  default: 
    console.log("Codon inconnu")
    break;
  }}

	//translating sequence 1 :
	let result = translateDna(seq1);
	console.log(`The traduction of ${seq1} is :`)
	console.log(result);

	//translating sequence 2 :
	result = translateDna(seq2);
	console.log(`The traduction of ${seq2} is :`)
	console.log(result);