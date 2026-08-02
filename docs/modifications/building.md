# Building the Binary

The default code repo includes two additional programs that can be used to interact with underlying jabcode codebase. For some reason the default build script is unable to successfully serve its purpose, thus forcing us to make a few modifications.

If you have tried to use the build method from the readme before, you'll have noticed the following error message:

```bash
$ make
gcc -c -I. -I../jabcode -I../jabcode/include -O2 -std=c11  jabreader.c -o jabreader.o
gcc  jabreader.o -L../jabcode/build -ljabcode -L../jabcode/lib -ltiff -lpng16 -lz -lm -O2 -std=c11  -o bin/jabcodeReader
/usr/bin/ld: ../jabcode/lib/libtiff.a(tif_close.o): relocation R_X86_64_32 against `.rodata.str1.1' can not be used when making a PIE object; recompile with -fPIE
/usr/bin/ld: failed to set dynamic section sizes: bad value
collect2: error: ld returned 1 exit status
make: *** [Makefile:11: bin/jabcodeReader] Error 1
```

The same error message can be observed with Reader and Writer.

## Needed Changes

The following step works for both Reader and Writer, both subprojects use the same structure for their Makefile, so the commands are identical.

### Step 1

Make a fresh clone of the repo.

```bash
$ git clone https://github.com/jabcode/jabcode.git -jabcode
```

### Step 2

Navigate into the jabcode reader folder.

```bash
$ cd jabcode/src/jabcodeReader
```

### Step 3

Modify the `Makefile` in the folder as described in the following:

Locate the Makefile target with the identifier `$(TARGET)` and add the following flag to the list of arguments. The position is not relevant, but it's best being placed between the executable and the dollar symbol.

```diff
$(TARGET): $(OBJECTS)
-	$(CC) $^ -L../jabcode/build -ljabcode -L../jabcode/lib -ltiff -lpng16 -lz -lm $(CFLAGS) -o $@
+	$(CC) -no-pie $^ -L../jabcode/build -ljabcode -L../jabcode/lib -ltiff -lpng16 -lz -lm $(CFLAGS) -o $@
```

# Further Steps

From now on, the steps listed in the jabcode repo will work as intended. Visit [source](https://github.com/jabcode/jabcode) or read below. Good luck.

??? note "Steps listed in repo"

    Step 1: Build the JAB Code core library by running make command in src/jabcode.

    Step 2: Build the JAB Code writer by running make command in src/jabcodeWriter.

    Step 3: Build the JAB Code reader by running make command in src/jabcodeReader.
