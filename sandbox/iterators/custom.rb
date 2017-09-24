def sequence(n, m, c)
  i, s = 0, []

  while (i < n)
    y = m * i + c
    yield y if block_given?
    s << y
    i += 1
  end

  s
end

sequence(3, 5, 1) { |x| print x, ", " } #=> 1, 6, 11
puts "\n"
