
all: strip lessify

.PHONY: strip lessify web clean superclean 


strip: normalize.swp

normalize.swp: normalize.less 
	echo "strip comments, keep the LESS file otherwise intact"
	cpp -P normalize.less > normalize.swp

lessify: normalize.css

normalize.css: normalize.swp package.json
	node_modules/.bin/lessc --verbose --source-map-less-inline normalize.swp normalize.css


# copy the output files to a directory ready for merger into the gh-pages branch:
web: lessify
	-mkdir latest
	cp normalize.css normalize.less test.html latest/


clean:
	-rm normalize.swp

superclean: clean
	-rm normalize.swp

