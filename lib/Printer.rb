class Printer

  def print_header
    "Date || Deposits || Withdrawls || Balance"
  end

  def print(transactions)
    count = 0
    while count < transactions.length
      puts transactions[count][0]
      count += 1
    end
  end

end
