saleCon(Persona,OtraPersona):-pareja(Persona,OtraPersona).
saleCon(Persona,OtraPersona):-pareja(OtraPersona,Persona).

%pareja(Persona, Persona)
pareja(marsellus, mia).
pareja(pumkin,    honeyBunny).
 
%trabajaPara(Empleador, Empleado)
trabajaPara(marsellus, vincent).
trabajaPara(marsellus, jules).
trabajaPara(marsellus, winston).


%1
saleCon(Persona,OtraPersona):- pareja(Persona,OtraPersona).
saleCon(Persona,OtraPersona):-pareja(OtraPersona,Persona).

%2
pareja(bernardo,bianca).
pareja(bernardo,charo).

%3 trabajaPara (Persona,bernardo):-
    trabajaPara(marsellus,Persona),
    Persona/=jules.
    
trabajaPara(Persona,george):- saleCon(Persona,bernardo).

%4
esFiel(Persona):- saleCon(Persona,_), not(esInfiel(Persona)).
esInfiel(Persona):- saleCon(Persona,OtraPersona),
				  saleCon(Persona,Amante),
				  OtraPersona \= Amante.
