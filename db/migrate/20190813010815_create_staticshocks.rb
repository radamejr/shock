class CreateStaticshocks < ActiveRecord::Migration[5.2]
  def change
    create_table :staticshocks do |t|
      t.string :comment
      t.timestamps
    end
  end
end
