class AddUserIdToPassengers < ActiveRecord::Migration
  def change
    add_reference :passengers, :user, index: true, foreign_key: true
  end
end
