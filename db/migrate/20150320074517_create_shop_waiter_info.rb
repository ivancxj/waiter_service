#encoding: utf-8
class CreateShopWaiterInfo < ActiveRecord::Migration
  def change
    create_table :shop_waiter_info, comment: '服务员在一个店铺下的资料' do |t|
      t.string :waiter_id, limit: 32, comment: '用户中心的user_id', null: false
      t.string :shop_id, limit: 32, comment: '店铺中心的shop_id', null: false
      t.string :entity_id, limit: 32, comment: '店铺中心的entity_id', null: false

      begin '店铺备注'
      t.string :mobile, limit: 13, comment: '手机号'
      t.string :name,  limit: 16, comment: '姓名'
      t.string :rank,  limit: 32, comment: '职级'
      t.string :avatar, comment: '头像'
      t.integer :gender, limit: 1, default: 0, comment: '0: 未设置, 1: 男, 2:女'
      end

      begin '身份证信息'
        t.string :card_id,  limit: 18, default: '', comment: '身份证号'
        t.string :card_photo, default: '', comment: '身份证图片'
      end

      t.timestamps
      # t.datetime :create_time
      # t.datetime :opt_time
    end

    add_index :shop_waiter_info, [:waiter_id, :shop_id], name: 'shop_waiter_info_waiter_id_shop_id'
  end
end
