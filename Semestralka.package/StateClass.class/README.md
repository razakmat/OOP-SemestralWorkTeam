I am an abstract class for States in which a FilmDatabaseWindow can be.

I have following API: 
* goToErrorState: anError, which is called whenever a custom exception is thrown. An instance of that exception is passed in an argument. See ErrorState for more details.
* goToConfirmState: toDelete, which is called when an important decision is to be made, prompts admin if he is sure what he is doing