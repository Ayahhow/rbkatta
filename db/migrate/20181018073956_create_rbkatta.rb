class CreateRbkatta < ActiveRecord::Migration[5.2]
  def change
    create_table :rbkatta do |t|
      t.string :user
      t.string :rbkatta
      t.string :comment
      t.datetime :time
      t.boolean :already

      t.timestamps
    end
  end
end
