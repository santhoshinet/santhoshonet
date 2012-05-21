class Blog < ActiveRecord::Base
  belongs_to :category
  belongs_to :contributor
  validates_presence_of :title,  :categories_id , :content,  :contributors_id
end
