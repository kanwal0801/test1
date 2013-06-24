class Photo < ActiveRecord::Base
  belongs_to :album
  attr_accessible :image, :tag_list
  acts_as_taggable
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment :image, :presence => true,
  :content_type => { :content_type => ['image/jpeg', 'image/png', 'image/gif'] },
  :size => { :in => 0..10.megabytes }
end
