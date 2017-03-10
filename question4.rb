
major_cities = {BC: ["Vancouver", "Victoria", "Prince George"], AB: ["Edmonton", "Calgary"]}


# major_cities.each do |province, cities|
#     puts "#{province} has #{cities.length} main cities: #{cities.join(", ")}"
# end


major_cities.each do |province, cities|

   puts "#{province} has #{cities.length} main cities: #{cities[0..-2].join(", ")} and #{cities[-1]}"

end
