# Quizz

## iveau facile
*1. Quel est le nombre total d'objets Album contenus dans la base (sans regarder les id bien sûr) ?*
Album.count
347
*2. Qui est l'auteur de la chanson "White Room" ?*
`white_room = Track.find_by(title:"White Room")
white_room.artist`
 => "Eric Clapton" 
*3. Quelle chanson dure exactement 188133 milliseconds ?*
`Track.find_by(duration:188133)`
"Perfect", album: "Jagged Little Pill", artist: "Alanis Morissette"
*4. Quel groupe a sorti l'album "Use Your Illusion II" ?*
`illusion = Album.find_by(title:"Use Your Illusion II")
illusion.artist`
 "Guns N Roses" 

## Niveau Moyen
**1. Combien y a t'il d'albums dont le titre contient "Great" ?**
`Album.where("title like ?","%Great%").count`
 13 
 **2. Supprime tous les albums dont le nom contient "music".**
`Album.where(« title like ? », »%music% »).count`
4
`Album.destroy(315,319,333,346)`
**3. Combien y a t'il d'albums écrits par AC/DC ?**
`Album.find_by(artist:"AC/DC")`
2
**4. Combien de chanson durent exactement 158589 millisecondes ?**
`Track.find_by(duration:158589)`
> nil 

## Niveau Difficile
*Pour ces questions, tu vas devoir effectuer des boucles dans la console Rails. C'est peu commun mais c'est faisable, tout comme dans IRB.*

**1. puts en console tous les titres de AC/DC.**

**2. puts en console tous les titres de l'album "Let There Be Rock".**

**3. Calcule le prix total de cet album ainsi que sa durée totale.**

**4. Calcule le coût de l'intégralité de la discographie de "Deep Purple".**

**5. Modifie (via une boucle) tous les titres de "Eric Clapton" afin qu'ils soient affichés avec "Britney Spears" en artist.**