example data
Examples1
|Director1 Director2 User1|
User1 := AdminUser withNick: 'admin'  withPassword: 'admin'.
User1 save.
Director1 := Director new id: 1; firstName: 'Adam'; Surname: 'Novak'; born: 1990.
Director2 := Director new id: 2; firstName: 'Lukas'; Surname: 'Tomek'; born: 1800.
Film new
	id: 1;
	director: Director1 ;
	name: 'Celisti';
	genre: #thriller;
	save.
Film new
	id: 2;
	director: Director1 ;
	name: 'Vriskot 1';
	genre: #horror;
	save.
Film new
	id: 3;
	director: Director2 ;
	name: 'Kruh';
	genre: #horror;
	save.
Film new
	id: 4;
	director: Director1 ;
	name: 'Pelisky';
	genre: #comedy;
	save.