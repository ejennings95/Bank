class Statement

  attr_reader :transactions

  def initialize
    @transactions = []
  end

  def new_transaction(deposited, withdrawn, balance)
    save_transaction = []
    save_transaction << "#{DateOfTransaction.format}, #{deposited}, #{withdrawn}, #{balance}"
    @transactions << save_transaction
  end
end
