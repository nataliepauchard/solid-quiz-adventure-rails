class Answer < ApplicationRecord
  belongs_to :question, :optional => true
end
