class Admin::ReportsController < Admin::BaseController
  def history
    @history = CheckoutRecord.all.order('id desc')
  end

  def revenue
  end
end