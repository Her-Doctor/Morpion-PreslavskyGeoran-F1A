program Morpion;

uses crt;

//ALGO:Morpion
//But : voir intranet
//entree : les coordonnées de l'user son reportées dans le tableau qui fait office de plateau
//sortie : le jeu affiche le tableau , montre les erreurs du joueur et montre qui gagne si il y a un vainceur
{
	Var
		TabGame : tableau [1..7,1..7] de Car 
		i,j : Entier
		Win: booleen 
		JX,J0:Car
	
	procedure init; 
		DEBUT
			Win ->  faux
			i -> 0
			j -> 0
			JX -> 'X'
			J0 -> '0'

			TabGame[3,1] -> '|'
			TabGame[5,1] -> '|'

				TabGame[3,2] -> '|'
				TabGame[5,2] -> '|'
				TabGame[1,2] -> '-'
				TabGame[2,2] -> '-'
				TabGame[4,2] -> '-'
				TabGame[6,2] -> '-'
				TabGame[7,2] -> '-'

			TabGame[3,3] -> '|'
			TabGame[5,3] -> '|'

				TabGame[3,4] -> '|'
				TabGame[5,4] -> '|'
				TabGame[1,4] -> '-'
				TabGame[2,4] -> '-'
				TabGame[4,4] -> '-'
				TabGame[6,4]  -> '-'
				TabGame[7,4]  -> '-'

			TabGame[3,5] -> '|'
			TabGame[5,5] -> '|'

		FinProcedure

	procedure affichage  // afficher la tableau
		DEBUT
			Pour i De 1 a 5 faire
				Pour j De 1 a 5 faire
					Ecrire TabGame[j,i]
				FinPour
			FinPour

		FinProcedure

procedure Game ( Player:car ) //procedure ou l'on va demander ou placer les cases , les cocher , voir si elle ne sont pas deja prises,si elles sont prises , un message et on recommance le tour .
		Var
			choix:Entier
			possible:booleen
		Debut
			//instructions
			possible->vrai
			Repeter

				ECRIRE "Joueur "&Player&" , a toi de jouer !"
				ECRIRE "Quelle ligne veut tu ? la première (1) , la seconde (2) ou la 3e (3) ?"
				Lire (choix)
				si (choix = 1) alors // quand l'user choisi la ligne , il va choisir la colonne apres , pour les 3 lignes et les 3 colonnes

						Ecrire "Quelle Colonne veut tu ? la première (1) , la seconde (2) ou la 3e (3) ?"
						Lire (choix)
						si (choix = 1) alors
								si (TabGame[2,1] <> '0') OU (TabGame[2,1] <> 'X') alors

										TabGame[2,1] -> player 

								SINON SI (TabGame[2,1] = '0') OU (TabGame[2,1] = 'X') ALORS

										possible-> faux 
									finsi
								finsi
						Finsi

						si (choix = 2) alors
								si (TabGame[4,1] <> '0') OU (TabGame[4,1] <> 'X') alors

										TabGame[4,1]-> Player

								SINON SI (TabGame[4,1] = '0') OU (TabGame[4,1] = 'X') alors

										possible -> faux
									finsi
								finsi
						finsi

						si (choix = 3) alors
								si (TabGame[6,1] <> '0') Ou (TabGame[6,1] <> 'X') alors

										TabGame[6,1]-> Player

								SINON SI (TabGame[6,1] = '0') OU (TabGame[6,1] = 'X') alors

										possible -> faux
									finsi
								finsi
						finsi

		   		SINON SI(choix = 2) alors

						Ecrire "Quelle Colonne veut tu ? la première (1) , la seconde (2) ou la 3e (3) ?"
						Lire (choix)
						si (choix = 1) alors
								si (TabGame[2,3] <> '0') OU (TabGame[2,3] <> 'X') alors

										TabGame[2,3] -> player 

								SINON SI (TabGame[2,3] = '0') OU (TabGame[2,3] = 'X') ALORS

										possible-> faux 
									finsi
								finsi
						Finsi

						si (choix = 2) alors
								si (TabGame[4,3] <> '0') OU (TabGame[4,3] <> 'X') alors

										TabGame[4,3]-> Player

								SINON SI (TabGame[4,3] = '0') OU (TabGame[4,3] = 'X') alors

										possible -> faux
									finsi
								finsi
						finsi

						si (choix = 3) alors
								si (TabGame[6,5] <> '0') Ou (TabGame[6,5] <> 'X') alors

										TabGame[6,5]-> Player

								SINON SI (TabGame[6,5] = '0') OU (TabGame[6,5] = 'X') alors

										possible -> faux
									finsi
								finsi
						finsi

		   		SINON SI (choix = 3) alors
	
						Ecrire "Quelle Colonne veut tu ? la première (1) , la seconde (2) ou la 3e (3) ?"
						Lire (choix)
						si (choix = 1) alors
								si (TabGame[2,5] <> '0') OU (TabGame[2,5] <> 'X') alors

										TabGame[2,5] -> player 

								SINON SI (TabGame[2,5] = '0') OU (TabGame[2,5] = 'X') ALORS

										possible-> faux 
									finsi
								finsi
						Finsi

						si (choix = 2) alors
								si (TabGame[4,5] <> '0') OU (TabGame[4,5] <> 'X') alors

										TabGame[4,5]-> Player

								SINON SI (TabGame[4,5] = '0') OU (TabGame[4,5] = 'X') alors

										possible -> faux
									finsi
								finsi
						finsi

						si (choix = 3) alors
								si (TabGame[6,5] <> '0') Ou (TabGame[6,5] <> 'X') alors

										TabGame[6,1]-> Player

								SINON SI (TabGame[6,5] = '0') OU (TabGame[6,5] = 'X') alors

										possible -> faux
									finsi
								finsi
						finsi
				SINON SI (choix <> 1) OU (choix <> 2) OU (choix <> 3) alors

						possible -> faux
				Finsi

					si possible = faux alors	// message que la place est deja prise et qu il va falloir recommencer (pas le jeu)
							Ecrire "Case deja prise ,ou Choix pas correct, appuyez sur entrer pour recommencer."
			Jusqua possible = vrai 

		FinProcedure


Function Win_Lose(Player:Car) : booleen //va verifier les caes pour voir si le joueur X ou O a gagné
	Debut
		Win_Lose -> faux

				//verification des 3 lignes
				si (TabGame[2,1] = Player) ET (TabGame[4,1] = Player) ET (TabGame[6,1] = Player) OU (TabGame[2,3] = Player) ET (TabGame[4,3] = Player) ET (TabGame[6,3] = Player) OU (TabGame[2,5] = Player) ET (TabGame[4,5] = Player) ET (TabGame[6,5] = Player) alors

						ECRIRE "Le joueur "& Player &" a gagné !"
						Win_Lose -> vrai

				//verification des 3 colognes
				si (TabGame[2,1] = Player) ET (TabGame[2,3] = Player) ET (TabGame[2,5] = Player) OU (TabGame[4,1] = Player) ET (TabGame[4,3] = Player) ET (TabGame[4,5] = Player) OU (TabGame[6,1] = Player) ET (TabGame[6,3] = Player) ET (TabGame[6,5] = Player) alors

						ECRIRE "Le joueur "& Player &" a gagné !"
						Win_Lose -> vrai

				//verification des colonnes
					si (TabGame[2,1] = Player) ET (TabGame[4,3] = Player) ET (TabGame[6,5] = Player) OU (TabGame[2,5] = Player) ET (TabGame[4,3] = Player) ET (TabGame[6,1] = Player) alors

						ECRIRE "Le joueur "& Player &" a gagné !"
						Win_Lose -> vrai
	FinProcedure

//programme principal
Debut
	ECRIRE "Jeu du Morpion !"
	init
	affichage

		REPETER
			affichage
			//jeu , avec tour du J X et du J 0
			Game(JX)
			affichage
			si Win_Lose(JX)= vrai alors
					Win:=vrai
			SINON
					Game(J0)
					affichage
						if Win_Lose(J0)= vrai then
								Win:=vrai
						Finsi
			Finsi
		Jusqua (Win =vrai)
Fin.	

			
								
						
				
		
}

Var
	TabGame : array[1..7,1..7] of Char;
	i,j:Integer;
	Win:boolean;
	JX,J0:Char;

	procedure init; // procedure d'initialisation
		begin
			Win:= false;
			i:=0;
			j:=0;
			JX:='X';
			J0:='0';
			{
			writeln('  | |  ');
			writeln('--|-|--');
			writeln('  | |  ');
			writeln('--|-|--');
			writeln('  | |  ');
			}

			// initialisation du plateau (example de résultat si dessus)
			TabGame[3,1] := '|';
			TabGame[5,1] := '|';

				TabGame[3,2] := '|';
				TabGame[5,2] := '|';
				TabGame[1,2] := '-';
				TabGame[2,2] := '-';
				TabGame[4,2] := '-';
				TabGame[6,2] := '-';
				TabGame[7,2] := '-';

			TabGame[3,3] := '|';
			TabGame[5,3] := '|';

				TabGame[3,4] := '|';
				TabGame[5,4] := '|';
				TabGame[1,4] := '-';
				TabGame[2,4] := '-';
				TabGame[4,4] := '-';
				TabGame[6,4] := '-';
				TabGame[7,4] := '-';

			TabGame[3,5] := '|';
			TabGame[5,5] := '|';

			//case vides (pour test et verifier les coordonnées)
				{
					TabGame[1,1] := '0';
					TabGame[2,1] := '0'; // point X 
					TabGame[4,1] := '0'; // point X   X | X | X
					TabGame[6,1] := '0'; // point X 
					TabGame[7,1] := '0';
					TabGame[1,3] := '0'; 
					TabGame[2,3] := '0'; // point X 
					TabGame[4,3] := '0'; // point X   X | X | X
					TabGame[6,3] := '0'; // point X 
					TabGame[7,3] := '0';
					TabGame[1,5] := '0';
					TabGame[2,5] := '0'; // point X 
					TabGame[4,5] := '0'; // point X   X | X | X
					TabGame[6,5] := '0'; // point X 
					TabGame[7,5] := '0';
				}			
		end;

procedure affichage; //va afficher le plateau
		begin
			For i:=1 to 5 do
				begin
					For j:=1 to 7 do
						begin
							if j= 7 then
								begin 
									writeln (TabGame[j,i]);
								end
							else
								begin
									write (TabGame[j,i]);
								end;
						end;
				end;
		end;

	procedure Game ( Player:Char ); //procedure ou l'on va demander ou placer les cases , les cocher , voir si elle ne sont pas deja prises,si elles sont prises , un message et on recommance le tour .
		Var
			choix:Integer;
			possible:boolean;
		begin
			//instructions
			possible:=true;
			Repeat

				writeln('Joueur ',Player,' , a toi de jouer !');
				writeln('Quelle ligne veut tu ? la première (1) , la seconde (2) ou la 3e (3) ? ');
				readln(choix);
				if (choix = 1) then // quand l'user choisi la ligne , il va choisir la colonne apres , pour les 3 lignes et les 3 colonnes
					begin	
						writeln('Quelle Colonne veut tu ? la première (1) , la seconde (2) ou la 3e (3) ? ');
						readln(choix);
						if (choix = 1) then
							begin
								if (TabGame[2,1] <> '0') OR (TabGame[2,1] <> 'X') then
									begin
										TabGame[2,1]:= Player;
									end
								else if (TabGame[2,1] = '0') OR (TabGame[2,1] = 'X') then
									begin
										possible:= false;
									end;
							end;
						if (choix = 2) then
							begin
								if (TabGame[4,1] <> '0') OR (TabGame[4,1] <> 'X') then
									begin
										TabGame[4,1]:= Player;
									end
								else if (TabGame[4,1] = '0') OR (TabGame[4,1] = 'X') then
									begin
										possible:= false;
									end;
							end;
						if (choix = 3) then
							begin
								if (TabGame[6,1] <> '0') OR (TabGame[6,1] <> 'X') then
									begin
										TabGame[6,1]:= Player;
									end
								else if (TabGame[6,1] = '0') OR (TabGame[6,1] = 'X') then
									begin
										possible:= false;
									end;
							end;
					end

		   		else if (choix = 2) then
					begin	
						writeln('Quelle Colonne veut tu ? la première (1) , la seconde (2) ou la 3e (3) ? ');
						readln(choix);
						if (choix = 1) then
							begin
								if (TabGame[2,3] <> '0') OR (TabGame[2,3] <> 'X') then
									begin
										TabGame[2,3]:= Player;
									end
								else if (TabGame[2,3] = '0') OR (TabGame[2,3] = 'X') then
									begin
										possible:= false;
									end;
							end;
						if (choix = 2) then
							begin
								if (TabGame[4,3] <> '0') OR (TabGame[4,3] <> 'X') then
									begin
										TabGame[4,3]:= Player;
									end
								else if (TabGame[4,3] = '0') OR (TabGame[4,3] = 'X') then
									begin
										possible:= false;
									end;
							end;
						if (choix = 3) then
							begin
								if (TabGame[6,3] <> '0') OR (TabGame[6,3] <> 'X') then
									begin
										TabGame[6,3]:= Player;
									end
								else if (TabGame[6,3] = '0') OR (TabGame[6,3] = 'X') then
									begin
										possible:= false;
									end;
							end;
					end

		   		else if (choix = 3) then
					begin	
						writeln('Quelle Colonne veut tu ? la première (1) , la seconde (2) ou la 3e (3) ? ');
						readln(choix);
						if (choix = 1) then
							begin
								if (TabGame[2,5] <> '0') OR (TabGame[2,5] <> 'X') then
									begin
										TabGame[2,5]:= Player;
									end
								else if (TabGame[2,5] = '0') OR (TabGame[2,5] = 'X') then
									begin
										possible:= false;
									end;
							end;
						if (choix = 2) then
							begin
								if (TabGame[4,5] <> '0') OR (TabGame[4,5] <> 'X') then
									begin
										TabGame[4,5]:= Player;
									end
								else if (TabGame[4,5] = '0') OR (TabGame[4,5] = 'X') then
									begin
										possible:= false;
									end;
							end;
						if (choix = 3) then
							begin
								if (TabGame[6,5] <> '0') OR (TabGame[6,5] <> 'X') then
									begin
										TabGame[6,5]:= Player;
									end
								else if (TabGame[6,5] = '0') OR (TabGame[6,5] = 'X') then
									begin
										possible:= false;
									end;
							end;
					end
				else if (choix <> 1) OR (choix <> 2) OR (choix <> 3) then
					begin
						possible:=false;
					end;

					if possible = false then	// message que la place est deja prise et qu il va falloir recommencer (pas le jeu)
						begin
							clrscr;
							writeln('Case deja prise ,ou Choix pas correct, appuyez sur entrer pour recommencer.');
							readln();
						end;

			Until possible = true ; 

		end;

	Function Win_Lose( Player:Char) : boolean; //va verifier les caes pour voir si le joueur X ou O a gagné
		begin
		Win_Lose := false;

			//verification des 3 lignes
			if (TabGame[2,1] = Player) AND (TabGame[4,1] = Player) AND (TabGame[6,1] = Player) OR (TabGame[2,3] = Player) AND (TabGame[4,3] = Player) AND (TabGame[6,3] = Player) OR (TabGame[2,5] = Player) AND (TabGame[4,5] = Player) AND (TabGame[6,5] = Player) then
				begin
					writeln('Le joueur ',Player,' a gagné !');
					Win_Lose :=true ;
				end;

			//verification des 3 colognes
			if (TabGame[2,1] = Player) AND (TabGame[2,3] = Player) AND (TabGame[2,5] = Player) OR (TabGame[4,1] = Player) AND (TabGame[4,3] = Player) AND (TabGame[4,5] = Player) OR (TabGame[6,1] = Player) AND (TabGame[6,3] = Player) AND (TabGame[6,5] = Player) then
				begin
					writeln('Le joueur ',Player,' a gagné !');
					Win_Lose :=true ;
				end;

			//verification des colonnes
				if (TabGame[2,1] = Player) AND (TabGame[4,3] = Player) AND (TabGame[6,5] = Player) OR (TabGame[2,5] = Player) AND (TabGame[4,3] = Player) AND (TabGame[6,1] = Player) then
				begin
					writeln('Le joueur ',Player,' a gagné !');
					Win_Lose :=true ;
				end;

		end;

BEGIN
	clrscr;
	writeln('Jeu du Morpion !');
	init;
	affichage;

		Repeat
			clrscr;
			affichage;
			//jeu , avec tour du J X et du J 0
			Game(JX);
			affichage;
			if Win_Lose(JX)= true then
				begin
					Win:=true
				end
			else
				begin
					Game(J0);
					affichage;
						if Win_Lose(J0)= true then
							begin
								Win:=true
							end;
				end;
		Until (Win =true);
	readln;
END.

