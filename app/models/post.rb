class Post < ActiveRecord::Base
  validates_presence_of :title, :body
  validates :title, uniqueness: true
  default_scope {order(:created_at => :desc)}
end
