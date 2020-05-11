require('minitest/autorun')
require('minitest/reporters')
require_relative('../code_clan')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
class TestCodeClanStudent < MiniTest::Test

  def test_student_name
    new_student = CodeClan.new("Craig", "G19")
    assert_equal("Craig", new_student.student_name)
  end

  def test_student_cohort
    new_student = CodeClan.new("Craig", "G19")
    assert_equal("G19", new_student.cohort)
  end


  def test_change_student_name
    new_student = CodeClan.new("Craig", "G19")
    new_student.student_name = "Dave"
    assert_equal("Dave", new_student.student_name)
  end

  def test_change_student_cohort
    new_student = CodeClan.new("Craig", "G19")
    new_student.cohort = "G20"
    assert_equal("G20", new_student.cohort)
  end

  def test_student_can_talk
    new_student = CodeClan.new("Craig", "G19")
    assert_equal("I can talk", new_student.student_can_talk("Craig"))
  end


  def test_favourite_language
    new_student = CodeClan.new("Craig", "G19")
    assert_equal("I love Ruby", new_student.favourite_language("Ruby"))
  end 
end
