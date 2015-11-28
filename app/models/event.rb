class Event < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :description
  validates_presence_of :category
  validates_presence_of :date_time
  validates_presence_of :address

  belongs_to :user
end
