input = File.open(File.join(File.dirname(__FILE__), "input.txt")).read

elves_totals = input.split("\n\n").map do |elf_calories|
  elf_calories.split("\n").map(&:to_i).sum
end.sort.reverse

puts "part one"
puts elves_totals.first

puts "part two"
puts elves_totals[0..2].sum
