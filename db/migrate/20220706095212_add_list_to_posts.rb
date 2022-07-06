class AddListToPosts < ActiveRecord::Migration[6.1]
  def change
    add_reference :posts, :list, null: false, foreign_key: true
  end
end
