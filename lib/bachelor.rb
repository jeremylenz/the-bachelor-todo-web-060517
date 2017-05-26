require 'pry'
def get_first_name_of_season_winner(data, season)
season_winner = String.new
data[season].each do |contestant|
  contestant.each do |attribute, data|
    if attribute == "status" && data == "Winner"
      season_winner = contestant["name"]
    end
  end
end

return nil if season_winner == nil

first_space = season_winner.index(" ")
season_winner = season_winner[0...first_space]

# binding.pry


end

def get_contestant_name(data, occupation)
  person_with_occupation = String.new

  data.each do |season, data_hash|
    data_hash.each do |contestant|
      contestant.each do |attribute, data|
        if attribute == "occupation" && data == occupation
          person_with_occupation = contestant["name"]
          # binding.pry
          # return person_with_occupation
        end
      end
    end
  end
# binding.pry
person_with_occupation
end


def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, data_hash|
    data_hash.each do |contestant|
      contestant.each do |attribute, data|
        if attribute == "hometown" && data == hometown
          counter += 1
          # binding.pry
        end
      end
    end
  end


  counter
end

def get_occupation(data, hometown)

  data.each do |season, data_hash|
    data_hash.each do |contestant|
      contestant.each do |attribute, data|
        if attribute == "hometown" && data == hometown
          return contestant["occupation"]
          # binding.pry
        end
      end
    end
  end



end

def get_average_age_for_season(data, season)

ages = []
average_age = 0

data[season].each do |contestant|
# binding.pry
    ages << contestant["age"].to_f
    # binding.pry
  end

ages.each do |value|
average_age += value
end

average_age = average_age / ages.length

average_age.round

end
