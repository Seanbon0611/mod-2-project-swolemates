class CreateCoachReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :coach_reviews do |t|
      t.belongs_to :coach, null: false, foreign_key: true
      t.belongs_to :member, null: false, foreign_key: true
      t.integer :rating
      t.string :content

      t.timestamps
    end
  end
end
