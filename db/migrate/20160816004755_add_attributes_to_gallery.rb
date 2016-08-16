class AddAttributesToGallery < ActiveRecord::Migration
  def change
    add_column :galleries, :name, :string
    add_column :galleries, :description, :text
    add_column :galleries, :medium, :text
    add_column :galleries, :website, :string
    add_column :galleries, :address, :string
    add_column :galleries, :latitude, :float
    add_column :galleries, :longitude, :float
    add_column :galleries, :phone, :string
    add_column :galleries, :hours, :text
  end
end
