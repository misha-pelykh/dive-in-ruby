arr = [1, 2, [3, 4, [5], [6, [7, 8]]]]
print arr.flatten; puts "\n" #=> [1, 2, 3, 4, 5, 6, 7, 8]
print arr.flatten(1); puts "\n" #=> [1, 2, 3, 4, [5], [6, [7, 8]]]
print arr.flatten(2); puts "\n" #=> [1, 2, 3, 4, 5, 6, [7, 8]]
print arr.flatten(3); puts "\n" #=> [1, 2, 3, 4, 5, 6, 7, 8]
