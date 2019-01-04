initialization
initializePresenter
	buttonDelete
		action:
			[
			  (screen selectedItem isNotNil) ifTrue: [
				(User selectOne: [ :each | each nick = self selectedNickOnScreen  ]) remove.
				].
			  screen items: self userData 
			].
	buttonChangeRole 
		action:
			[ |newRole oldRole|
			  (screen selectedItem isNotNil) ifTrue: [
				oldRole := (User selectOne: [ :each | each nick = self selectedNickOnScreen  ]).
				newRole := oldRole changeRole.
				oldRole remove.
				newRole save
				].
			  screen items: self userData 
			].
		buttonReturn
		action:
			[ myWindow dynamicChange: AdminRootState ]