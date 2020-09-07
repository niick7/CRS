class Admin::ReportsController < Admin::BaseController
  def history
  end

  def revenue
    
    if params[:fromDate] == "" || params[:fromDate] == nil
      session[:fromdate] = "01/01/1900"
    else
      session[:fromdate] = params[:fromDate]
    end
    if params[:toDate] == "" || params[:toDate] == nil
      session[:todate] = "01/01/2039"
    else
      session[:todate] = params[:toDate]
    end
    #@checkoutrecord = CheckoutRecord.all.where(pickupDate: [DateTime.now..(DateTime.now - 30.days)]).where.not(rentPrice: nil)
    #@checkoutrecord = CheckoutRecord.all.where(pickupDate: [DateTime.parse(session[:fromdate]).beginning_of_day..DateTime.parse(session[:todate]).end_of_day]).where.not(rentPrice: nil)
    @checkoutrecord = CheckoutRecord.all.where.not(rentPrice: nil)

  end
end