class Integer
  def my_times
    c = 0

    until c == self
      yield(c)
      c += 1
    end

    self
  end
end

# 5.my_times { |i| puts "I'm on iteration #{i}!"}

=begin Output:
I'm on iteration 0!
I'm on iteration 1!
I'm on iteration 2!
I'm on iteration 3!
I'm on iteration 4!
=end
