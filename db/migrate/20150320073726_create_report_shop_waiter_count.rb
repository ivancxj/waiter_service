#encoding: utf-8
class CreateReportShopWaiterCount < ActiveRecord::Migration
  def change
    create_table :report_shop_waiter_count, comment: '店铺下每个服务员的每月统计' do |t|
      t.string :shop_entity_id, limit: 32, comment: '店铺中心的entity_id', null: false
      t.string :waiter_id, limit: 32, comment: '用户中心的user_id', null: false
      t.integer :service_quality, default: 0, comment: '服务质量总得分'
      t.integer :service_orders_count, default: 0, comment: '服务订单数量'
      t.integer :comments_good_count, default: 0, comment: '被好评价次数'
      t.integer :comments_bad_count, default: 0, comment: '被差评价次数'
      t.integer :experience, default: 0, comment: '成长值数量'
      t.integer :yyyy_mm, default: 0, comment: '年月'

      t.timestamps
      # t.datetime :create_time
      # t.datetime :opt_time
    end

    add_index :report_shop_waiter_count, :shop_entity_id, name: 'report_shop_waiter_count_shop_id'
    add_index :report_shop_waiter_count, :waiter_id, name: 'report_shop_waiter_count_waiter_id'
    add_index :report_shop_waiter_count, [:shop_entity_id, :waiter_id], name: 'report_shop_waiter_count_shop_waiter_id'
  end
end
