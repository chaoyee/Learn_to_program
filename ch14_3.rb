# Learn to Program
#
# Chapter 14. exercise 3
# 
# 
# Program logger
#

def log block_description, &block
  puts "Beginning #{block_description}..."
  r = block.call      # r = block[]
  puts "#...{block_description} finished, returning: #{r}"
end

log 'outer block' do
  log 'some little block' do
    2 + 3
  end

  log 'yet another block' do
    'I like Thai food!'
  end
  false
end