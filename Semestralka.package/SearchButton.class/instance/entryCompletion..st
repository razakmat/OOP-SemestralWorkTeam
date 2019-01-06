accessing
entryCompletion: dataSource
	  ^ EntryCompletion new
                dataSourceBlock: [ :currText | dataSource ];
                filterBlock: [ :currApplicant :currText | 
						currApplicant asUppercase includesSubstring: currText asString asUppercase ].