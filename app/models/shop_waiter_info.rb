class ShopWaiterInfo < ActiveRecord::Base
  self.table_name = 'shop_waiter_info'

  validates_presence_of :waiter_id
  validates_presence_of :shop_entity_id

  validates_uniqueness_of :shop_entity_id, scope: :waiter_id

end