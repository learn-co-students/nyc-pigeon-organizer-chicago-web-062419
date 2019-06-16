def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_hash = {}
  data.each do |info, category|
    category.each do |property, array|
      array.each do |name|
        if !pigeon_hash.has_key?(name)
          pigeon_hash[name] = {}
        end

        if !pigeon_hash[name].has_key?(info)
          pigeon_hash[name][info] = []
        end

        if !pigeon_hash[name][info].include?(property)
          pigeon_hash[name][info].push(property.to_s)
        end
      end
    end
  end
  pigeon_hash
end