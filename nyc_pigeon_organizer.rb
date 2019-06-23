def nyc_pigeon_organizer(data)
  new_pigeon_hash = {}

  data.each do |category, attribute|
    attribute.each do |value, names|
      names.each do |name|
        new_pigeon_hash[name] = {:color => [], :gender => [], :lives => []}
      end
    end
  end
  data[:color].each do |value, names|
    names.each do |name|
      if data[:color][value].include?(name)
        new_pigeon_hash[name][:color] << value.to_s
      end
    end
  end
  data[:gender].each do |value, names|
    names.each do |name|
      if data[:gender][value].include?(name)
        new_pigeon_hash[name][:gender] << value.to_s
      end
    end
  end
  data[:lives].each do |value, names|
    names.each do |name|
      if data[:lives][value].include?(name)
        new_pigeon_hash[name][:lives] << value.to_s
      end
    end
  end
  new_pigeon_hash
end
