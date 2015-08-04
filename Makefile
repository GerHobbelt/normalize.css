
all: strip lessify

.PHONY: strip lessify clean superclean


strip: normalize.tmp

normalize.tmp: normalize.less 
	echo "strip comments, keep the LESS file otherwise intact"
	cpp -P normalize.less > normalize.tmp

lessify: normalize.css

normalize.css: normalize.tmp package.json
	node_modules/.bin/lessc --verbose --source-map-less-inline normalize.tmp normalize.css


clean:
	-rm normalize.tmp

superclean: clean
	-rm normalize.tmp

