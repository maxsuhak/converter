class String
  def true?
    to_s.downcase == 'true'
  end

  def false?
    to_s.downcase == 'false'
  end

  def number?
    to_s =~ /^\d+$/
  end

  def self.formatting(str)
    return str.to_i if str.number?

    return true     if str.true?

    return false    if str.false?

    str
  end
end
