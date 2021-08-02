$LOAD_PATH << '.'
require 'shop_data.rb'
require 'time'

class User 
  include Data

  def name(element)
    user = all_users
    all_users.each do |user_data|
      user_data.each do |k,v|
        if v == element
          puts "#{user_data[:first_name]} #{user_data[:last_name]} is a #{user_data[:role]}"
        end
      end
    end
    puts
  end

  def dob(element)
    all_users.each do |user_data|
      user_data.each do |k,v|
        if v == element
          birth_date = Time.parse user_data[:date_of_birth]
          current = Time.new
          @age = current.year - birth_date.year
          puts "Age of #{user_data[:first_name]} #{user_data[:last_name]} is #{@age}"
        end
      end
    end
    puts
  end

  def details(element)
    user = all_users
    all_users.each do |user_data|
      user_data.each do |k,v|
        if v == element
          puts user_data.to_s
        end
      end
    end
    puts
  end

end

user = User.new
user.name('seller')
user.dob('seller')
user.details('seller')
user.name('buyer')
user.dob('buyer')
user.details('buyer')