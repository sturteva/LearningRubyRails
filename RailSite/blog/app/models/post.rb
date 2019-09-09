class Post < ApplicationRecord
    validates :title, :presence => true
    validates :title, :length => { :minimum => 5}
    validates :title, :length => { :maximum => 30}
    validates :title, :exclusion => { :in => ["Title"]}
    
    has_many :comments
end
