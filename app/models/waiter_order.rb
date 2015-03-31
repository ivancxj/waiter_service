class WaiterOrder < ActiveRecord::Base
  self.table_name = 'waiter_order'

  validates_presence_of :waiter_id
  validates_presence_of :shop_entity_id
  validates_presence_of :order_id

  validates_uniqueness_of :waiter_id, scope: :order_id

end