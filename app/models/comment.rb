class Comment < ActiveRecord::Base
 has_many :activities, :as => :target
  opinio
end
