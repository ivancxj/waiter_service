#encoding: utf-8
class Waiter < ActiveRecord::Base
  self.table_name = 'waiter'

  validates_presence_of :waiter_id
  validates_uniqueness_of :waiter_id


end