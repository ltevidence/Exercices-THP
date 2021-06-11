class StaticPagesController < ApplicationController
  def home
  end
  def méthode
    puts "Salut, je suis dans le serveur"
    puts "Ceci est mon super params : #{params}"
    puts "Trop bien ! Et ceci est ce que l'utilisateur a passé dans tel champ : #{params["tel_champ"]}"
    puts "De la bombe, et donc ça, ce doit être ce que l'utilisateur a dans un autre champ : #{params["un_autre_champ"]}"
    puts "Ça déchire sa mémé, bon allez je m'en vais du serveur, ciao les BGs !"
  end
end
