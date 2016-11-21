<?php
class Feedback {

	private $comment;
	private $date;
	private $rating;
	
	public function __construct($comment, $date, $rating) {
		$this->comment = $comment;
		$this->rating = $rating;
		$this->date = $date;
	}
	
	public function getComment() {
		return $this->comment;
	}
	
	public function getDate() {
		return $this->date;
	}
	
	public function getRating() {
		return $this->rating;
	}
	
	public function setComment($comment) {
		$this->comment = $comment;
	}
	
	public function setDate($date) {
		$this->date = $date;
	}
	
	public function setRating($rating) {
		$this->rating = $rating;
	}

	
}
?>