class CreateOrganizations < ActiveRecord::Migration[7.0]
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :site_url
      t.string :logo_url

      t.timestamps
    end
  end
end
