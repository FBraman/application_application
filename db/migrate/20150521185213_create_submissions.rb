class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
    	t.string :company_name, null: false
    	t.text :resume 
    	t.text :cover_letter
    	t.datetime :created_at, null: false
    	t.text :notes
    end
  end
end