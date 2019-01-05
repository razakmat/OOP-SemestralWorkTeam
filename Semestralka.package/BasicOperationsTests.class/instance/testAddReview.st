tests
testAddReview
	|testdb currentFilm reviewsSize |
	self setUpConnection.
	testdb := self initNormalRoot. 
	
	testdb state screen setSelectedIndex: 1.
	testdb state buttonViewFilm performAction.	

	currentFilm := testdb state class currentFilm.
	testdb state buttonReview performAction.	
 	reviewsSize := currentFilm reviews size.
	self assert: testdb state class = AddReviewState.
	self assert: currentFilm id equals: 1.

	testdb state input accept: 'A very interesting review this is.'.
	self assert: reviewsSize = (currentFilm reviews size - 1).
	testdb state input accept: 'A very interesting review this is2.'.
	testdb state input accept: 'A very interesting review this is3.'.
	
	self assert: reviewsSize = (currentFilm reviews size - 3).
	self assert: testdb state class = AddReviewState.
