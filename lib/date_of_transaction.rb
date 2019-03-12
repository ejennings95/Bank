require 'Date'

class DateOfTransaction
  def format(date = Date.today)
    date.strftime('%d/%m/%y')
  end
end
