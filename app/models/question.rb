class Question < ApplicationRecord
  has_many :answers
  belongs_to :topic, :optional => true
end
