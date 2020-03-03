require 'minitest/autorun'
require 'rspec'
require_relative 'test_answers'

class Answers
	ANSWERS = ["This is answers?", "Another answer?", "No question"]

	def ask(question)
		raise "You use invalid format, use string." unless is_question_valid?(question)
		ANSWERS.sample
  	end

  	private

  	def is_question_valid?(question)
  		question.is_a?(String) && question[-1] == "?"
  	end
end
