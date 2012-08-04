class Stat < ActiveRecord::Base
  attr_accessible :name, :stype, :value, :date, :category, :unit, :category_id, :sunit, :stype, :user_id, :stype_id
  belongs_to :user
  belongs_to :category
  has_many :activities, :as => :target
  paginates_per 5

  validates_presence_of :value, :date, :category_id
 
 include Likeable
 def as_json(options={})
    super(:only => [:date,:value],
       
       
  )
end

def by_category
   
   user.stats.where(:category_id => self.category_id )
end 

  
end