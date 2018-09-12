require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter][:christmas].push(supply)
  holiday_hash[:winter][:new_years].push(supply)
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day].push(supply)
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  
  holiday_hash[season][holiday_name] = supply_array
  
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winSupply = []
  holiday_hash[:winter].each do |holiday, supply|
    winSupply.push(supply)
  end
  winSupply.flatten!
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  msg = "  "
  holiday_hash.each do |season, holi|
    puts season.to_s.capitalize + ":"
    holi.each do |holiday, supply|
      if holiday.to_s.include? "_"
        splitArray = holiday.to_s.split("_")
        splitArray.each do |word|
          word.capitalize!
        end
        msg << splitArray.join(" ")
      else
        msg << holiday.to_s.capitalize
      end
      msg << ": #{supply * ', '}"
      #puts "  #{holiday.to_s.capitalize.gsub("_", " ")}: #{supply * ', '}"
      puts msg
      msg = "  "
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbqHolidays = []
  holiday_hash.each do |season, holi|
    holi.each do |holiday, supply|
      if supply.include?("BBQ")
        bbqHolidays.push(holiday)
      end
    end
  end
  bbqHolidays
end







