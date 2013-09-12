# Learn to Program
#
# Chapter 11. exercise 3
# 
# 
# Build a Better Playlist
#

music_names = (Dir['/Users/chaoyee/Music/*.mp3'])  # music_name is an array

3.times do      # more shuffle
  music_names.shuffle!
end

File.open('play_list.m3u', 'w') do |f| 
  music_names.each do |name|
    f.write(name + "\n")                                    # '\n' won't work!
  end
end

puts "The playlist is done!"  