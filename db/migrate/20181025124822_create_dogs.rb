class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
    	t.string :dog_name
    	t.string :master_first_name
    	t.string :master_last_name
    	t.string :master_email
    	t.belongs_to :city, index: true

		t.timestamps
    end
  end
end
