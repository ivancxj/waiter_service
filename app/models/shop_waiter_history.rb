#encoding: utf-8
class ShopWaiterHistory < ActiveRecord::Base
  self.table_name = 'shop_waiter_history'

  validates_presence_of :waiter_id
  validates_presence_of :shop_entity_id

end