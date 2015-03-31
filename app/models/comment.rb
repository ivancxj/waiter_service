#encoding: utf-8
class Comment < ActiveRecord::Base
  self.table_name = 'comment'

  validates_presence_of :waiter_id
  validates_presence_of :shop_entity_id
  validates_presence_of :order_id
  validates_presence_of :user_id
  validates_presence_of :comment

  validates_uniqueness_of :waiter_id, scope: :order_id

end