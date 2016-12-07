INSERT INTO Categoria_Producto(NombreCategoria, Imagen)
VALUES('Carne de Res', 'res.jpg'),
('Carne de Pollo', 'pollo.jpg'),
('Carne de Cerdo', 'cerdo.jpg'),
('Pescado', 'pescado.jpg'),
('Carne de Conejo', 'conejo.jpg'),
('Carne de Pavo', 'pavo.jpg');


DECLARE @catRes int = (SELECT IdCategoria FROM Categoria_Producto where NombreCategoria = 'Carne de Res');

DECLARE @catPollo int = (SELECT IdCategoria FROM Categoria_Producto where NombreCategoria = 'Carne de Pollo');

DECLARE @catCerdo int = (SELECT IdCategoria FROM Categoria_Producto where NombreCategoria = 'Carne de Cerdo');

DECLARE @catPescado int = (SELECT IdCategoria FROM Categoria_Producto where NombreCategoria = 'Pescado');

DECLARE @catCon int = (SELECT IdCategoria FROM Categoria_Producto where NombreCategoria = 'Carne de Conejo');

DECLARE @catPavo int = (SELECT IdCategoria FROM Categoria_Producto where NombreCategoria = 'Carne de Pavo');


INSERT INTO Producto(IdCategoria, NombreProducto, Descripcion, CantDisponible, Imagen)
VALUES(@catRes,'Filete T-Bone/Porterhouse','Es un corte muy popular y f�cil de diferenciar. El lomo tiene excelente textura y sabor. La parte del filete es m�s suave. No tiene mucha grasa y se venden en todas partes.',50, 'tbone.jpg'),
(@catRes,'Lomo (Tenderloin Steak)', 'Tambi�n conocido como lomito, lomo fino o solomillo. Es un corte del centro del lomo y es muy costoso. Tiene un gran sabor y su carne es tierna.',50, 'Lomo (Tenderloin Steak).jpg'),
(@catRes,'Cola de Cuadril (Tri-Tip Steak)', 'Es el corte favorito del famoso asado californiano. Tiene forma triangular y es grueso, por eso es mejor cubrirlo para cocinarlo. M�todo sugerido de cocci�n: Estofado, a la parrilla o a la plancha.',50, 'Cola de Cuadril (Tri-Tip Steak).jpg'),
(@catRes,'Churrasco o Solomillo (Top Sirloin)','Es un corte de carne fino ovalado con grasa y ligero que tiene mucho sabor, jugos y textura. Este corte se obtiene de la parte superior del lomo y no contiene hueso.M�todo sugerido de cocci�n: Al horno.',50, 'Churrasco o Solomillo (Top Sirloin).jpg'),
(@catRes,'Bife Ancho (Rib Eye Steak)','Es uno de los cortes m�s finos, suaves y caros en el mercado. Proviene de la quinta a la d�cima primera v�rtebra del costillar de la res. Su carne es blanda y posee una gran cantidad de grasa que lo hace m�s tierno y de gran sabor. M�todo sugerido de cocci�n: A la parrilla, plancha o guisado.',50, 'Bife Ancho (Rib Eye Steak).jpg'),
(@catRes,'Bife Ancho con Hueso (Bone-In Rib-Eye)','Tiene forma de paleta y es muy suave y jugoso. Contiene un poco de grasa y se obtiene del costillar de la res. M�todo sugerido de cocci�n: A la plancha o a la parrilla.',50, 'Bife Ancho con Hueso (Bone-In Rib-Eye).jpg'),
(@catRes,'Asado de Tira (Back Ribs)','Es un corte que proviene de la costilla de la res. Tiene abundante grasa y es alargado, con peque�os huesos intermedios. Suele ser la parte m�s tierna y carnosa. M�todo sugerido de cocci�n: A la plancha o a la parrilla (para conservar sus jugos y suavidad).',50, 'Asado de Tira (Back Ribs).jpg'),
(@catRes,'Falda (Skirt Steak)','Tambi�n conocido como arrachera o sobrebarriga. Es un corte que proviene del diafragma y se caracteriza por tener mucho sabor. Es ideal para preparar fajitas. M�todo sugerido de cocci�n: Estofado o a la parrilla (marinar antes).',50, 'Falda (Skirt Steak).jpg'),
(@catRes,'Bife de Vac�o (Flank Steak)','Este corte es parte del diafragma pegado a las costillas. Es muy popular, parecido a la falda porque tambi�n es un corte magro y lleno de sabor. M�todo sugerido de cocci�n: Estofado o a la parrilla (marinar antes).',50, 'Bife de Vacio (Flank Steak).jpg'),
(@catRes,'Pecho (Brisket)','Es un corte de carne de la zona del pecho, justamente detr�s de la pierna del frente. Es una carne muy vers�til, pero algo dura. M�todo sugerido de cocci�n: Estofado o ahumado.',50, 'Pecho (Brisket).jpg'),
(@catRes,'Nalga (Top Round Steak)','Es el corte principal que comprende la parte superior de la pata trasera. La falta de grasa hace que sea seco cuando se hace a la parrilla. M�todo sugerido de cocci�n: Estofado, a la parrilla o al horno.',50, 'Nalga (Top Round Steak).jpg'),
(@catPollo,'Carcasa','Formada por los huesos que comprenden las costillas y la columna, una vez que se han retirado tanto el cuello, como las pechugas. Tambi�n se usa much�simo para la realizaci�n de fondos.',50, 'carcasa_pollo.jpg'),
(@catPollo,'Cuartos delanteros','Son las pechugas y las alitas. Evidentemente la utilizaci�n en cocina es muy extensa: ya sea para fre�r, para asar, para arroces, para fondos, para lo que queramos pr�cticamente.',50, 'Cuartos delanteros.jpg'),
(@catPollo,'Suprema','O lo que es lo mismo el cuarto delantero sin los huesos del t�rax, con el hueso de la alita y la carne que le rodea. Aunque tambi�n se puede encontrar sin huesos, sin la alita y sin la piel. Suele ser utilizada para saltear o asar normalmente.',50, 'Suprema de-pollo.jpg'),
(@catPollo,'Troceado','El troceado de la pechuga se debe realizar de forma transversal y lo podemos usar para salteados y arroz.',50, 'Troceado de pollo.jpg'),
(@catPollo,'Filete','Los filetes de la pechuga se consiguen abriendo la pechuga por la mitad como si fuera un libro. En este caso se suele usar para empanar y para la plancha.',50, 'Filete-de-pollo.jpg'),
(@catPollo,'Alita','Una alita va desde la base del hueso. Se suele usar para fre�r, o para barbacoa.',50, 'AlitaPollo.jpg'),
(@catPollo,'Cuartos traseros','Formado por los muslos y los contramuslos. Quiz�s es la parte m�s sabrosa a la hora de cocinar.',50, 'cuartostraseros-pollo.jpg'),
(@catPollo,'Muslo','Se le puede llamar jamoncito y se deja entero, siempre con piel. Se puede fre�r, saltear y en arroz',50, 'musloPollo.jpg'),
(@catPollo,'Contramuslo','Unido al muslo tampoco se le retira la piel. Tambi�n se usa para fre�r, saltear y en arroz.',50, 'contramusloPollo.jpg'),
(@catCerdo,'Pierna trasera','Se hornea en diferentes formas. La carne maciza (sin hueso) partida en trocitos es para guisados.',50, 'piernaCerdo.jpg'),
(@catCerdo,'Chamorro',' Es la parte de la pierna, junto a los codillos, manitas y patas. Se cocina al horno, como carnitas.',50, 'chamorroCerdo.jpg'),
(@catCerdo,'Lomo','Es el costillar sin hueso. Se cocina al horno en trozos fritos, cocidos o simplemente en peque�os filetes o empanizados.',50, 'lomoCerdo.jpg'),
(@catCerdo,'Costilla',' Es la parte interior del lomo. Se puede asar al carb�n, a la plancha o prepararse en guisados. Las costillas pueden ser aplanadas o sin aplanar. Se corta en porciones individuales.',50, 'costillaCerdo.jpg'),
(@catCerdo,'Falda','Es la parte baja del cerdo, a un lado de la panza. Puede prepararse cocida y deshebrada. Cortada en trozos se cuece y luego se guisa.',50, 'faldaCerdo.jpg'),
(@catCerdo,'Manitas','Son las patas del cerdo. Se hacen cocidas, guisadas, a la vinagreta, capeadas, etc.',50, 'manitasCerdo.jpg'),
(@catCerdo,'Paletilla','Es la parte alta de la pierna delantera. Se corta en trozos para todo tipo de guisados.',50, 'paletilla-de-cerdo.jpg'),
(@catCerdo,'Espaldilla','Parte intermedia entre el costillar y la cabeza. Se utiliza en trozos para preparar guisados.',50, 'espaldillaCerdo.jpg'),
(@catCerdo,'Pulpa','Es la parte alta de la pierna trasera del cerdo. No tiene hueso. Se prepara en trozos cocidos y fritos; tambien en bisteces.',50, 'pulpaCerdo.jpg'),
(@catCerdo,'Espinazo','Parte final del alto lomo. Se utiliza en guisados, cocido o frito.',50, 'espinazoCerdo.jpg'),
(@catCerdo,'Cabeza de lomo','Es la parte donde empieza el lomo. Se utiliza en trozos fritos, cocidos, guisados o en carnitas.',50, 'cabeza de lomoCerdo.jpg'),
(@catPescado,'Abadejo o bacalao fresco','Pescado de mar o agua salada.Es de color gris�ceo en el lomo, con el vientre blanco y con peque�as escamas rectangulares, su carne blanca, laminada, con peque�as espinas adheridas a su gruesa piel. Se prepara poch�, a la parrilla, meuniere, saladoo seco, se le conoce como bacalao y tiene diferentes preparaciones.',50, 'abadejo.jpg'),
(@catPescado,'Anguila','Pescado de r�o o agua dulce. Su cuerpo es cil�ndrico y alargado de color gris, de piel lisa, viscosa o gelatinosa. La cr�a de las anguilas se consumen hasta cierta edad y tama�o, tiene el cuerpo gris o transparente, reciben el nombre de angulas. Su carne es blanca y grasosa, se utilizan fritas, ahumadas, matelotte (guiso).',50, 'anguila.jpg'),
(@catPescado,'Arenques','Pescado de mar o agua salada. Su cuerpo es peque�o (aproximadamente 23 cm), boca peque�a, dientes en las dos mand�bulas, aletas centrales estrechas, de color azulado por el lomo y plateado por el vientre, tiene escamas. El arenque fresco se prepara emparrillado, meuniere, cocido, al grat�n, etc. El arenque se debe condimentar siempre a base de sabores fuertes. Se prepara tambi�n en ahumados o salados y en aceite.',50, 'arenque.jpg'),
(@catPescado,'At�n','Pescado de mar o agua salada.Es de color negro azulado por el lomo y gris plateado por el vientre. Su tama�o var�a de 2 a 5 metros en edad adulta. Su piel es lisa. El at�n fresco se prepara en filetes, emparrillado, braseado, asado y en su forma m�s usual: en conserva al natural o en aceite. Gran pescado de carne muy roja y de gusto fuerte. La variedad llamada bonito es mucho m�s fina. Su �poca, en verano.',50, 'atun.jpg'),
(@catPescado,'Bagre','Pescado de r�o o agua dulce. Pescado alargado, de piel lisa o viscosa, su cabeza es grande y achatada, su color y tama�o es variado, de carne amarilla. Se usa en filete, guisado, poch�, fumet.',50, 'bagre.jpg'),
(@catPescado,'Boca Chica o Coporo','Pescado de r�o o agua dulce. Su tama�o es grande puede alcanzar hasta tres kilos, de piel gris y escamosa, de carne amarillenta, tiene muchas espinas. Se usa en mousse, frito.',50, 'bocachica.jpg'),
(@catPescado,'Besugo','Muy estimado para asado entero. Su mejor �poca, de noviembre a marzo.',50, 'besugo.jpg'),
(@catPescado,'Boquer�n','Pescado de mar o agua salada. Es semejante a la sardina, pero un poco m�s peque�o. Su carne es de color pardo con muchas espinas. Se conserva por mucho tiempo fileteado, salado y en aceite, recibiendo el nombre de anchoa.',50, 'boqueron.jpg'),
(@catPescado,'Pargo','Pescado de mar o agua salada. Su color es plateado anaranjado, con escamas. Su carne es blanca y se prepara igual que el mero. Parguito: De peque�o tama�o, tiene todas las caracter�sticas del pargo. Uso: Parrilla, papillotte, braseado.',50, 'pargo.jpg'),
(@catPescado,'Salm�n','Pescado de r�o o agua dulce. Su piel es gruesa, cubierta de escamas de color azul plateado en el lomo y blanco en el vientre, con manchas oscuras en los costados. El nace en r�o y a los dos a�os se dirige al mar, regresa al r�o a desovar. Su carne es rosada y se prepara poch�, grill�, ahumado. Su carne rosada resulta exquisita, ya sea fresco o ahumado. Es un paescado algo graso, Se presta a guisos suculentos. Propio para asado al horno, emparrillado, cocido, guisado, etc.',50, 'salmon.jpg'),
(@catPescado,'Sardinas','Pescado de mar o agua salada. Peque�o pez, abundantes espinas, carne oscura, firme. Uso: Parrilla, conserva en aceite.',50, 'sardina.jpg'),
(@catPescado,'Tibur�n','Pescado de mar o agua salada. Pez grande, de distintas formas, de carne firme y rosada, de sabor delicado. Su aleta es muy utilizada en sopa. Uso: Ahumado, guisado, sopa, marinado.',50, 'tiburon.jpg'),
(@catPescado,'Trucha','Pescado de r�o o agua dulce. Tiene la carne blanca, aunque la hay salmoneada (carne color rosada). De tama�o y color distintos, su piel es lisa se puede criar en piscicultura, es un pez de arroyos fr�os. (�rea Andina Venezolana). Se prepara escalopada, meuniere, rellena o en filete.',50, 'trucha.jpg'),
(@catCon,'Canal','Producto resultante de la faena de un animal de la especie Oryctolagus Cun�culus una vez insensibilizado, desangrado, cuereado y eviscerado; desprovisto de cabeza, manos y patas (hasta las articulaciones del carpo y tarso), con o sin ri�ones.',50, 'canal.jpg'),
(@catCon,'Pierna','Corte con hueso correspondiente a la porci�n caudal de la canal, que se obtiene de la secci�n transversal de la columna vertebral a nivel de la articulaci�n lumbo-sacra.',50, 'pierna.jpg'),
(@catCon,'Espinazo Doble','Corte con hueso correspondiente a la regi�n lumbar de la canal, que se obtiene mediante dos secciones transversales de la columna vertebral: uno a nivel de la articulaci�n dorso-lumbar y otro a nivel de la articulaci�n lumbo-sacra.',50, 'espinazoDoble.jpg'),
(@catCon,'Delantero deshuesado','Corte correspondiente a la regi�n c�rvico-tor�cica, escapular y braquial de la canal, que se obtiene una vez retiradas sus bases �seas.',50, 'delanteroDeshuesado.jpg'),
(@catPavo,'Pavo entero','Se vende entero y admite variedad de preparaciones. Especialmente asado al horno en fechas navide�as.',50, 'pavoEntero.jpg'),
(@catPavo,'Cogote','Es un trozo que no lleva mucha carne, generalmente junto con la carcaza y otras menudencias se lo utiliza para la elaboraci�n de fondos, caldos, salsas y consom�s. Otorgando muy buen sabor y nutrientes de todas sus partes.',50, 'cogote.jpg'),
(@catPavo,'Pechuga','Como en toda ave, es el corte m�s magro del pavo y muy recomendable para dietas. Proporciona un 25% de prote�nas de excelente calidad, potasio, f�sforo, magnesio y selenio, con menos de un 1% de grasa, si se lo cocina sin piel que es donde se le concentra toda la grasa.',50, 'pechugaPavo.jpg'),
(@catPavo,'Alas','Es un corte con poco contenido c�rnico, y bastante dif�cil de retirarle toda la piel, lo que la vuelve m�s grasosa, pero indudablemente muy sabrosa para los que saben disfrutarla. Contiene cuatro veces m�s calor�as que la pechuga y el dobre que el muslo.',50, 'alasPavo.jpg'),
(@catPavo,'Contramuslo','Un corte de lujo, especial para hacer churrasquitos o formando parte del pavo asado o al horno. Muy carnoso, con muy buen sabor y con el doble de aporte cal�rico que la pechuga debido a la grasa intramuscular. Se recomienda quitarle la piel antes de consumir.',50, 'contramusloPavo.jpg'),
(@catPavo,'Jamoncitos','Corte muy carnoso y muy sabroso. Contiene tres veces m�s grasa que la pechuga. Se recomienda quitar la piel para no consumir tanta grasa y colesterol. Si se lo cocina con piel, es mejor quit�rsela antes de comer la presa.',50, 'jamoncitosPavo.jpg'),
(@catPavo,'Pata - muslo','Es un corte que puede llevar o no hueso y es muy carnoso. Muy sabroso rostizado, al horno o grillado. Siempre se recomienda quitarle la piel antes de cocinarlo, si se tiene problemas de colesterol.',50, 'patamusloPavo.jpg');

update Producto set precio = 1000;