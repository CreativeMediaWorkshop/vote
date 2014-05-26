class CreateSigns < ActiveRecord::Migration
  def change
    create_table :signs do |t|
      t.string :owner
      t.references :article, index: true

      t.timestamps
    end
  end
end
