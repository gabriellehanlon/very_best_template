class AddAddressLatitudeToVenue < ActiveRecord::Migration[6.0]
  def change
    add_column :venues, :address_latitude, :float
  end
end
