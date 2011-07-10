class Person < ActiveRecord::Base
  validates :name,  :presence => true,
                    :length => { :minimum => 4 }
  has_many :weights
end
