( cat warn-auto.sh; \
	echo CC=\'`head -1 conf-cc`\'; \
	echo LD=\'`head -1 conf-ld`\' \
	) > auto-ccld.sh
cat auto-ccld.sh make-compile.sh > make-compile
chmod 755 make-compile
cat auto-ccld.sh find-systype.sh > find-systype
chmod 755 find-systype
./find-systype > systype
( cat warn-auto.sh; ./make-compile "`cat systype`" ) > \
	compile
chmod 755 compile
./compile memtester.c
./compile tests.c
cat auto-ccld.sh make-load.sh > make-load
chmod 755 make-load
( cat warn-auto.sh; ./make-load "`cat systype`" ) > load
chmod 755 load
./extra-libs.sh "`cat systype`" >extra-libs
./load memtester tests.o `cat extra-libs`
