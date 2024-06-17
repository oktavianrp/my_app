class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.belongs_to :article, null: false, foreign_key: true
      t.string :comment

      t.datetime :created_at
    end
  end
end
