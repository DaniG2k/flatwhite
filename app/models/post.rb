class Post < ActiveRecord::Base
	validates_presence_of :title, :body
	default_scope {order(:created_at => :desc)}
end