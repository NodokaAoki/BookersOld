class RemoveIndexEmailFromUsers < ActiveRecord::Migration[5.2]
	#emailのindexを削除(emailを入力しなくてもsign_in出来る)
  def change
  	remove_index :users, column: :email, unique: true
  end

  def up
  	remove_index :users, :email
  end

  def down
  	add_index :users, :email, unique: true
  end
end
