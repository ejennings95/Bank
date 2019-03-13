class Printer
  def print_header
    puts 'Date || Deposits || Withdrawals || Balance'
  end

  def print(transactions)
    count = 1
      while count <= transactions.length
        puts "#{transactions[transactions.length - count]}"
        count += 1
      end
    end
  end
