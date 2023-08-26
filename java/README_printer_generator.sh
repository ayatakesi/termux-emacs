#!/bin/sh
cat <<EOT >README_printer.pl

#!/usr/bin/perl
# This script requires libintl-perl(>=1.09).
use Locale::TextDomain ("emacs_java_README");
my (\$en, \$ja);
while (<>) {
EOT
cat README |
    sed -r "s/'/\\\'/g" |
    sed -r "s|(.+)$|\t\(\$en, \$ja\) = \(quotemeta\('&'\), __ '&'\); s/^\$en\$/\$ja/;|" >>README_printer.pl;
    printf "\tprint;\n}" >>README_printer.pl;
