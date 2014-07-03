class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :time
      t.string :address
      t.string :name
      t.string :email
      t.string :roof
      t.string :roof-photos
      t.string :eaves
      t.string :eave-photos
      t.string :walls
      t.string :wall-photos
      t.string :attached
      t.string :attached-photos
      t.string :clearance
      t.string :clearance-photos
      t.string :defensible
      t.string :defensible-photos
      t.string :access
      t.string :access-photos
      t.string :water
      t.string :water-photos
      t.string :closing
      t.string :closing-photos

      t.timestamps
    end
  end
end
