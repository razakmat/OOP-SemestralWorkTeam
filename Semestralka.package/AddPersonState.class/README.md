I'm a state class for adding persons to the database. I have GUI components for specification of personal data, submitting it and returning to other state.

I have following important messages
* addPerson - checks if all fields are filled, then calls for addNew, or throws AddObjectWithMissingValuesError.
* addNew - abstract message, is called when fields are filled, creates new person according to it's subclass.