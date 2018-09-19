class CreateMentionsLegales < ActiveRecord::Migration[5.2]
  def change
    create_table :mentions_legales do |t|

      t.timestamps
    end
  end
end
