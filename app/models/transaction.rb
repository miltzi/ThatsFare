class Transaction < ActiveRecord::Base
  belongs_to :sender, :class_name => 'Participant'
  belongs_to :receiver, :class_name => 'Participant'
  before_save :valid_transaction?

  private
  def valid_transaction?
   return false unless self.sender_id != self.receiver_id
   true
 end
end