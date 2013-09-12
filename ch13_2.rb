# Learn to Program
#
# Chapter 13. exercise 2
# 
# 
# Orange Tree
#
#  grow 3" per year
#  will die when the tree is over 12
#  produces oranges from year 3~12
#  produces oranges 30 for the first year(age 3), and increases 10% more each year.
#     produce_rate_per_year = [0, 0, 0, 30, 33, 36, 40, 44, 48, 53, 58, 64, 70]
#
#

class OrangeTree

  def initialize
    @age = 0
    @height = 0
    @produce_rate_per_year = [0, 0, 0, 30, 33, 36, 40, 44, 48, 53, 58, 64, 70]
    @orange_count = 0
  end

  def age
    @age
  end

  def height
    @height
  end

  def one_year_passes
    @age += 1
    @height += 3
    if @age <= 12
      @orange_count = @produce_rate_per_year[@age]
    elsif @age > 12
      @orange_count = 0
      puts "The orange tree is dead!"
      exit
    end 
  end

  def count_the_oranges
    @orange_count
  end

  def pick_an_orange
    if @orange_count > 0
      @orange_count -= 1
      puts "How delicious the oranges are! There are #{@orange_count} oranges left."
    elsif @orange_count < 0
      @orange_count = 0
      puts "There is no more orange to pick this year!"
    end  
  end

end


ot = OrangeTree.new
puts "#{ot.age}, #{ot.height}, with #{ot.count_the_oranges} oranges "
13.times do
  ot.one_year_passes
  rand(40..60).times do
    ot.pick_an_orange
  end  
  puts "The tree is #{ot.height} inches height and has #{ot.count_the_oranges} oranges"
end
