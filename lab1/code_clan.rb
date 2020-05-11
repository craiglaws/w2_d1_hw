class CodeClan

attr_accessor :student_name, :cohort

  def initialize(student_name, cohort)
    @student_name = student_name
    @cohort = cohort
  end

  def student_can_talk(student_name)
    if @student_name = student_name
      return "I can talk"
    end
  end

  def favourite_language(language)
    return "I love #{language}"
  end


end
