class User < ActiveRecord::Base
  validates :name, presence: true

  serialize :address, JSON
  serialize :company, JSON

  def self.save_from_api
    require 'open-uri'
    user_data = JSON.load(open("http://jsonplaceholder.typicode.com/users"))
    users = user_data.map do |user|
      u = User.new(user)
      u.save
      u
    end

    users
  end
end
