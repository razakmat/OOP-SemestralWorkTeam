User class.
Defines a user.
A user can have two different roles:
- normal (default) - a regular database user, can view and comment movies
- admin - an admin can add and edit entries and users

The user's role can be changed by an AdminUser using ManageUsers feature.

How to add a new user:
| admin normal |
	admin := AdminUser
		withNick: 'jarda-OOP'
		withPassword: '123myjsmebratri!'.
	normal := NormalUser
		withNick: 'mates-OOP'
		withPassword: '321aninahodu!'.
