class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  validates :title, presence: true, length: { minimum: 5 }
  # here are alternate ways that line could have been done using
  # separate validators (also from TM bundle macros)
  #validates_presence_of :title, :on => :create, :message => "can't be blank"
  #validates_length_of :title, :minimum => 5, :on => :create, :message => "must be present"
end
