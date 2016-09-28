class Report
	attr_reader :balance, :credit, :debit, :date

	def initialize(ledger)
		@balance =        ledger.inject(0) {|sum, (k,v)| sum + v}
		@credit, @debit = ledger.partition {|k,v| v > 0}
	end

	def total_in
	    @credit.inject(0) {|sum, (k,v)| sum + v}
	end

	def total_out
	    @debit.inject(0) {|sum, (k,v)| sum + v}
	end

	def formatted_output
		"Total money in: #{total_in}\n" +
		"Total money out: #{total_out}\n\n" +
		"Current Balance: #{@balance}\n\n" +
		"Credits: \n#{formatted_line_items(@credit)}\n\n" +
		"Debits: \n#{formatted_line_items(@debit)}" 
	end

	def formatted_line_items(item)
		item.map {|k,v,d| "#{k}: #{v}, (#{d})" }.join("\n")
	end
end

