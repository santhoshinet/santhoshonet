class Category < ActiveRecord::Base
  has_many :blogs
  validates_uniqueness_of :name
end
