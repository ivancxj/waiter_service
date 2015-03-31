class ReportShopWaiterCount < ActiveRecord::Base
  self.table_name = 'report_shop_waiter_count'

  validates_presence_of :waiter_id
  validates_presence_of :shop_entity_id

  validates_uniqueness_of :shop_entity_id, scope: [:waiter_id, :year_month]

end