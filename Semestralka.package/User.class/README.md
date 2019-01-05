User class.
Defines a user.
User can have two different roles:
- normal (default) - regular database user, can view and comment movies
- admin - admin can add and edit entries and users

User's role can be changed by an AdminUser using ManageUsers feature.

How to add a new user:
| admin normal |
	admin := AdminUser
		withNick: 'jarda-OOP'
		withPassword: '123myjsmebratri!'.
	normal := NormalUser
		withNick: 'mates-OOP'
		withPassword: '321aninahodu!'.
