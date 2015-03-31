
class ShopWaiter < ActiveRecord::Base
  self.table_name = 'shop_waiter'

  validates_presence_of :waiter_id
  validates_presence_of :shop_entity_id
  validates_presence_of :zm_employee_id

  validates_uniqueness_of :shop_entity_id, scope: [:waiter_id]


end