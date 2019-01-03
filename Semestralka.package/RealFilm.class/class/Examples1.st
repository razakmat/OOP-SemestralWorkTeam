example data
Examples1
|Director1 Director2 adminUser normalUser Actor1|
adminUser := AdminUser withNick: 'admin'  withPassword: 'admin'.
adminUser save.
normalUser := NormalUser withNick: 'test' withPassword: '123'.
normalUser save.
Director1 := Director new id: 1; firstName: 'Adam'; surname: 'Novak'; born: 1990.
Director2 := Director new id: 2; firstName: 'Lukas'; surname: 'Tomek'; born: 1800.
Actor1 := Actor new id: 1; firstName: 'Tom'; surname: 'Hanks'; born: 1956; save.
RealFilm new
	id: 1;
	director: Director1 ;
	name: 'Celisti';
	genre: #thriller;
	addActor: Actor1 ;
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