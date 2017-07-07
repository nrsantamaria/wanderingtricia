class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.column :name, :string
      t.column :description, :string
      t.column :portfolio, :string
      t.column :price, :integer
      t.column :user_id, :integer

      t.timestamps
    end
  end
  def self.up
    change_table :images do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :images, :avatar
  end
end
