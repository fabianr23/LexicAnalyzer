%{ 
#include <stdio.h> 
#include <conio.h> 
int articulosCount = 0, verbosCount = 0, adjetivosCount = 0,  
sustantivosCount = 0,  naturalesCount = 0,  enterosCount = 0,
 realesCount = 0, complejosCount = 0, aritmeticosCount = 0, 
 puntuacionCount = 0;
int num_lineas = 0, num_caracteres = 0; 
%} 
%option noyywrap 
%option yylineno 
letra [a-zA-ZÑñáéíóúÁÉÍÓÚ]
digito [0-9] 
binario [0-1] 
ignora " "|t|n 
operarit [*|+|-|/] 
operlog &|$ 
comparador <|>|<=|>=|==|!=
aritmetico [*|+|-|/|(|)]
signopunt [,|.|:|¿|?|¡|!]
entero [0-9]*
%% 
[\t]+ /*ignore whitespaces */;

el   |
las?  |
los  |
un[aos]* { printf ("%s: es un articulo \n" ,yytext);
			articulosCount++;
}

est+[aoyrnmsd]* |
soy |
s*e[rean]* |
eres |
son |
estrenar*n*d*o* |
abra*e*i*m*o*r*e*a*o*s*n*e* |
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
			verbosCount++;
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
[Rr]adios*     |
computadora* | 
lima     | 	
remate   |
crema    | 	
luz      |	
remera   |
mapa     | 	
rey      | 
flor[es]* |
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
comida |
estudiante |
hoy |
[pasado]*manana | 
profe[sor]* |
loc[ao] {	printf("%s : Es un sustantivo. \n", yytext);
			sustantivosCount++;
	}

perezoso |
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
derecha |
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
tonto |
insensato 	 |
tranquilo 	 |
triste 	 |
verdadero 	 |
viejo 	 |
violento |
ric+[oa] {	printf("%s : es un adjetivo. \n", yytext);
				adjetivosCount++;
}

-?[0-9]+([.][0-9]*)?+i { 
	printf ("%s: es un numero complejo \n" ,yytext);
	complejosCount++;
}

-?[0-9]+([.][0-9]+)+ { 
	printf ("%s: es un numero real \n" ,yytext);
	realesCount++;
}

[0-9]*  {
	printf("%s: Es un numero natural \n", yytext);
	naturalesCount++;
}

-?[0-9]+ {
	printf("%s: Es un numero entero \n", yytext);
	enterosCount++;
}

[*+)/(-] {
	printf("%s: Es un operador aritmetico \n", yytext);
	aritmeticosCount++;
}

[.,:¿?¡!] {
	printf(" %s : Es un signo de puntuacion \n", yytext);
	puntuacionCount++;
}

[0-9]+! {
	printf("%s: Indica el factorial \n", yytext);
}



[a-zA-Z]+ {printf("%s : No se reconoce la categoria lexica.  \n", yytext);

	}


.|\n
n ++num_lineas; 
. {printf("ERROR LEXICO EN LINEA %d n",yylineno);} 
%% 
int main(int argc,char *argv[]) 
{ 
char NomArch[30]; 
printf("Ingrese nombre de archivo: " ); 
gets(NomArch); 
if ((yyin = fopen("prueba.txt", "rt" )) == NULL) 
{ 
printf("nNo se puede abrir el archivo: %sn", NomArch); 
} 
else 
{ 
yylex();
printf("Cantidad de articulos encontrados: %d\n",articulosCount);
printf("Cantidad de verbos encontrados: %d\n",verbosCount);
printf("Cantidad de sustantivos encontrados: %d\n",sustantivosCount);
printf("Cantidad de numeros naturales encontrados: %d\n",naturalesCount);
printf("Cantidad de numeros reales encontrados: %d\n",realesCount);
printf("Cantidad de numeros complejos encontrados: %d\n",complejosCount);
printf("Cantidad de operadores aritmeticos encontrados: %d\n",aritmeticosCount);
printf("Cantidad de signos de puntuacion encontrados: %d\n",puntuacionCount); 
} 

fclose(yyin); 
getch(); 
return 0; 
}
