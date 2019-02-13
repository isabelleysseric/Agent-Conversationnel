# Système à base de Connaissances
## Traitement Atomatique du Langage Naturel
<br>

## Questions - Reponses

<p><a href=""><img src="https://netcore.in/wp-content/themes/netcore/img/product/chatbot-header.jpg"alt="Chatbot, image de Netcore.in"></a><br>

### AUTEURS:
===============
<pBenoit Verret - 111 099 148</p>
<p>Elida Melo - 111 153 228</p>
<p>Isabelle Eysseric - 111 189 609</p>
<br>

# Système de contrôle de lumière
<br>

## Etape 1 : Spécification en FSP : Synchronisation de feux de circulation <br>
<p><a href="https://commons.wikimedia.org/wiki/File:Carrefour_16_mouvements.jpg#/media/File:Carrefour_16_mouvements.jpg"><img src="https://upload.wikimedia.org/wikipedia/commons/3/34/Carrefour_16_mouvements.jpg" alt="Carrefour_16_mouvements.jpg"></a><br>
  <br>
   <br>
### AUTEURS:<br>
===============
<p>Alex Lebrun</p>
<p>Walter BONETTI</p>
<p>Isabelle Eysseric</p>
<br>
 <br
Benoit Verret - 111 099 148
Elida Melo - 111 153 228
Isabelle Eysseric - 111 189 609

### ETAT DU PROJET:
===============
<p>Version initiale</p>
<br>


### DESCRIPTION:
===========
<p>Ce système expert utlise le traitement automatique du langage naturel pour comprendre une série de phrase en français et y répondre correctement.</p>


### MISE EN PLACE:
==============
<p>Télécharger le fichier <code>TALN_Equipe_8.pl</code>.   Ouvrez <code>Prolog</code>, choisissez file/edit, choisissez le fichier <code>TALN_Equipe_8.pl</code> et choisir dans les menus compile/compile_buffer. Retourner ensuite à la console.  Pour plus d'informations, lire le rapport ci-joint au format PDF.</p>
<br>


### UTILISATION:
============
<p>Le programme est muni de trois prédicats pour l’utilisateur:</p>
<ol>
<li>Le prédicat <code>go.</code> fait appel à trois autres prédicats: <code>analyseA.</code>, <code>analyseB.</code> et <code>analyseC.</code>. Chacun des trois prédicats appelés dans le prédicat <code>go.</code>, analyse une des trois formes données à la suite l’une de l’autre.</li>
<li>Les prédicats <code>analyseA.</code>, <code>analyseB.</code> et <code>analyseC.</code> analysent la phrase saisie et donne la réponse : <br>
<code>ok</code> pour <code>analyseA.</code> et <code>analyseB.</code>  <br>
<code>oui</code> ou <code>non</code> à la requête pour <code>analyseC.</code>. <br> </li>
<li>Le prédicat <code>readln().</code> ce prédicat prédéfini est utilisé pour saisir une phrase. 
Exemple:<br>
<code> ?- readln(P).</code> <br>
<code> |: pegase est un mammifere</code> <br>
<code> P= [pegase,est,un,mammifere]</code> <br></li>
</ol>
<p>Il est important de ne pas oublier le point à la fin des predicats pour qu'ils soient reconnus.</p>
<p>Pour plus d'informations, lire le rapport.</p>
<br>


### RESSOURCES, DOCUMENTATION:
==========================
<p>Pour plus d'informations sur les Traitement Automatique du Langage Naturel (TALN), visitez le <a href="https://fr.wikipedia.org/wiki/Traitement_automatique_du_langage_naturel"> site de Wikipedia</a>.</p>
<p>Rapport du système à base de connaissances avec TALN en annexe</p>
<br>


### MÉTHODE DE RAPPORT DE BUG:
=========================
<p>(À déterminer)</p>
<br>


### CONTRIBUTION:
=============
<p>(À déterminer)</p>
<br>


### Licence(s), copyright
=============
<p>(À déterminer)</p>
<br>
