class ChangeDataTypeForDateInFlights < ActiveRecord::Migration[6.1]
  def change
    change_column :flights, :date, :date
  end
end
