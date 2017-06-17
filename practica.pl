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
%5

acataOrden(Jefe,Empleado):- trabajaPara(Jefe,Empleado).
acataOrden(Jefe,Empleado):- acataOrden(OtroJefe,Empleado),
							trabajaPara(Jefe,OtroJefe).


%Entrega2

% Información base
% personaje(Nombre, Ocupacion)
personaje(pumkin,     ladron([estacionesDeServicio, licorerias])).
personaje(honeyBunny, ladron([licorerias, estacionesDeServicio])).
personaje(vincent,    mafioso(maton)).
personaje(jules,      mafioso(maton)).
personaje(marsellus,  mafioso(capo)).
personaje(winston,    mafioso(resuelveProblemas)).
personaje(mia,        actriz([foxForceFive])).
personaje(butch,      boxeador).
personaje(bernardo,   mafioso(cerebro)).
personaje(bianca,     actriz([elPadrino1])).
personaje(elVendedor, vender([humo, iphone])).
personaje(jimmie,     vender([auto])).


% encargo(Solicitante, Encargado, Tarea). 
% las tareas pueden ser cuidar(Protegido), ayudar(Ayudado), buscar(Buscado, Lugar)
encargo(marsellus, vincent,   cuidar(mia)).
encargo(vincent,  elVendedor, cuidar(mia)).
encargo(marsellus, winston, ayudar(jules)).
encargo(marsellus, winston, ayudar(vincent)).
encargo(marsellus, vincent, buscar(butch, losAngeles)).
encargo(bernardo, vincent, buscar(jules, fuerteApache)).
encargo(bernardo, winston, buscar(jules, sanMartin)).
encargo(bernardo, winston, buscar(jules, lugano)).


amigo(vincent, jules).
amigo(jules, jimmie).
amigo(vincent, elVendedor).


%1
esPeligroso(Persona):-personaje(Persona,mafioso(maton)).
esPeligroso(Persona):-personaje(Persona,ladron([licorerias,_])).
esPeligroso(Persona):- trabajaPara(Jefe,Persona),esPeligroso(Jefe).
	
	
