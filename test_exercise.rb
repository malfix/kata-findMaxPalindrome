require_relative "exercise"
require "test/unit"

class TestExercise < Test::Unit::TestCase
  test 'not found ' do
    assert_equal nil, Exercise.new.find('ciao')
  end

  test 'simple even' do
    assert_equal 'oo', Exercise.new.find('ciaoo')
  end

  test 'simple odd' do
    assert_equal 'obo', Exercise.new.find('ciaobo')
  end

  test 'full string' do
    assert_equal '1213121', Exercise.new.find('1213121')
  end

  test 'at the end' do
    assert_equal 'anna', Exercise.new.find('banna')
  end

  test 'at the beginning' do
    assert_equal 'anna', Exercise.new.find('annafrank')
  end
end
