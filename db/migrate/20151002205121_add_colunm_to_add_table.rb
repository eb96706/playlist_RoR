class AddColunmToAddTable < ActiveRecord::Migration
  def change
    add_reference :adds, :user, index: true, foreign_key: true
  end
end
