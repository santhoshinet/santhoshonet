class Blog < ActiveRecord::Base
  belongs_to :category
  belongs_to :contributor
end
