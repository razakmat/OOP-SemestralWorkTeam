initialization
initializePresenter
	buttonDelete
		action:
			[
			  (screen selectedItem isNotNil) ifTrue: [
				(User selectOne: [ :each | each nick = screen selectedItem ]) remove.
				].
			  screen items: self userData 
			].
	buttonReturn
		action:
			[ myWindow dynamicChange: AdminRootState ]