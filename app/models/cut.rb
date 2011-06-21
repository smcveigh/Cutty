class Cut < ActiveRecord::Base

  has_and_belongs_to_many :tags
  belongs_to :language
  belongs_to :user

  validates_presence_of :title, :code, :language

end