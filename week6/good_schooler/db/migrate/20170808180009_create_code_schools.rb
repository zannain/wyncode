class CreateCodeSchools < ActiveRecord::Migration[5.1]
  def change
    create_table :code_schools do |t|
      t.string :name

      t.timestamps
    end
  end
end
