require 'active_record'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/bank.db')

class Account < ActiveRecord::Base
  validates_uniqueness_of :number

  def queue
    @queue ||= TransactionQueue.new
  end

  def credit(amount)
    queue.write("+#{amount},#{number}")
  end

  def debit(amount)
    queue.write("-#{amount},#{number}")
  end
end
