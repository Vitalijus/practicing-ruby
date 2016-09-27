class BankAccount
	attr_reader :balance, :credit, :debit

	def initialize(ledger)
		@balance =        ledger.inject(0) {|sum, (k,v)| sum + v}
		@credit, @debit = ledger.partition {|k,v| v > 0}
	end

	def formatted_output
		"Current Balance: #{@balance}\n\n" +
		"Credits: \n#{formatted_line_items(@credit)}\n\n" +
		"Debits: \n#{formatted_line_items(@debit)}"
	end

	def formatted_line_items(item)
		item.map {|k,v| "#{k}: #{v}" }.join("\n")
	end
end

ledger = [ ["Deposit Check #123", 500.15],
           ["Fancy Shoes",       -200.25],
           ["Fancy Hat",          -54.40],
           ["ATM Deposit",       1200.00],
           ["Kitteh Litteh",       -5.00] ]

r = Report.new(ledger)
puts r.formatted_output