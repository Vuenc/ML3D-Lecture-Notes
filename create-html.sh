#!/bin/bash
mkdir html
# obsidian-export converts obsidian links to standard markdown links
obsidian-export . ./html
# pandoc.sh joins the files, makes external links internal, creates the html
./pandoc.sh
rm -r html/
