class Message
	include ActiveModel::Model # allow easy instantiation of Message objects
	attr_accessor :name, :email, :subject, :content # allow access methods to the attributes

	validates :name, :email, :subject, :content, presence: true # tell rails we need all of these attributes
end
