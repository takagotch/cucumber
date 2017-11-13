#---
# Excerpted from "The Cucumber Book, Second Edition",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/hwcuc2 for more book information.
#---
require 'childprocess'

process = ChildProcess.build('ruby', 'lib/transaction_processor.rb')
process.start
at_exit { process.stop }
