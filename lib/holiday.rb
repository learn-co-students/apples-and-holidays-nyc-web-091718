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
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)

  holiday_hash[season][holiday_name] = supply_array

holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
winter_supplies = []
  holiday_hash[:winter].each do |holiday, supplies|
  winter_supplies << supplies
  end
  winter_supplies.join
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts "#{season.capitalize}:"
    holiday.each do |holiday, supply|
      puts "  #{holiday.capitalize.to_s.split("_").map { |word| word.capitalize}.join(" ")}: #{supply.join(", ")}"
    end
  end


end

def all_holidays_with_bbq(holiday_hash)
bbq_array = []
  holiday_hash.each do |season, holiday|
    holiday.each do |holiday, supply|
      if supply.include?("BBQ")
        bbq_array << holiday
      end
    end
  end
bbq_array
end
