require('minitest/autorun')
require('minitest/rg')
require_relative("../person")

class PersonTest < MiniTest::Test

  def test_get_name
    person = Person.new("Steve", 30)
    assert_equal("Steve", person.name)
  end

end
