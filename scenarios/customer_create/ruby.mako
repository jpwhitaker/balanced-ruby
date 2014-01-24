% if mode == 'definition':
Balanced::Customer.new

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-nngzAf2ARJV0AA4zzxdyVYJWRa0WLa5I')

customer = Balanced::Customer.new(
  :dob_year => 1963,
  :name => 'Henry Ford',
  :dob_month => 7,
  :address => {
    :postal_code => '48120'
  }
)
customer.save

% elif mode == 'response':
#<Balanced::Customer:0x1086c5148
 @attributes=
  {"links"=>{"source"=>nil, "destination"=>nil},
   "meta"=>{},
   "merchant_status"=>"underwritten",
   "email"=>nil,
   "dob_year"=>1963,
   "name"=>"Henry Ford",
   "dob_month"=>7,
   "created_at"=>"2014-01-24T17:53:58.374308Z",
   "address"=>
    {"country_code"=>nil,
     "state"=>nil,
     "line2"=>nil,
     "line1"=>nil,
     "postal_code"=>"48120",
     "city"=>nil},
   "href"=>"/customers/CU3Ttx347VFA9lYT8dBOkwcu",
   "ssn_last4"=>nil,
   "phone"=>nil,
   "ein"=>nil,
   "updated_at"=>"2014-01-24T17:53:58.661744Z",
   "id"=>"CU3Ttx347VFA9lYT8dBOkwcu",
   "business_name"=>nil},
 @hyperlinks=
  {"transactions"=>
    #<Proc:0x00000001087dd508/lib/balanced/utils.rb:6>,
   "bank_accounts"=>
    #<Proc:0x00000001087dd508/lib/balanced/utils.rb:6>,
   "refunds"=>
    #<Proc:0x00000001087dd508/lib/balanced/utils.rb:6>,
   "orders"=>
    #<Proc:0x00000001087dd508/lib/balanced/utils.rb:6>,
   "cards"=>
    #<Proc:0x00000001087dd508/lib/balanced/utils.rb:6>,
   "source"=>
    #<Proc:0x00000001087dd508/lib/balanced/utils.rb:6>,
   "reversals"=>
    #<Proc:0x00000001087dd508/lib/balanced/utils.rb:6>,
   "credits"=>
    #<Proc:0x00000001087dd508/lib/balanced/utils.rb:6>,
   "debits"=>
    #<Proc:0x00000001087dd508/lib/balanced/utils.rb:6>,
   "destination"=>
    #<Proc:0x00000001087dd508/lib/balanced/utils.rb:6>,
   "card_holds"=>
    #<Proc:0x00000001087dd508/lib/balanced/utils.rb:6>}>

% endif
