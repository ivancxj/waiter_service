class CreateShopWaiterHistory < ActiveRecord::Migration
  def change
    create_table :shop_waiter_history do |t|

      t.string :waiter_id, limit: 32, comment: '用户中心的user_id', null: false
      t.string :shop_entity_id, limit: 32, comment: '店铺中心的entity_id', null: false
      t.string :zm_employee_id, limit: 32, comment: 'ZM店铺下的员工列表', null: false
      t.integer :status, limit: 1, default: 0, comment: '0:申请, 1:绑定, 2:解绑 3:拒绝'

      t.datetime :created_at
    end
  end
end
