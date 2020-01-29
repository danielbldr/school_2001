class School
  attr_reader :start_time, :hours_in_school_day
  attr_accessor :student_names

  def initialize(start_time_parameter, hours_in_school_day_parameter)
    @start_time = start_time_parameter
    @hours_in_school_day = hours_in_school_day_parameter
    @student_names = []
  end

  def add_student_name(student_parameter)
    @student_names << student_parameter
  end

end
