find * -type l -not -exec grep -q "^{}$" .gitignore \; -print >> .gitignore
