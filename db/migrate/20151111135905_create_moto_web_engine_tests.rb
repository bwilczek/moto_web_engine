class CreateMotoWebEngineTests < ActiveRecord::Migration
  def change
    create_table :moto_web_engine_tests do |t|
      t.belongs_to :run
      t.string :name
      t.string :class_name
      t.text :log, limit: 2097152 #2MB
      t.text :parameters
      t.integer :result
      t.string :error
      t.text :failures
      t.string :env
      t.float :duration
      t.timestamps null: false
    end
  end
end
