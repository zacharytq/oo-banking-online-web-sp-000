class Transfer
  # your code here
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end
  attr_reader :sender, :receiver, :amount, :status

  def valid?
    @sender.valid? && @receiver.valid? ? true : false
  end

  def execute_transaction
  if @sender.balance > @amount && @status == "pending"
    @sender.balance -= @amount
    @receiver.balance += @amount
    @status = "complete"
  else
    @status = "rejected"
    return "Transaction rejected. Please check your account balance."
  end
end




  end
