as yet unclassified
Examples1
|Director1 Director2|
Director1 := Director new firstName: 'Adam'; Surname: 'Novak'; born: 1990.
Director2 := Director new firstName: 'Lukas'; Surname: 'Tomek'; born: 1800.
Film new
	id: 1;
	director: Director1 ;
	name: 'Nazev1';
	save.
Film new
	id: 2;
	director: Director1 ;
	name: 'Nazev2';
	save.
Film new
	id: 3;
	director: Director2 ;
	name: 'Nazev3';
	save.
Film new
	id: 4;
	director: Director1 ;
	name: 'Nazev4';
	save.