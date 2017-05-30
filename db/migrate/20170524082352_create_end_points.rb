class CreateEndPoints < ActiveRecord::Migration[5.1]
  def change
    create_table :end_points, comment: 'APIのエンドポイント' do |t|
      t.string :name, null: false, default: '', comment: 'エンドポイント名'
      t.string :path, null: false, default: '', comment: 'エンドポイントのパス'
      t.integer :http_method, comment: 'リクエストメソッド、0 = GET, 1 = POST, 2 = PATCH, 3 = DELETE'
      t.text :response, comment: 'レスポンスのJSON'
      t.boolean :proxyable, null: false, default: false, comment: 'プロキシ可能かどうかのフラグ'

      t.timestamps

      t.index [:http_method, :path], unique: true
    end
  end
end
