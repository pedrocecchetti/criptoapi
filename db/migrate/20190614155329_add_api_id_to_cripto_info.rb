class AddApiIdToCriptoInfo < ActiveRecord::Migration[5.2]
  def change
    add_column :cripto_infos, :api_id, :int
  end
end
