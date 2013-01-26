class Post < ActiveRecord::Base
  has_many :comments

  attr_accessible :name, :content, :title
  validates :name,  :presence => true
  validates :title, :presence => true,
                    :length => { :minimum => 5 }
end
