class CreateMotoWebEngineRuns < ActiveRecord::Migration
  def change
    create_table :moto_web_engine_runs do |t|
      t.string :name
      t.integer :result
      t.integer :cnt_all
      t.integer :cnt_passed
      t.integer :cnt_failure
      t.integer :cnt_error
      t.integer :cnt_skipped
      t.string :user
      t.string :host
      t.integer :pid
      t.float :duration
      t.timestamps null: false
    end
  end
end
