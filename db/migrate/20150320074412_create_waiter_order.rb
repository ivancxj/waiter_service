class CreateWaiterOrder < ActiveRecord::Migration
  def change
    create_table :waiter_order, comment: '服务员服务过的订单' do |t|
      t.string :waiter_id, limit: 32, comment: '用户中心的user_id', null: false
      t.string :shop_id, limit: 32, comment: '店铺中心的shop_id', null: false
      t.string :entity_id, limit: 32, comment: '店铺中心的entity_id', null: false
      t.string :order_id, limit: 32, comment: '订单中心的order_id', null: false

      t.integer :get_experience, limit: 1, default: 0, comment: '是否已获得该订单的成长值 0: 未获得, 1:已获得'
      t.integer :beans_count, default: 0, comment: '该笔订单获取的火豆子数量'
      t.datetime :pay_at, comment: '可以评价开始时间'

      t.timestamps
      # t.datetime :create_time
      # t.datetime :opt_time
    end

    add_index :waiter_order, :waiter_id, name: 'waiter_order_waiter_id'
    add_index :waiter_order, :shop_id, name: 'waiter_order_shop_id'
  end
end
