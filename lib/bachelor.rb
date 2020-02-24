require 'pry'

def get_first_name_of_season_winner(data, season)
  data[season].find do |contestant|
    contestant["status"] == "Winner"
    return contestant["name"].split(' ')[0] 
end 
end

def get_contestant_name(data, occupation)
  data.values.flatten.find do |contestant|
    if contestant["occupation"] == occupation
    return contestant["name"]
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  data.values.flatten.select {|contestant|contestant["hometown"]==hometown}.count
end


def get_occupation(data, hometown)
  data.values.flatten.find do |contestant|
    if contestant["hometown"] == hometown
      return contestant["occupation"]
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  age = 0
  contestants = 0
  data[season].each do |contestant|
    age += (contestant["age"]).to_i
    contestants += 1
  end
  (age/contestants.to_f).round(0)
  end
