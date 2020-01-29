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

  def end_time
    (@start_time.to_i + @hours_in_school_day).to_s + ":00"
  end

  def is_full_time?
    return true if @hours_in_school_day >= 4
    false
  end

  def standard_student_name
    @student_names.map { |student_name| student_name.capitalize }
  end

  def convert_end_time_to_clock_time
    (self.end_time.to_i - 12).to_s + ":00"
  end

end
