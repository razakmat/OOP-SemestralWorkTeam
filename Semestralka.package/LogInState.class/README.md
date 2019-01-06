I'm a state class where user starts at when connecting to the database.
After authenticating, a state will be selected according to the authenticated user's role:

AdminRootState for AdminUser.
NormalRootState for NormalUser.