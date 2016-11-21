<html>
	<form action="create_comments.php" method="post">
		Rating: 
		<select name="rating">
		  <option value="1">1</option>
		  <option value="2">2</option>
		  <option value="3">3</option>
		  <option value="4">4</option>
  		  <option value="5" selected="selected">5</option>
		</select>	
		<br><br>
		<textarea name="comment" placeholder="Share your thoughts with us..." cols="40" rows="5"></textarea>
		<br><br>
		<input type="submit">
	</form>
</html>