# Learn to Program
#
# Chapter 14. exercise 3
# 
# 
# Better program logger
#

$logger_depth = 0

def log block_description, &block
  prefix = '  ' * $logger_depth
  puts "#{prefix}Beginning '#{block_description}'..."
  $logger_depth += 1
  r = block.call      # r = block[]
  $logger_depth -= 1
  puts "#{prefix}...'#{block_description}' finished, returning: #{r}"
end

log 'outer block' do
  log 'some little block' do
    log 'teeny-tiny block' do
      'lots of love.'
    end
    22 + 20
  end

  log 'yet another block' do
    'I like Thai food!'
  end
  false
end