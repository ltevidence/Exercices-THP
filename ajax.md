# AJAX, Une nouvelle approche aux applications web.

S’il y a bien une chose qu’on peut considérer comme « glamour » au sujet des design d’interaction actuel c’est créé des applications web. Après tout, quand est-ce que vous avez entendu pour la dernière fois quelqu’un vanter les mérites d’un design d’interaction fait pour un produit autre que numérique ? (Oui, d’accord, en dehors de l’iPod.)
Tous les projets innovants et tendances sont en ligne.

En dehors de ça, les designers d’interaction web se sentent forcément envieux de leurs collègues qui réalisent des application de bureau. Les applications de bureau ont une profondeur et une approche responsive qui semble complètement inaccessible au Web. 
Cette simplicité qui a permis à internet de se démocratiser très rapidement a aussi créer un fossé entre les expériences proposées aux utilisateurs en ligne et sur un logiciel. 

Mais ce fossé se résorbe. Jetez un coup d’oeil à Google Suggest et remarquez la rapidité a laquelle les termes suggérés apparaissent à l’écran et se mettent à jour presque instantanément quand vous commencez à taper. Ensuite, regardez Google Maps, vous pouvez zoomer, cliquer et tirer sur la carte du monde pour la faire défiler. Tout se fait de manière presque instantané, sans devoir attendre que la page ne continue de charger.

Google Suggest et Google Maps sont deux exemples de cette nouvelle approche que nous appelons, ici à Adaptive Path, AJAX.
Ce nom est un acronyme pour « Asynchronous JavaScript + XML » et représente les fondements de nouvelles possibilités sur Internet.

## 1. Definir AJAX

Ajax n’est pas une technologie. 
Il s’agit de plusieurs technologies, chacune progressants de son coté et qui se développent ensemble pour donner lieu à de nouvelles possibilités très puissantes. 
Ajax incorpore : 

* Du XHTML et CSS comme standard de la présentation.
* De l’affichage et des interactions dynamiques avec le DOM(Document Object Model)
* De l’échange et de la manipulation de données avec le XML XSLT.
* De la récupération de données asynchrones avec XMLHttpRequest
* Et enfin du JavaScript pour lier le tout.

Le schema classique des applications web fonctionne ainsi : 
La plupart des actions de l’utilisateur sur l’interface lance une requête HTTP vers le serveur web. Le serveur traite les informations, récupère des données, fait des calcules et interagit avec différents systèmes de réseau, après ce traitement il renvoie à l’utilisateur une page HTML.
C’est un modèle qui était adapté au premier usage du web c’est a dire un média traitant de l’hypertexte.
Mais les aficionados de « The Elements of User Experience » le savent bien, ce qui fait que le Web est bon pour l’hypertexte n’est pas forcément bon pour une application logicielle.

Fig 1. Le modèle traditionnel d’application web (à gauche) comparé au modèle Ajax (à droite).

Cette approche fait sens d’un point de vue technique, mais n’est pas forcément évidente en terme d’expérience utilisateur. Pendant que le serveur travaille de son côté, que fait le client ? 
Eh bien oui, il attend. Et à chaque étape, l’utilisateur doit attendre toujours un peu plus. 

Evidemment, si on concevait Internet à nouveau du point de vue applicatif, on ne ferait pas attendre l’utilisateur aussi longtemps. 
Une fois que l’interface est chargée, pourquoi les interactions utilisateurs devrait s’arrêter à chaque fois que l’application lance une requête vers le serveur ?

Pourquoi l’utilisateur devrait se rendre compte des interactions entre l’application et le serveur ?

## 2. Qu’est-ce qui est différent avec Ajax. ?

Une application Ajax élimine cette nature « marche/arrêt/marche/arrêt » dans les interactions sur Internet en ajoutant un intermédiaire, l’Ajax engine, entre l’utilisateur et le serveur. 
On pourrait croire qu’ajouter une couche sur l’application la rendrait moins responsive mais c’est l’opposée. 
Au lieu de charger la page web au debut de la session, le navigateur charge un Ajax engine, écrit en JavaScript et caché aux yeux de l’utilisateur. Ce moteur permet l’affichage de l’interface visuelle pour l’utilisateur mais aussi des requêtes et de la communications avec le serveur à la demande de l’utilisateur. L’Ajax engine permet à l’utilisateur de pouvoir mettre en place des interactions avec l’applications indépendamment des interactions avec le serveur. Ainsi, l’utilisateur ne se retrouve jamais face à une page de chargement en attendant que le serveur ne réagisse. 

Fig 2. Le schéma d’interaction synchrone d’une application web classique (en haut) comparé au schéma asynchrone d’une application Ajax (en bas).

Chaque action de l’utilisateur devrait normalement générer une requête HTTP mais prend ici la forme d’un appel JavaScript auprès de l’Ajax engine. Toutes réponses aux actions de l’utilisateur qui ne demanderait aucune nouvelle requête auprès du serveur, tel que la simple validation de données, éditer de la donnée en mémoire ou même de la simple navigation sur l’application, passe par le moteur Ajax. 
Si le moteur à besoin d faire une requête au serveur pour pouvoir répondre, s’il soumet de la donnée, effectue des calculs, charge des éléments d’interfaces additionnels ou récupère de nouvelles données, il le fait de manière asynchrone en utilisant généralement le XML sans faire attendre l’utilisateur en l’empéchant d’interagir avec l’application.

## 3. Qui utilise Ajax ?

Google investi énormément pour développer l’approche Ajax. Tous les produits phares que Google a introduit durant l’année passée, Orkut, Gmail et leurs dernières bêtas pour Google Groups, Google Suggest et Google Maps, toutes sont des application Ajax. 
Les autres suivent leurs pas, les fonctionnalités préférés des utilisateurs Flickr dépendent d’Ajax et le moteur de recherche A9 d’Amazon utilisent des techniques similaires aussi.

Ces projets démontrent pas juste de la solidité d’Ajax, mais aussi de sa praticité à être dans des applications réelles. Ce n’est pas une nouvelle technologie applicable uniquement en laboratoire. De plus, les applications Ajax peuvent être de toutes tailles, du plus minimaliste comme Google Suggest avec sa fonction unique au très complexe avec Google Maps. 

Chez Adaptive Path, nous avons réalisé nos propres projets avec Ajax ces derniers mois et nous nous rendons compte que vous n’avons qu’effleuré la surface de ce que peuvent proposer les applications Ajax en terme de complexité d’interactions et réactivité.
Ajax est un progrès très important pour les applications web et son importance ne va faire que se renforcer. 
De nombreux développeurs connaissent déjà les technologies utilisées par Ajax, ainsi, de nombreuses autres entreprises et organisations devraient bientôt suivre les pas de Google en tirant parti des possibilités et avantages d’Ajax. 

## 4. Pour aller de l’avant

L’un des plus grands challenges dans la création d’application Ajax n’est pas d’ordre technique. Le noyau des technologies utilisées par Ajax est mature, stable et reconnue. Non, le challenge viendra des concepteurs de ses applications, ils devront oublier ce qu’ils savent des limitations actuelles du web pour découvrir les éventails de possibilités proposée par Ajax. 

Ca promet d’être palpitant.  
