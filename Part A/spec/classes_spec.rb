require('minitest/autorun')
require('minitest/rg')
require_relative('../classes')

class TestBankAccount < MiniTest::Test
  def test_initialize()
    student = Student.new( "Duncan", "E27")
  end

  def test_get_name()
    student = Student.new( "Duncan", "E27")
    assert_equal("Duncan", student.name)
  end

  def test_get_cohort()
    student = Student.new( "Duncan", "E27")
    assert_equal("E27", student.cohort)
  end

  def test_set_name()
    student = Student.new( "Duncan", "E27")
    student.set_name("Zed")
    assert_equal("Zed", student.name)
  end

  def test_cohort_name()
    student = Student.new( "Duncan", "E27")
    student.cohort_name("G11")
    assert_equal("G11", student.cohort)
  end

  def test_student_can_talk
    student = Student.new( "Duncan", "E27")
    assert_equal("I can talk!", student.talk)
  end

  def test_student_favourite_language
    student = Student.new( "Duncan", "E27")
    fav_lang = student.say_favourite_language("Ruby")
    assert_equal("I love Ruby", fav_lang)
  end

end
