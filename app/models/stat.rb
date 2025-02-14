class Stat < ActiveRecord::Base
  attr_accessible :name, :source, :stype, :value, :date, :category, :unit, :category_id, :sunit, :stype, :user_id, :stype_id, :scope, :attachment
  belongs_to :user
  belongs_to :category
  has_many :activities, :as => :target, dependent: :destroy
   
  validates_presence_of :value, :date, :category_id, :sunit
  
  validates_length_of :value, :maximum => 5, :too_long => "That number is too big"
  mount_uploader :attachment, AttachmentUploader
   include Likeable
   
 def as_json(options={})
    super(:only => [:date,:value],
       
       
  )
end

def by_category
   
   user.stats.where(:category_id => self.category_id )
end 

  
end