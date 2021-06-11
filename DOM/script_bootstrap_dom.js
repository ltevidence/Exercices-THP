
// 1
function changeTitles() {
  let title = document.querySelector("h1.jumbotron-heading");
  console.log(title.innerHTML="Ce que j'ai appris à THP");
  let subtitle = document.querySelector("p.lead");
  console.log(subtitle.innerHTML="THP est une formation qui, en 3 mois, à plein temps, vous apportera des connaissances actionnables pour vous permettre de voir plus loin. Chez nous, pas de professeurs, pas de locaux, mais un groupe de travail en présentiel. Après 11 semaines, les principaux langages et outils du web n'auront plus de secret pour vous !")
};
changeTitles()


// 2
function changeCallToActions() {
  let mainButton = document.querySelector("a.btn-primary"); 
  console.log(mainButton.innerHTML="OK Je veux tester !");
  let secondButton = document.querySelector("a.btn-secondary");
  console.log(secondButton.innerHTML="<a href='https://www.pole-emploi.fr/accueil/'>Non Merci</a>");

};
changeCallToActions()
// 3
function changeLogoName() {
  let logoName = document.querySelector("a.navbar-brand > strong");
  console.log(logoName.textContent="The THP Experience");
  console.log(logoName.style.fontSize="2em");
};
changeLogoName()
// 4
let imagesArray = ["https://img.icons8.com/color/480/000000/html-5.png", "https://img.icons8.com/color/480/000000/css3.png", "https://img.icons8.com/color/480/000000/javascript.png", "https://img.icons8.com/color/480/000000/ruby-programming-language.png", "https://img.icons8.com/color/480/000000/bootstrap.png", "https://img.icons8.com/color/480/000000/github.png", "http://jeudisdulibre.be/wp-content/uploads/2014/02/Ruby_on_Rails-logo.png", "https://avatars2.githubusercontent.com/u/25484553?s=200&v=4", "https://img.icons8.com/color/480/000000/heroku.png"];
function populateImages() {
  let images = document.getElementsByTagName("img");
  for(let i=0; i<images.length;i++){
  images[i].src=imagesArray[i];
  };
};
populateImages()
 // 5

function deleteLastCards() {
  console.log(document.querySelector("div.row"));
}

// 6
 
function changeCardsText() {
 let cards = document.getElementsByClassName("card-text")
 console.log(cards[0].innerHTML="L’HyperText Markup Language, généralement abrégé HTML, est le langage de balisage conçu pour représenter les pages web");
 console.log(cards[1].innerHTML="Les feuilles de style en cascade, généralement appelées CSS de l'anglais Cascading Style Sheets, forment un langage informatique qui décrit la présentation des documents HTML et XML");
 console.log(cards[2].innerHTML="JavaScript est un langage de programmation de scripts principalement employé dans les pages web interactives mais aussi pour les serveurs. C'est un langage orienté objet à prototype.");
}
changeCardsText()


// 7

function changeViewButtons() {
  let views = document.getElementsByClassName("btn-group");
  for(let i = 0; i < 6;i++) {
    views[i].getElementsByTagName("button")[0].classList.remove("btn-secondary-outline");
    views[i].getElementsByTagName("button")[0].classList.add("btn-success");
    views[i].getElementsByTagName("button")[0].classList.add("text-light");
  }
}
changeViewButtons()

// 8
