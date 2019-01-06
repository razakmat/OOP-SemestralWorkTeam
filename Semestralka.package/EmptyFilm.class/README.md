I'm a class repressenting an empty instance of a film.

I also use a NULL OBJECT PATTERN. And I am a singleton.

My methods define what to return when no movie is selected. I throw custom error when the director message is sent to me, otherwise I return collections with text, stating that there is no film or an empty film cannot have a review.
