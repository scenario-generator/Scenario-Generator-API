class AddActiveToGenerators < ActiveRecord::Migration[5.2]
  def change
    add_column :generators, :active, :boolean, default: false

    Generator.update_all(active: true)
  end
end
