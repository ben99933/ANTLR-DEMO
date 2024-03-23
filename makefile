all:
	cd ./src && java -jar ../lib/antlr-4.13.1-complete.jar ./mylexer.g4
	cd ./src && javac -cp ../lib/antlr-4.13.1-complete.jar ./*.java

test1:
	make clean
	make
	cd ./src && java -cp ../lib/antlr-4.13.1-complete.jar:. testLexer "../test/test1.c"

test2:
	make clean
	make
	cd ./src && java -cp ../lib/antlr-4.13.1-complete.jar:. testLexer "../test/test2.c"

test3:
	make clean
	make
	cd ./src && java -cp ../lib/antlr-4.13.1-complete.jar:. testLexer "../test/test3.c"

clean:
	cd ./src &&  rm -rf ./mylexer.java ./mylexer.tokens ./mylexer.interp ./*.class