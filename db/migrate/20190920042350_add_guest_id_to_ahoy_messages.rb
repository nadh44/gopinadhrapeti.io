class AddGuestIdToAhoyMessages < ActiveRecord::Migration[5.2]
  def change
    add_column :ahoy_messages, :guest_id, :integer, index: true
  end
end
