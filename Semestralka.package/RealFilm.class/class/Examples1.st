example data
Examples1
|Director1 Director2 adminUser normalUser Actor1|
adminUser := AdminUser withNick: 'admin'  withPassword: 'admin'.
adminUser save.
normalUser := NormalUser withNick: 'test' withPassword: '123'.
normalUser save.
Actor1 := Actor new id: 1; firstName: 'Tom'; Surname: 'Hanks'; born: 1956.
Actor1 save.
Director1 := Director new id: 1; firstName: 'Adam'; Surname: 'Novak'; born: 1990.
Director2 := Director new id: 2; firstName: 'Lukas'; Surname: 'Tomek'; born: 1800.
RealFilm new
	id: 1;
	director: Director1 ;
	name: 'Celisti';
	genre: #thriller;
	addActor: Actor1;
	save.
RealFilm new
	id: 2;
	director: Director1 ;
	name: 'Vriskot';
	genre: #horror;
	save.
RealFilm new
	id: 3;
	director: Director2 ;
	name: 'Kruh';
	genre: #horror;
	save.
RealFilm new
	id: 4;
	director: Director1 ;
	name: 'Pelisky';
	genre: #comedy;
	save.