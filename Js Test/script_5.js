const books = [
  { title: 'Gatsby le magnifique', id: 133712, rented: 39 },
  { title: 'A la recherche du temps,perdu', id: 237634, rented: 28 },
  { title: 'Orgueil & Préjugés', id: 873495, rented: 67 },
  { title: 'Les frères Karamazov', id: 450911, rented: 55 },
  { title: 'Dans les forêts de Sibérie', id: 8376365, rented: 15 },
  { title: 'Pourquoi j\'ai mangé mon père', id: 450911, rented: 45 },
  { title: 'Et on tuera tous les affreux', id: 67565, rented: 36 },
  { title: 'Le meilleur des mondes', id: 88847, rented: 58 },
  { title: 'La disparition', id: 364445, rented: 33 },
  { title: 'La lune seule le sait', id: 63541, rented: 43 },
  { title: 'Voyage au centre de la Terre', id: 4656388, rented: 38 },
  { title: 'Guerre et Paix', id: 748147, rented: 19 }
];
// 1
let booksread = true;
books.forEach(book => {
    if (book.rented === 0){
        booksread = false;
    }
});

if (booksread == true) {
  console.log("Les livres ont tous été empruntés au moins une fois.");
} else {
  console.log("Ce livre n'a pas encore été emprunté.");
}
// 2
console.log(Math.max.apply(Math, books.map(function(book) { return book.rented; })))

// 3
console.log(Math.min.apply(Math, books.map(function(o) { return o.rented; })))

// 4 
books.forEach(book =>{
  if(book.id === 873495){
      console.log(`Le livre avec l'ID 873495 se nomme : "${book.title}"`);
  }
});

// 5

books.forEach(book =>{
  if(book.id === 133712){
      books.splice(book,1);
      console.log(`Le livre ${book.title}a ete supprimé`);
      console.log(books);
  }
});

// 6
console.log(books.sort((a, b) => a.title.localeCompare(b.title)))
console.log(books)
