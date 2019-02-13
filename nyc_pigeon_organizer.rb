require 'pry'
def nyc_pigeon_organizer(data)
  # write your code here!
  pigeons_array = []
  pigeons = {}

  data[:color].each do |key, val|
    pigeons_array.push(val)
  end
  binding.pry
end
