class AddCompanyToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :company, :string
  end
end
