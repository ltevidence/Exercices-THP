require 'json'

artisteCool = {

  "Chanteurs": [
    "Ben Platt",
    "Nuski",
    "Patrick Bruel"
  ],
  "Acteurs": [
    "Meryl Streep",
    "Rami Malek",
  ],
  "Auteur": [
    "Neil Gaiman"
  ]
}

File.open("temp.json", "w") do |f|
  f.write(JSON.pretty_generate(artisteCool))
end