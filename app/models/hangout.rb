class Hangout < ActiveRecord::Base
  attr_accessible :text, :title

  validates :title, presence: true, length: {minimum: 5}
  validates :text, presence: true, length: {minimum: 20}

  #include ActiveModel::ForbiddenAttributesProtection
end
