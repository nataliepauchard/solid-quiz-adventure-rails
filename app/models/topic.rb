class Topic < ApplicationRecord
  has_many :questions
  has_many :answers, :through => :questions
end

# Do we need ActiveRecord::Base here??? No it is from application_record.rb
