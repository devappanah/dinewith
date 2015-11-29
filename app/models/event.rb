class Event < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :description
  validates_presence_of :category
  validates_presence_of :date_time
  validates_presence_of :address
  validates_presence_of :price
  validates_presence_of :user_id

  belongs_to :user

  geocoded_by :address
  after_validation :geocode
end

#APIKey
#AIzaSyC6UiFI7vY-JyCEa5napMz3eWXiPgWfYeY
