example data
ExamplesForTesting
	| adminUser user director actor film |
	adminUser := AdminUser withNick: 'admin' withPassword: 'admin'.
	user := NormalUser withNick: 'normal' withPassword: 'normal'.
	adminUser save.
	user save.
	director := Director new
		id: 1;
		firstName: 'Test';
		surname: 'Director';
		born: 1000.
	director save.
	actor := Actor new
		id: 1;
		firstName: 'Test';
		surname: 'Actor';
		born: 1000.
	actor save.
	film := RealFilm new
		id: 1;
		name: 'TestFilm';
		director: director;
		genre: #horror;
		addReview: '<test> wrote: ...'.
	film save