class CreateTransaction < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
    	t.boolean :sender_approved
    	t.boolean :receiver_approved
    	t.decimal :amount    	
    	t.integer :sender_id
    	t.integer :receiver_id
    end
  end
end
