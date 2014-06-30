class CreateNewmodels < ActiveRecord::Migration
  def change
    create_table :newmodels do |t|
		t.string :model
    	t.string :description
      t.timestamps
    end
  end
end
