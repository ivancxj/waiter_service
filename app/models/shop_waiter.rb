#encoding: utf-8
class ShopWaiter < ActiveRecord::Base
  self.table_name = 'shop_waiter'

  validates_presence_of :waiter_id
  validates_presence_of :shop_entity_id


end