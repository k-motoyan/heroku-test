class CreateHeaders < ActiveRecord::Migration[5.1]
  def change
    create_table :headers, comment: 'APIで利用するリクエストヘッダー' do |t|
      t.references :end_points, index: true
      t.string :key, null: false, default: '', comment: 'ヘッダーのキー'
      t.string :value, null: false, default: '', comment: 'ヘッダーの値'

      t.timestamps
    end
  end
end
