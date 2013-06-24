class Album < ActiveRecord::Base
  attr_accessible :name, :thumb, :user_id
  validates :name, :presence => true
belongs_to :user
has_many :photos

has_attached_file :thumb, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment :thumb,
  :content_type => { :content_type => ['image/jpeg', 'image/png', 'image/gif'] },
  :size => { :in => 0..10.megabytes }
end
