require 'pry'
def nyc_pigeon_organizer(data)
  # write your code here!
  pigeons_array = []
  pigeons = {}
  i = 0

  data[:color].each do |key, val|
    pigeons_array.push(val)
  end
  pigeons_array.flatten!.uniq!

  while i < pigeons_array.length
    pigeons[pigeons_array[i]] = {color: [], gender: [], lives: []}
    i += 1
  end

  data[:color].each do |key, val|
    pigeons.each do |pigeon, attributes|
      if val.include?(pigeon)
        pigeons[pigeon][:color].push(key)
      end
    end
  end
  binding.pry
end
