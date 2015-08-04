
all: strip lessify

.PHONY: strip lessify lessifyB web clean superclean 


strip: 
	echo "strip comments, keep the LESS file otherwise intact"
	cpp -P normalize.less > normalize.swp

lessify: strip 
	node_modules/.bin/lessc --verbose --source-map-less-inline normalize.swp normalize.css
	-rm normalize.swp

# alternative build command, next to `lessify`: `lessifyB` keeps the comments and everything in there: 
lessifyB: 
	node_modules/.bin/lessc --verbose --source-map-less-inline normalize.less normalize.css


# copy the output files to a directory ready for merger into the gh-pages branch:
web: lessify
	-mkdir latest-next
	cp normalize.css normalize.less test.html latest-next/


clean:
	-rm normalize.swp

superclean: clean
	-rm normalize.swp

