class CreateWaiterOrder < ActiveRecord::Migration
  def change
    create_table :waiter_order, comment: '服务员服务过的订单' do |t|
      t.string :waiter_id, limit: 32, comment: '用户中心的user_id', null: false
      t.string :shop_entity_id, limit: 32, comment: '店铺中心的entity_id', null: false
      t.string :order_id, limit: 32, comment: '订单中心的order_id', null: false

      t.decimal :order_amount, precision: 10, scale: 2, default: 0.00, comment: '订单总额'
      t.integer :get_experience, limit: 1, default: 0, comment: '是否已获得该订单的成长值 0: 未获得, 1:已获得'
      t.integer :all_comment, limit: 1, default: 0, comment: '是否已全部已评论 0: 否, 1:是'
      t.string  :pay_user_ids, limit: 660, default: '', comment: '这笔订单支付过的人ids,以,分割'
      t.integer :beans_count, default: 0, comment: '该笔订单获取的火豆子数量'
      t.datetime :complete_at, comment: '订单完成时间,开始自动评价记时'

      t.timestamps
      # t.datetime :create_time
      # t.datetime :opt_time
    end

    add_index :waiter_order, :waiter_id, name: 'waiter_order_waiter_id'
    add_index :waiter_order, :shop_entity_id, name: 'waiter_order_shop_entity_id'
  end
end
