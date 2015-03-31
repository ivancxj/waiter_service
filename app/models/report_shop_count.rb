#encoding: utf-8
class ReportShopCount < ActiveRecord::Base
  self.table_name = 'report_shop_count'

  validates_presence_of :shop_entity_id
  validates_uniqueness_of :shop_entity_id, scope: :year_month

end