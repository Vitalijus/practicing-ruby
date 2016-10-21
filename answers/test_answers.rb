class AnswersTest < Minitest::Test
	def test_ask_returns_an_answer
    	magic_ball = Answers.new
    	assert_includes(Answers::ANSWERS, magic_ball.ask("Question?"))
  	end

  	def test_predefined_answers_array
  		assert_kind_of(Array, Answers::ANSWERS)
  	end

  	def test_predefined_answers_is_not_empty
  		refute_empty(Answers::ANSWERS)
  	end

  	def test_raise_an_error_when_wrong_format
  		assert_raises "You use invalid format, use string." do 
  			answer = Answers.new
  			answer.ask(1)
  		end
  	end
end