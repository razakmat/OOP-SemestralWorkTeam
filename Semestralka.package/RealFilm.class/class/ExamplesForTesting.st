example data
ExamplesForTesting
| adminUser director actor|
adminUser := AdminUser withNick: 'admin'  withPassword: 'admin'.
adminUser save.
director := Director new id: 1; firstName: 'Test'; surname: 'Director'; born: 1000.
director save.
actor := Actor new id: 1; firstName: 'Test'; surname: 'Actor'; born: 1000.
actor save.