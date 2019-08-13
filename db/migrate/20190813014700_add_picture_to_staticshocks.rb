class AddPictureToStaticshocks < ActiveRecord::Migration[5.2]
  def change
    add_column :staticshocks, :picture, :string
  end
end
