def get_first_name_of_season_winner(data, season)
  data[season][0]["name"].split(' ')[0]
end
def get_contestant_name(data, occupation)

  contestant = data.values.each do |seasonal_data|
    seasonal_data.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  hometown_contestant = []
  contestant = data.values.each do |seasonal_data|
    seasonal_data.each do |contestant|
      if contestant["hometown"] == hometown
         hometown_contestant << contestant
      end
    end
  end

  hometown_contestant.length
end

def get_occupation(data, hometown)
  contestant = data.values.each do |seasonal_data|
    seasonal_data.each do |contestant|
      if contestant["hometown"] == hometown
         return contestant["occupation"]
      end
    end
  end

end

def get_average_age_for_season(data, season)
  ages = 0
  ages_array = []
  # data[season].each{|contestant| ages += contestant["age"].to_i}
  data[season].each{|contestant| ages_array << contestant["age"].to_i}

  average_age= ages_array.inject(:+)/ ages_array.length.to_f

  average_age.round
end
