# Some useful extensions to String
class String

  # Truncates string to a maximum of 'count' characters
  def truncate(count = 80)
    return self if length < count
    shortened = self[0, count]
    splitted  = shortened.split(/\s/)
    words     = splitted.length
    splitted[0, words-1].join(" ") + ' ...'
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

