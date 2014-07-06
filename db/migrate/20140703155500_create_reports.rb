class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :time
      t.string :address
      t.string :name
      t.string :email
      t.string :roof
      t.string :roof_photos
      t.string :eaves
      t.string :eave_photos
      t.string :walls
      t.string :wall_photos
      t.string :attached
      t.string :attached_photos
      t.string :clearance
      t.string :clearance_photos
      t.string :defensible
      t.string :defensible_photos
      t.string :access
      t.string :access_photos
      t.string :water
      t.string :water_photos
      t.string :closing
      t.string :closing_photos

      t.timestamps
    end
  end
end
