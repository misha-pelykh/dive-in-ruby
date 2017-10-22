str = 'Another plain old string'

module StringExtras
  def shout
    self.upcase + '!!!'
  end
end

class String
  include StringExtras
end

puts str.methods.include?(:shout)
puts str.shout
