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
pareja(Bernardo,Bianca).
pareja(Bernardo,Charo).

%3 trabajaPara (Persona,bernardo):-
    trabajaPara(marsellus,Persona),
    Persona/=jules.
    
    trabajaPara(Persona,george):- saleCon(Persona,bernardo).
    
