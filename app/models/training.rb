class Training < ApplicationRecord
  has_many :exercises, inverse_of: :training
  accepts_nested_attributes_for :exercises
end
