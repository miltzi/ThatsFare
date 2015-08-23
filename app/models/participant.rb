class Participant < ActiveRecord::Base
  belongs_to :user
  belongs_to :party
  has_many :transactions
end
