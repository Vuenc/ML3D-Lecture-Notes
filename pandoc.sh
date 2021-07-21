{
 for j in html/*.md ; do
     cat "$j" | \
       # make links to other markdown files internal links
       sed 's/[^\(\)]*\.md//g';
     echo ;
     echo ;
 done ;
} > 00\ Notes\ joined.md 
  
pandoc -s --toc -H gh-pandoc.css --webtex -o 00\ Notes\ joined.html --metadata pagetitle="ML3D summary" 00\ Notes\ joined.md
