%{




%}

%%
[\t]+ /*ignore whitespaces */;

el   |
la   |
los  |
las  |
un   |
uno  |
una  |
unos |
unas { printf ("%s: es un articulo \n" ,yytext);
}
	
abrira* |
acabara* |
aconsejar |
amar |
apoyar |
aprender | 
ayudar |
bailar |
beber |
caer |
cambiar | 
cantar |
cerrar |
cocinar |
comenzar |
comer |
comparar | 
comprar |
conducir |
contar |
continuar | 
correr |
cortar |
costar |
creer |
dar |
decidir | 
decir |
descansar | 
describir |
destruir |
doler |
dormir |
elegir |
empezar |
empujar |
encontrar | 
encontrarse |
enseñar |
entender |
esconder |
escribir |
escuchar |
esperar |
estudiar |
explicar |
ganar |
gritar |
hablar |
hacer |
intentar | 
ir |
jugar | 
lanzar |
lavar |
leer |
limpiar | 
llamar |
llegar |
llenar |
llorar |
luchar |
mandar |
mejorar |
mentir |
mirar |
morir |
mostrar | 
mover |
necesitar | 
ocurrir |
odiar |
ofrecer | 
olvidar |
oír |
pagar | 
pensar | 
perder |
perdonar | 
permitir |
poder |
poner |
preferir |
preguntar | 
preparar |
prometer |
pulsar |
quedarse | 
quemar |
querer |
recibir |
reconocer | 
recordar |
repetir |
responder | 
reír |
saber |
sacar |
salir |
saltar |
sentar |
sentir |
ser |
sonreír | 
tener |
terminar | 
tirar |
tocar |
trabajar | 
traer |
tratar |
usar |
vender | 
venir |
ver |
viajar | 
visitar |
vivir |
volver |
volverse { printf("%s : es un verbo \n", yytext);

}

agua	|	
hojas   |	
persona |
botella | 
hombre  | 	
petróleo |
café 	 |	
lapicera |	
piso 	 |
caramelos |
lentejas  |
plato     |
cartas 	  | 
letra     |
playa     |
castillo  |
libros    |
pradera   |
chocolate |	
cortina   |
radio     |
computadora | 
lima     | 	
remate   |
crema    | 	
luz      |	
remera   |
mapa     | 	
rey      | 
flor     |
debate   |
mono     | 
rúcula   |
desodorante  |
montañas | 	
servilleta |
diarios  |	
parlante | 	
teatro   |
diputado |	
tecla    |
estadística | 	
perfume  | 	
templo   |
gobierno |	
perro    |	
zapato   |
hipopótamo  |	
percha   |	
zoológico |
comida {	printf("%s : Es un sustantivo. \n", yytext);
	}


abierto |
acido 	 |
afilado |
agrio 	|
alto 	|
amable 	|
ancho 	|
aspero 	|
bajo 	 |
barato 	 |
brillante 	 |
bueno 	 |
calido	|
caluroso 	|
cansado 	|
ceñido 		|
apretado |
cerrado |
claro 	|
contrario 	|
corto 	|
cruel 	 |
debil 	 |
delgado 	 |
delicado 	|
fino 	 |
derecha	|
correcto |
despierto |
dulce 	|
duro 	 |
empinado 	|
enfadado |
enfermo 	|
enorme	        |
erroneo 	|
especial 	|
estrecho 	|
estupendo 	|
extraño 	|
falso 	 |
feliz 	 |
fisico 	 |
frio 	 |
fuerte 	 |
fat 	|
grueso	|
espeso 	|
hueco 	|
humedo 	|
importante 	 |
izquierda 	 |
joven 	 |
largo 	 |
lento 	 |
libre 	 |
ligero 	|
limpio 	 |
lleno 	 |
malo 	 |
natural |
necesario 	|
normal 	 |
nuevo 	 |
oscuro 	|
paralelo 	|
pegajoso 	|
pequeño 	|
pesado |
picante 	|
plano |
llano 	|
pobre 	 |
posible 	|
precioso 	|
preparado 	 |
privado 	|
profundo 	 |
rapido 	 |
recto 	 |
directo 	|
repentino 	|
ruidoso 	|
sabio 	 |
saludable 	|
seco 	 |
seguro 	|
serio 	 |
simple 	 |
solido 	 |
suave 	 |
sucio 	 |
tarde 	 |
temprano 	|
tieso 	 |
tonto
insensato 	 |
tranquilo 	 |
triste 	 |
verdadero 	 |
viejo 	 |
violento |
ric+[oa] {	printf("%s : es un adjetivo.", yytext);

}
ric+[a]+[c]+[h]+[u] {printf("%s: es un pokemon", yytext);}













 
[a-zA-Z]+ {printf("%s : No se reconoce la categoría léxica.  \n", yytext);

	}




.|\n {
	ECHO; /*normal default */
}

%%
main(){
	yylex();
}
