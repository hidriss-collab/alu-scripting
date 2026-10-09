#!/bin/bash
set -e

cat > 0-simply_match_school.rb <<'RUBY'
#!/usr/bin/env ruby
puts ARGV[0].scan(/School/).join
RUBY

cat > 1-repetition_token_0.rb <<'RUBY'
#!/usr/bin/env ruby
puts ARGV[0].scan(/hb?tn/).join
RUBY

cat > 2-repetition_token_1.rb <<'RUBY'
#!/usr/bin/env ruby
puts ARGV[0].scan(/hbt+n/).join
RUBY

cat > 3-repetition_token_2.rb <<'RUBY'
#!/usr/bin/env ruby
puts ARGV[0].scan(/hbt*n/).join
RUBY

cat > 4-repetition_token_3.rb <<'RUBY'
#!/usr/bin/env ruby
puts ARGV[0].scan(/hbt+n/).join
RUBY

cat > 5-beginning_and_end.rb <<'RUBY'
#!/usr/bin/env ruby
puts ARGV[0].scan(/\Ah.n\z/).join
RUBY

cat > 6-phone_number.rb <<'RUBY'
#!/usr/bin/env ruby
puts ARGV[0].scan(/\A\d{10}\z/).join
RUBY

cat > 7-OMG_WHY_ARE_YOU_SHOUTING.rb <<'RUBY'
#!/usr/bin/env ruby
puts ARGV[0].scan(/[A-Z]/).join
RUBY

cat > 8-textme.rb <<'RUBY'
#!/usr/bin/env ruby
match = ARGV[0].match(/\[from:(.*?)\].*?\[to:(.*?)\].*?\[flags:(.*?)\]/)
puts "#{match[1]},#{match[2]},#{match[3]}" if match
RUBY

chmod +x *.rb
