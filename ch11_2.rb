# Learn to Program
#
# Chapter 11. exercise 2
# 
# 
# Build your own playlist
#

music_names = (Dir['/Users/chaoyee/Music/*.mp3']).shuffle   # music_name is an array

File.open('play_list.m3u', 'w') do |f| 
  music_names.each do |name|
    f.write(name + "\n")                                    # '\n' won't work!
  end
end

puts "The playlist is done!"  