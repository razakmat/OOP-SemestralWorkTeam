example data
ExamplesForTesting
| adminUser director actor|
adminUser := AdminUser withNick: 'admin'  withPassword: 'admin'.
adminUser save.
director := Director new id: 1; firstName: 'Test'; Surname: 'Director'; born: 1000.
director save.
actor := Actor new id: 1; firstName: 'Test'; Surname: 'Actor'; born: 1000.
actor save.