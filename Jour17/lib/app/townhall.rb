require 'nokogiri'
require 'open-uri'

class Scrapper

def city_scrapper(doc)
  ville = Array.new
  doc.xpath('//td/p/a').each do |v|
      ville << v.text
  end
  return ville
end

def mail_scrapper(doc, ville)
  # Tableau contenant les urls des villes
  url = Array.new
  # Tableau contenant les adresses mail
  email = Array.new

  for i in 0..ville.length-1
  #for i in 0..10
    url = "http://annuaire-des-mairies.com/95/" + CGI.escape(ville[i].downcase).gsub('+', '-') + ".html"
    docindex2 = Nokogiri::HTML(URI.open(url))
    tmp = Array.new
    docindex2.xpath('//td[contains(text(),"@")]').each do |e|
      email << e.text
      tmp << e.text
      #print(ville[i] + " : " + e.text + "\n")
    end
    # Permet de détecter si des villes ont des adresses mail (taille du tableau égale à 0)
    if tmp.length != 1
      # On ajoute une valeur par défaut
      ("[-] Aucune adresse mail trouvée pour la ville de " + ville[i] + "\n")
      email << "defaut@mail.fr"
    end
    
  end
  hash_final = Hash[ville.zip(email)]
  return hash_final
end

def get_data(doc)
page = Nokogiri::HTML(URI.open(doc))
ville = city_scrapper(page)
hash_city_mail = mail_scrapper(page,ville)
return (hash_city_mail)



end
end

def perform 
  data = Scrapper.new()
  data.get_data("http://annuaire-des-mairies.com/val-d-oise.html")
end
