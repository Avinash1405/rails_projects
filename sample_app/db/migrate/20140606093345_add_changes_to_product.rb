class AddChangesToProduct < ActiveRecord::Migration
  def up
  	change_table :products do|t|
  		t.remove :description
  		t.string :value
  		t.rename :name, :product_name
  	end
  end
  def down
  	change_table :products do|t|
  		t.string :description
  		t.remove :value
  		t.rename :product_name, :name
  	end
  end

end
