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

  data.[:color].each do |key, val|
    pigeons.each do |pigeon, attributes|
      binding.pry
      if val.include?(pigeon)
        pigeon[:color] == key
      end
    end
  end

end
