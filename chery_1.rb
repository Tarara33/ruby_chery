text = '1994-06-18'

case text
when /(\d{4})-\d{2}-\d{2}/
  puts "誕生日で#{$1}生まれです"
when /\d{3}-\d{4}/
  puts "郵便番号"
end
