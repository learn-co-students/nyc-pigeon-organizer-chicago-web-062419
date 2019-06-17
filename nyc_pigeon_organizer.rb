require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list = {}

  #puts names in hash structure
  data.each do |attribute, infohash|
    infohash.each do |type, array|
      array.each do |name|
        pigeon_list[name] = {:color => [], :gender => [], :lives =>[]}
      end
    end
  end

  data.each do |attribute, infohash|
    infohash.each do |type, array|
      array.each do |name|
        pigeon_list.each do |name1, atts|
          atts.each do |key, valuearr|
            if name == name1 && attribute == key
              pigeon_list[name1][key] << type.to_s
              
            end
          end
        end
      end
    end
  end
  pigeon_list
end