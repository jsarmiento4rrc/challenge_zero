# Name: Jeffrey Sarmiento

# Constants for tax rates
GST_RATE = 0.05
PST_RATE = 0.07

# Ask user for input and convert to float
print "Please enter the subtotal: "
sub_total = gets.chomp.to_f 

# Calculations
pst_amount = sub_total * PST_RATE
gst_amount = sub_total * GST_RATE
grand_total = sub_total + pst_amount + gst_amount

# Requirement 1: Generate formatted output with 2 decimal places
puts "Subtotal: $#{"%.2f" % sub_total}"
puts "PST: $#{"%.2f" % pst_amount} - 7%"
puts "GST: $#{"%.2f" % gst_amount} - 5%"
puts "Grand Total: $#{"%.2f" % grand_total}"

# Requirement 2: Conditional messages
if grand_total <= 5.00
  puts "Pocket Change"
elsif grand_total > 5.00 && grand_total < 20.00
  puts "Wallet Time"
else
  puts "Charge It!"
end