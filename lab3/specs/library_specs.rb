require('minitest/autorun')
require('minitest/reporters')
require_relative('../library')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
class TestLibrary < MiniTest::Test

  def setup

    @book1 =  {
      title: "lord_of_the_rings",
      rental_details: {
        student_name: "Jeff",
        date: "01/12/16"
      }
    }
  end


  def test_get_book_by_title
    book1 = @book1
    book1 = Library.new
    p book1 
    assert_equal(@book1, @books[:title].get_book_by_title("lord of the rings"))
  end


end
