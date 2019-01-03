User class.
Defines a user.
User can have two different roles:
- normal (default) - regular database user, can view and comment movies
- admin - admin can add and edit entries and users

Users nick can be accesed and changed, as well as password.

Roles cannot be changed. Role is returned as string when sending message role to AdminUser or NormalUser instances.

How to add a new user:
| admin normal |
	admin := AdminUser
		withNick: 'jarda-OOP'
		withPassword: '123myjsmebratri!'.
	normal := NormalUser
		withNick: 'mates-OOP'
		withPassword: '321aninahodu!'.
