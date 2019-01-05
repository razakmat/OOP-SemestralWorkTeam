initialization
initializePresenter
	buttonDelete
		action:
			[
			  (screen selectedItem isNotNil) ifTrue: [
				(User selectOne: [ :each | each nick = self selectedNickOnScreen  ]) remove.
				].
			  screen items: self userData.
			  screen setSelectedIndex: 0.
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
			  screen items: self userData.
			  screen setSelectedIndex: 0.
			].
		buttonReturn
		action:
			[ myWindow dynamicChange: AdminRootState ]