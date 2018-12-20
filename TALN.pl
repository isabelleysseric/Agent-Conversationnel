%Programme principal
go:-
   writeln("Ecrire votre phrase sans majuscule et sans ponctuation"),
   writeln("Sous la forme:  un chien est un mammifere"),
   analyseA,
   writeln("Sous la forme:  pegase est un mammifere"),
   analyseA,
   writeln("Sous la forme:  tout mammifere est un animal"),
   analyseB,
   writeln("Sous la forme:  est ce que un chien est un animal"),
   analyseC,
   writeln("Sous la forme:  est ce que pegase est un mammifere"),
   analyseC.


%Phrase de type:  un chien est un mammifere
%Phrase de type:  marsupilami est un mammifere
pA(ENONCE) --> gnA(OBJET), gv(_,AGENT), {ENONCE=..[AGENT,OBJET]}.

%Phrase de type:  tout mammifere est un mammifere
pB(ENONCE) --> gnB(OBJET), gv(ACTION,AGENT), {ENONCE=..[ACTION,AGENT,OBJET]}.

%Phrase de type:  est ce que un mammifere est un animal
%Phrase de type:  est ce que marsupilami est un mammifere
pC(ENONCE) --> gquestion, gnA(AGENT), gv(ACTION,OBJET), {ENONCE=..[ACTION,AGENT,OBJET]}.


%Regles pour constituer une phrase
gnA(OBJET) --> nom_propre(OBJET).
gnA(OBJET) --> article, nom_commun(OBJET).
gnB(OBJET) --> adverbe, nom_commun(OBJET).
gquestion --> [est,ce,que].
gv(ACTION,OBJET) --> verbe(ACTION), gnA(OBJET).


%Liste des mots reconnus
article --> [un].
adverbe --> [tout].
nom_propre(basilic) --> [basilic].
nom_propre(marsupilami) --> [marsupilami].
nom_propre(pegase) --> [pegase].
nom_commun(chien) --> [chien].
nom_commun(lezard) --> [lezard].
nom_commun(mammifere) --> [mammifere].
nom_commun(reptile) --> [reptile].
nom_commun(animal) --> [animal].
verbe(est) --> [est].



%Crée un element X(premier element)
%     de la categorie Y(2e element)
%Equivalent de Y(X).
%
analyseA:-
    readln(P),
    (   pA(A,P,[])
           -> assert(A),writeln("ok")
           ; writeln("Phrase non reconnue")
    ),nl.

%Fait un lien est() entre:
%     la sous-categorie Y(premier element)
%     et la catégorie Z(2e element)
%Equivalent de Z(X):-Y(X).
%
analyseB:-
    readln(P),
    (   pB(A,P,[])
          -> fonctionVarB(A)
          ; writeln("Phrase non reconnue")
    ),nl.

%Fonction pour associer des variables à des items
%Fait partie de analyseB
fonctionVarB(est(Y,X)):-
   concat(Y,'(X):-',V1),
   concat(V1,X,V2),
   concat(V2,'(X)',CommandeStr),
   term_to_atom(Commande, CommandeStr),
   assert(Commande),
   writeln("ok").


%Répond "oui" si:
%     l'element X(premier element)
%     est dans la categorie Y(2e element)
%Equivalent de ?- Y(X).
%
analyseC:-
    readln(P),
    (   pC(A,P,[])
          -> (questionX(A)
                  -> writeln("oui")
                  ; writeln("non")
             )
          ; writeln("Phrase non reconnue")
    ),nl.

%Pour faire le test
%true si X est une sorte de Y, false sinon
questionX(est(X,Y)):-
   concat(Y,'(',V1),
   concat(V1,X,V2),
   concat(V2,')',CommandeStr),
   term_to_atom(Commande, CommandeStr),
   call(Commande).
