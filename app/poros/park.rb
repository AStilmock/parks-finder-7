class Park
  attr_reader :name,
              :description,
              :directions,
              :unformatted_hours

  def initialize(data)
    @name = data[:fullName]
    @description = data[:description]
    @directions = data[:directionsInfo]
    @unformatted_hours = data[:operatingHours][0][:standardHours]
  end

  # def format_hours(unformatted_hours)
  #   unformatted_hours.each_pair { |key, value| puts "#{key}: #{value}" }
  # end

  def hours
    arr = []
    hours = @unformatted_hours.each_pair { |key, value| arr << "#{key}: #{value}" }
    arr
  end
end