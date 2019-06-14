class CreateCriptoInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :cripto_infos do |t|
      t.string :name
      t.string :symbol
      t.datetime :last_updated
      t.string :price

      t.timestamps
    end
  end
end
