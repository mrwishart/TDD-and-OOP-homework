class Student
  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  def set_name(newname)
    @name = newname
  end

  def cohort_name(newcohort)
    @cohort = newcohort
  end

  def name
    return @name
  end

  def cohort
    return @cohort
  end

  def talk
    return "I can talk!"
  end

  def say_favourite_language(lang)
    return "I love #{lang}"
  end


end
