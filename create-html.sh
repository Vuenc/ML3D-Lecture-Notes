#!/bin/bash
mkdir html
# obsidian-export converts obsidian links to standard markdown links
obsidian-export . ./html

# remove the full joined md file
rm html/00\ Notes\ joined.md

# pandoc.sh joins the files, makes external links internal, creates the html
./pandoc.sh
rm -r html/
