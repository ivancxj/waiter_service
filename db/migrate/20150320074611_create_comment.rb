class CreateComment < ActiveRecord::Migration
  def change
    create_table :comment, comment: '评价' do |t|
      t.string :waiter_id, limit: 32, comment: '用户中心的user_id', null: false
      t.string :shop_id, limit: 32, comment: '店铺中心的shop_id', null: false
      t.string :entity_id, limit: 32, comment: '店铺中心的entity_id', null: false
      t.string :order_id, limit: 32, comment: '订单中心的order_id', null: false
      t.string :user_id, limit: 32, comment: '评论者,用户中心的user_id', null: false
      t.integer :comment_status, limit: 1, default: 1, comment: '0: 差评 1:好评'
      t.integer :auto_comment, limit: 1, default: 0, comment: '是否自动好评, 0: 否, 1: 是'
      t.integer :service_quality, default: 0, comment: '服务质量'
      t.string  :comment, comment: '评论内容'

      t.timestamps
      # t.datetime :create_time
      # t.datetime :opt_time
    end

    add_index :comment, :shop_id, name: 'comment_shop_id'
    add_index :comment, :order_id, name: 'comment_order_id'
  end
end
