class CreateAnnotations < ActiveRecord::Migration[5.0]
  def change
    create_table :annotations do |t|
      t.string :annotater
      t.text :body
      t.references :text, foreign_key: true

      t.timestamps
    end
  end
end
