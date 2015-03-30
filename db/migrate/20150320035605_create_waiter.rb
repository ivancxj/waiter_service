#encoding: utf-8
class CreateWaiter < ActiveRecord::Migration
  def change
    create_table :waiter, comment: '服务员' do |t|
      t.string :waiter_id, limit: 32, comment: '用户中心的user_id', null: false
      t.integer :service_quality, default: 0, comment: '服务质量总得分'
      t.integer :service_orders_count, default: 0, comment: '服务订单数量'
      t.integer :comments_good_count, default: 0, comment: '被好评价次数'
      t.integer :comments_bad_count, default: 0, comment: '被差评价次数'
      t.integer :experience, default: 0, comment: '成长值数量'
      t.integer :beans_count, default: 0, comment: '火豆子数量'
      t.integer :work_from, comment: '设置每天上班时间,是上班时间到00:00的秒数'
      t.integer :work_to, comment: '设置每天下班时间,是下班时间到00:00的秒数'
      t.integer :work_status, limit: 1, default: 0, comment: '0: 下班, 1: 上班'

      # begin '辅助字段'
      #
      # end

      t.timestamps
      # t.datetime :create_time
      # t.datetime :opt_time
    end

    add_index :waiter, :waiter_id, name: 'waiter_waiter_id'
  end
end
