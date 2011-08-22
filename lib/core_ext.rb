# Some useful extensions to String
class String

  # Truncates string to a maximum of 'count' characters
  def truncate(max_length = 80)
    self.match(/(.{0,#{max_length}})(?:$|\s)/)[1]
  end

  # Returns Array of String with defined maxium length of characters
  # TODO implement
  def truncate_split(max_length = 80)
    result = []
    copy   = self.clone

    while copy.size > max_length do
      line = copy.truncate(max_length)
      result << line
      copy.slice!(0..line.size)
    end

    result << copy
    return result
  end

  # Opposite of #capitalize (uppercase first character)
  def uncapitalize
    (self.length > 0) ? (self[0, 1].downcase + self[1..-1]) : ""
  end

  # Transform to a CamelCase like string
  def camelize(upper_case_first=true)
    result = self.downcase.scan(/[a-z,0-9]+/).each.inject("") do |str, word|
      str << word.capitalize
    end
    upper_case_first ? result : result.uncapitalize
  end

end

