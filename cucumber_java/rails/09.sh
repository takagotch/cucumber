#---
# Excerpted from "The Cucumber for Java Book",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/srjcuc for more book information.
#---
set -e
cp -R 08 09
cd 09
patch --no-backup-if-mismatch -p3 < ../09.diff
../../../script/build-cukes
