{
 for j in html/*.md ; do
     cat "$j" | \
       # make links to other markdown files internal links
       sed 's/[^\(\)]*\.md//g';
     echo ;
     echo ;
 done ;
} \
| \
pandoc -s --toc -H gh-pandoc.css --webtex -o ml3d.html --metadata pagetitle="ML3D summary"
