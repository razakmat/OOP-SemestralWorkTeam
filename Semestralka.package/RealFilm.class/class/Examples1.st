example data
Examples1
|Director1 Director2 adminUser normalUser|
adminUser := AdminUser withNick: 'test'  withPassword: '123'.
adminUser save.
normalUser := NormalUser withNick: 'norm' withPassword: '321'.
normalUser save.
Director1 := Director new id: 1; firstName: 'Adam'; Surname: 'Novak'; born: 1990.
Director2 := Director new id: 2; firstName: 'Lukas'; Surname: 'Tomek'; born: 1800.
RealFilm new
	id: 1;
	director: Director1 ;
	name: 'Nazev1';
	genre: #thriller;
	save.
RealFilm new
	id: 2;
	director: Director1 ;
	name: 'Nazev2';
	genre: #horror;
	save.
RealFilm new
	id: 3;
	director: Director2 ;
	name: 'Nazev3';
	genre: #horror;
	save.
RealFilm new
	id: 4;
	director: Director1 ;
	name: 'Nazev4';
	genre: #comedy;
	save.