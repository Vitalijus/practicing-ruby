require_relative "report"
require_relative "email_report"

ledger = [ ["Deposit Check #123", 500.15, "2016-04-23"],
           ["Fancy Shoes",       -200.25, "2016-05-28"],
           ["Fancy Hat",          -54.40, "2016-04-13"],
           ["ATM Deposit",       1200.00, "2016-08-23"],
           ["Kitteh Litteh",       -5.00, "2016-10-14"] ]

r = EmailReport.new(ledger)
puts r.formatted_output