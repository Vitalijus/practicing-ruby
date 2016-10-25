require 'minitest/autorun'
require_relative 'solutions'

class TestSolutions < Minitest::Test
	def setup
    	@solutions = Solutions.new
  	end

	def test_calculate_age_is_correct
		assert_equal(@solutions.calculate_age(2012, 2016),"You are 4 years old.")
		assert_equal(@solutions.calculate_age(2000, 1990),"You will be born in 10 years.")
		assert_equal(@solutions.calculate_age(2000, 2000),"You were born this very year!")
		assert_equal(@solutions.calculate_age(2011, 2012),"You are 1 year old.")
		assert_equal(@solutions.calculate_age(2000, 1999),"You will be born in 1 year.")
	end

	def test_mean_vs_median_value
		assert_equal(@solutions.mean_vs_median([1, 2, 37]), "mean")
		assert_equal(@solutions.mean_vs_median([1, 1, 1]), "same")
		assert_equal(@solutions.mean_vs_median([7, 14, -70]), "median")
	end

	def test_get_new_notes
		assert_equal(@solutions.get_new_notes(1995, [1500, 19, 44]),86)
		assert_equal(@solutions.get_new_notes(2000, [500, 496, 100, 900]),0)
		assert_equal(@solutions.get_new_notes(2000, [500, 495, 100, 900]),1)
	end
end