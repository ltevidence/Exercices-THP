class DropGuestTable < ActiveRecord::Migration[6.1]
  def up
    drop_table :guests
  end
  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
