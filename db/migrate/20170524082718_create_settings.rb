class CreateSettings < ActiveRecord::Migration[5.1]
  def change
    create_table :settings, comment: 'アプリケーションの設定情報' do |t|
      t.string :proxy_url, null: false, default: '', comment: 'プロキシ先のURL'

      t.timestamps
    end
  end
end
