class Tag < ActiveRecord::Base
  extend FriendlyId
  friendly_id :content, use: :slugged
  
  attr_accessible :content
  has_and_belongs_to_many :activities
  

  def self.process_tags(activity_id)
    p = Activity.find(activity_id)
    p.tag_list.each do |tag|
      t = find_or_initialize_by_content(tag)
      t.activities << p
      t.save
    end
  end
end
