
#!/usr/bin/perl
# This script requires libintl-perl(>=1.09).
use Locale::TextDomain ("emacs_java_README");
my ($en, $ja);
while (<>) {
	($en, $ja) = (quotemeta('This directory holds the Java sources of the port of GNU Emacs to'), __ 'This directory holds the Java sources of the port of GNU Emacs to'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('Android-like systems, along with files needed to create an application'), __ 'Android-like systems, along with files needed to create an application'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('package out of them.  If you need to build this port, please read the'), __ 'package out of them.  If you need to build this port, please read the'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('file INSTALL in this directory.'), __ 'file INSTALL in this directory.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('The ``org/gnu/emacs\'\' subdirectory contains the Java sources under the'), __ 'The ``org/gnu/emacs\'\' subdirectory contains the Java sources under the'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('``org.gnu.emacs\'\' package identifier.'), __ '``org.gnu.emacs\'\' package identifier.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('``AndroidManifest.xml\'\' contains a manifest describing the Java'), __ '``AndroidManifest.xml\'\' contains a manifest describing the Java'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('sources to the system.'), __ 'sources to the system.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('The ``res\'\' directory contains resources, mainly the Emacs icon and'), __ 'The ``res\'\' directory contains resources, mainly the Emacs icon and'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('several ``boolean resources\'\' which are used as a form of conditional'), __ 'several ``boolean resources\'\' which are used as a form of conditional'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('evaluation for manifest entries.'), __ 'evaluation for manifest entries.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('`emacs.keystore\' is the signing key used to build Emacs.  It is kept'), __ '`emacs.keystore\' is the signing key used to build Emacs.  It is kept'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('here, and we encourage all people redistributing Emacs to use this'), __ 'here, and we encourage all people redistributing Emacs to use this'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('key.  It holds no security value, and otherwise it will be impossible'), __ 'key.  It holds no security value, and otherwise it will be impossible'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('to install different builds of Emacs on top of each other.'), __ 'to install different builds of Emacs on top of each other.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('Please keep the Java code indented with tabs and formatted according'), __ 'Please keep the Java code indented with tabs and formatted according'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('to the rules for C code in the GNU coding standards.  Always use'), __ 'to the rules for C code in the GNU coding standards.  Always use'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('C-style comments.'), __ 'C-style comments.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('======================================================================'), __ '======================================================================'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('OVERVIEW OF JAVA'), __ 'OVERVIEW OF JAVA'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('Emacs developers do not know Java, and there is no reason they should'), __ 'Emacs developers do not know Java, and there is no reason they should'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('have to.  Thus, the code in this directory is confined to what is'), __ 'have to.  Thus, the code in this directory is confined to what is'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('strictly necessary to support Emacs, and only uses a subset of Java'), __ 'strictly necessary to support Emacs, and only uses a subset of Java'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('written in a way that is easily understandable to C programmers.'), __ 'written in a way that is easily understandable to C programmers.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('Java is required because the entire Android runtime is based around'), __ 'Java is required because the entire Android runtime is based around'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('Java, and there is no way to write an Android program which runs'), __ 'Java, and there is no way to write an Android program which runs'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('without Java.'), __ 'without Java.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('This text exists to prime other Emacs developers, already familar with'), __ 'This text exists to prime other Emacs developers, already familar with'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('C, on the basic architecture of the Android port, and to teach them'), __ 'C, on the basic architecture of the Android port, and to teach them'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('how to read and write the Java code found in this directory.'), __ 'how to read and write the Java code found in this directory.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('Java is an object oriented language with automatic memory management'), __ 'Java is an object oriented language with automatic memory management'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('compiled down to bytecode, which is then subject to interpretation by'), __ 'compiled down to bytecode, which is then subject to interpretation by'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('a Java virtual machine.'), __ 'a Java virtual machine.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('What that means, is that:'), __ 'What that means, is that:'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('struct emacs_window'), __ 'struct emacs_window'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('{'), __ '{'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  int some_fields;'), __ '  int some_fields;'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  int of_emacs_window;'), __ '  int of_emacs_window;'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('};'), __ '};'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('static void'), __ 'static void'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('do_something_with_emacs_window (struct emacs_window *a, int n)'), __ 'do_something_with_emacs_window (struct emacs_window *a, int n)'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('{'), __ '{'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  a->some_fields = a->of_emacs_window + n;'), __ '  a->some_fields = a->of_emacs_window + n;'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('}'), __ '}'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('would be written:'), __ 'would be written:'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('public class EmacsWindow'), __ 'public class EmacsWindow'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('{'), __ '{'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  public int someFields;'), __ '  public int someFields;'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  public int ofEmacsWindow;'), __ '  public int ofEmacsWindow;'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('  public void'), __ '  public void'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  doSomething (int n)'), __ '  doSomething (int n)'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  {'), __ '  {'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('    someFields = ofEmacsWindow + n;'), __ '    someFields = ofEmacsWindow + n;'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  }'), __ '  }'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('}'), __ '}'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('and instead of doing:'), __ 'and instead of doing:'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('do_something_with_emacs_window (my_window, 1);'), __ 'do_something_with_emacs_window (my_window, 1);'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('you say:'), __ 'you say:'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('myWindow.doSomething (1);'), __ 'myWindow.doSomething (1);'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('In addition to functions associated with an object of a given class'), __ 'In addition to functions associated with an object of a given class'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('(such as EmacsWindow), Java also has two other kinds of functions.'), __ '(such as EmacsWindow), Java also has two other kinds of functions.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('The first are so-called ``static\'\' functions (the static means'), __ 'The first are so-called ``static\'\' functions (the static means'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('something entirely different from what it does in C.)'), __ 'something entirely different from what it does in C.)'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('A static function, while still having to be defined within a class,'), __ 'A static function, while still having to be defined within a class,'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('can be called without any object.  Instead of the object, you write'), __ 'can be called without any object.  Instead of the object, you write'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('the name of the Java class within which it is defined.	For example,'), __ 'the name of the Java class within which it is defined.	For example,'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('the following C code:'), __ 'the following C code:'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('int'), __ 'int'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('multiply_a_with_b_and_then_add_c (int a, int b, int c)'), __ 'multiply_a_with_b_and_then_add_c (int a, int b, int c)'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('{'), __ '{'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  return a * b + c;'), __ '  return a * b + c;'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('}'), __ '}'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('would be:'), __ 'would be:'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('public class EmacsSomething'), __ 'public class EmacsSomething'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('{'), __ '{'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  public static int'), __ '  public static int'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  multiplyAWithBAndThenAddC (int a, int b, int c)'), __ '  multiplyAWithBAndThenAddC (int a, int b, int c)'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  {'), __ '  {'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('    return a * b + c;'), __ '    return a * b + c;'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  }'), __ '  }'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('};'), __ '};'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('Then, instead of calling:'), __ 'Then, instead of calling:'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('int foo;'), __ 'int foo;'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('foo = multiply_a_with_b_then_add_c (1, 2, 3);'), __ 'foo = multiply_a_with_b_then_add_c (1, 2, 3);'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('you say:'), __ 'you say:'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('int foo;'), __ 'int foo;'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('foo = EmacsSomething.multiplyAWithBAndThenAddC (1, 2, 3);'), __ 'foo = EmacsSomething.multiplyAWithBAndThenAddC (1, 2, 3);'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('In Java, ``static\'\' does not mean that the function is only used'), __ 'In Java, ``static\'\' does not mean that the function is only used'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('within its compilation unit!  Instead, the ``private\'\' qualifier is'), __ 'within its compilation unit!  Instead, the ``private\'\' qualifier is'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('used to mean more or less the same thing:'), __ 'used to mean more or less the same thing:'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('static void'), __ 'static void'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('this_procedure_is_only_used_within_this_file (void)'), __ 'this_procedure_is_only_used_within_this_file (void)'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('{'), __ '{'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  do_something ();'), __ '  do_something ();'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('}'), __ '}'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('becomes'), __ 'becomes'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('public class EmacsSomething'), __ 'public class EmacsSomething'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('{'), __ '{'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  private static void'), __ '  private static void'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  thisProcedureIsOnlyUsedWithinThisClass ()'), __ '  thisProcedureIsOnlyUsedWithinThisClass ()'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  {'), __ '  {'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('  }'), __ '  }'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('}'), __ '}'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('the other kind are called ``constructors\'\'.  They are functions that'), __ 'the other kind are called ``constructors\'\'.  They are functions that'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('must be called to allocate memory to hold a class:'), __ 'must be called to allocate memory to hold a class:'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('public class EmacsFoo'), __ 'public class EmacsFoo'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('{'), __ '{'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  int bar;'), __ '  int bar;'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('  public'), __ '  public'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  EmacsFoo (int tokenA, int tokenB)'), __ '  EmacsFoo (int tokenA, int tokenB)'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  {'), __ '  {'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('    bar = tokenA + tokenB;'), __ '    bar = tokenA + tokenB;'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  }'), __ '  }'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('}'), __ '}'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('now, the following statement:'), __ 'now, the following statement:'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('EmacsFoo foo;'), __ 'EmacsFoo foo;'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('foo = new EmacsFoo (1, 2);'), __ 'foo = new EmacsFoo (1, 2);'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('becomes more or less equivalent to the following C code:'), __ 'becomes more or less equivalent to the following C code:'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('struct emacs_foo'), __ 'struct emacs_foo'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('{'), __ '{'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  int bar;'), __ '  int bar;'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('};'), __ '};'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('struct emacs_foo *'), __ 'struct emacs_foo *'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('make_emacs_foo (int token_a, int token_b)'), __ 'make_emacs_foo (int token_a, int token_b)'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('{'), __ '{'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  struct emacs_foo *foo;'), __ '  struct emacs_foo *foo;'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('  foo = xmalloc (sizeof *foo);'), __ '  foo = xmalloc (sizeof *foo);'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  foo->bar = token_a + token_b;'), __ '  foo->bar = token_a + token_b;'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('  return foo;'), __ '  return foo;'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('}'), __ '}'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('/* ... */'), __ '/* ... */'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('struct emacs_foo *foo;'), __ 'struct emacs_foo *foo;'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('foo = make_emacs_foo (1, 2);'), __ 'foo = make_emacs_foo (1, 2);'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('A class may have any number of constructors, or no constructors at'), __ 'A class may have any number of constructors, or no constructors at'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('all, in which case the compiler inserts an empty constructor.'), __ 'all, in which case the compiler inserts an empty constructor.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta(''), __ ''); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('Sometimes, you will see Java code that looks like this:'), __ 'Sometimes, you will see Java code that looks like this:'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('    allFiles = filesDirectory.listFiles (new FileFilter () {'), __ '    allFiles = filesDirectory.listFiles (new FileFilter () {'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('	@Override'), __ '	@Override'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('	public boolean'), __ '	public boolean'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('	accept (File file)'), __ '	accept (File file)'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('	{'), __ '	{'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('	  return (!file.isDirectory ()'), __ '	  return (!file.isDirectory ()'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('		  && file.getName ().endsWith (".pdmp"));'), __ '		  && file.getName ().endsWith (".pdmp"));'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('	}'), __ '	}'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('      });'), __ '      });'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('This is Java\'s version of GCC\'s nested function extension.  The major'), __ 'This is Java\'s version of GCC\'s nested function extension.  The major'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('difference is that the nested function may still be called even after'), __ 'difference is that the nested function may still be called even after'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('it goes out of scope, and always retains a reference to the class and'), __ 'it goes out of scope, and always retains a reference to the class and'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('local variables around where it was called.'), __ 'local variables around where it was called.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('Being an object-oriented language, Java also allows defining that a'), __ 'Being an object-oriented language, Java also allows defining that a'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('class ``extends\'\' another class.  The following C code:'), __ 'class ``extends\'\' another class.  The following C code:'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('struct a'), __ 'struct a'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('{'), __ '{'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  long thirty_two;'), __ '  long thirty_two;'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('};'), __ '};'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('struct b'), __ 'struct b'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('{'), __ '{'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  struct a a;'), __ '  struct a a;'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  long long sixty_four;'), __ '  long long sixty_four;'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('};'), __ '};'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('extern void do_something (struct a *);'), __ 'extern void do_something (struct a *);'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('void'), __ 'void'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('my_function (struct b *b)'), __ 'my_function (struct b *b)'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('{'), __ '{'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  do_something (&b->a);'), __ '  do_something (&b->a);'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('}'), __ '}'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('is roughly equivalent to the following Java code, split into two'), __ 'is roughly equivalent to the following Java code, split into two'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('files:'), __ 'files:'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('  A.java'), __ '  A.java'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('public class A'), __ 'public class A'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('{'), __ '{'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  int thirtyTwo;'), __ '  int thirtyTwo;'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('  public void'), __ '  public void'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  doSomething ()'), __ '  doSomething ()'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  {'), __ '  {'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('    etcEtcEtc ();'), __ '    etcEtcEtc ();'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  }'), __ '  }'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('};'), __ '};'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('  B.java'), __ '  B.java'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('public class B extends A'), __ 'public class B extends A'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('{'), __ '{'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  long sixty_four;'), __ '  long sixty_four;'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('  public static void'), __ '  public static void'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  myFunction (B b)'), __ '  myFunction (B b)'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  {'), __ '  {'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('    b.doSomething ();'), __ '    b.doSomething ();'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  }'), __ '  }'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('}'), __ '}'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('the Java runtime has transformed the call to ``b.doSomething\'\' to'), __ 'the Java runtime has transformed the call to ``b.doSomething\'\' to'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('``((A) b).doSomething\'\'.'), __ '``((A) b).doSomething\'\'.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('However, Java also allows overriding this behavior, by specifying the'), __ 'However, Java also allows overriding this behavior, by specifying the'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('@Override keyword:'), __ '@Override keyword:'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('public class B extends A'), __ 'public class B extends A'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('{'), __ '{'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  long sixty_four;'), __ '  long sixty_four;'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('  @Override'), __ '  @Override'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  public void'), __ '  public void'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  doSomething ()'), __ '  doSomething ()'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  {'), __ '  {'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('    Something.doSomethingTwo ();'), __ '    Something.doSomethingTwo ();'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('    super.doSomething ();'), __ '    super.doSomething ();'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  }'), __ '  }'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('}'), __ '}'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('now, any call to ``doSomething\'\' on a ``B\'\' created using ``new B ()\'\''), __ 'now, any call to ``doSomething\'\' on a ``B\'\' created using ``new B ()\'\''); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('will end up calling ``Something.doSomethingTwo\'\', before calling back'), __ 'will end up calling ``Something.doSomethingTwo\'\', before calling back'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('to ``A.doSomething\'\'.  This override also applies in reverse; that is'), __ 'to ``A.doSomething\'\'.  This override also applies in reverse; that is'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('to say, even if you write:'), __ 'to say, even if you write:'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('  ((A) b).doSomething ();'), __ '  ((A) b).doSomething ();'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('B\'s version of doSomething will still be called, if ``b\'\' was created'), __ 'B\'s version of doSomething will still be called, if ``b\'\' was created'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('using ``new B ()\'\'.'), __ 'using ``new B ()\'\'.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('This mechanism is used extensively throughout the Java language and'), __ 'This mechanism is used extensively throughout the Java language and'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('Android windowing APIs.'), __ 'Android windowing APIs.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('Elsewhere, you will encounter Java code that defines arrays:'), __ 'Elsewhere, you will encounter Java code that defines arrays:'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('public class EmacsFrobinicator'), __ 'public class EmacsFrobinicator'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('{'), __ '{'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  public static void'), __ '  public static void'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  emacsFrobinicate (int something)'), __ '  emacsFrobinicate (int something)'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  {'), __ '  {'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('    int[] primesFromSomething;'), __ '    int[] primesFromSomething;'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('    primesFromSomething = new int[numberOfPrimes];'), __ '    primesFromSomething = new int[numberOfPrimes];'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('    /* ... */'), __ '    /* ... */'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  }'), __ '  }'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('}'), __ '}'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('Java arrays are similar to C arrays in that they can not grow.  But'), __ 'Java arrays are similar to C arrays in that they can not grow.  But'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('they are very much unlike C arrays in that they are always references'), __ 'they are very much unlike C arrays in that they are always references'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('(as opposed to decaying into pointers in only some situations), and'), __ '(as opposed to decaying into pointers in only some situations), and'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('contain information about their length.'), __ 'contain information about their length.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('If another function named ``frobinicate1\'\' takes an array as an'), __ 'If another function named ``frobinicate1\'\' takes an array as an'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('argument, then it need not take the length of the array.'), __ 'argument, then it need not take the length of the array.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('Instead, it may simply iterate over the array like so:'), __ 'Instead, it may simply iterate over the array like so:'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('int i, k;'), __ 'int i, k;'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('for (i = 0; i < array.length; ++i)'), __ 'for (i = 0; i < array.length; ++i)'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  {'), __ '  {'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('    k = array[i];'), __ '    k = array[i];'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('    Whatever.doSomethingWithK (k);'), __ '    Whatever.doSomethingWithK (k);'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  }'), __ '  }'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('The syntax used to define arrays is also slightly different.  As'), __ 'The syntax used to define arrays is also slightly different.  As'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('arrays are always references, there is no way for you to tell the'), __ 'arrays are always references, there is no way for you to tell the'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('runtime to allocate an array of size N in a structure (class.)'), __ 'runtime to allocate an array of size N in a structure (class.)'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('Instead, if you need an array of that size, you must declare a field'), __ 'Instead, if you need an array of that size, you must declare a field'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('with the type of the array, and allocate the array inside the class\'s'), __ 'with the type of the array, and allocate the array inside the class\'s'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('constructor, like so:'), __ 'constructor, like so:'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('public class EmacsArrayContainer'), __ 'public class EmacsArrayContainer'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('{'), __ '{'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  public int[] myArray;'), __ '  public int[] myArray;'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('  public'), __ '  public'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  EmacsArrayContainer ()'), __ '  EmacsArrayContainer ()'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  {'), __ '  {'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('    myArray = new array[10];'), __ '    myArray = new array[10];'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  }'), __ '  }'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('}'), __ '}'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('while in C, you could just have written:'), __ 'while in C, you could just have written:'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('struct emacs_array_container'), __ 'struct emacs_array_container'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('{'), __ '{'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  int my_array[10];'), __ '  int my_array[10];'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('};'), __ '};'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('or, possibly even better,'), __ 'or, possibly even better,'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('typedef int emacs_array_container[10];'), __ 'typedef int emacs_array_container[10];'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('Alas, Java has no equivalent of `typedef\'.'), __ 'Alas, Java has no equivalent of `typedef\'.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('Like in C, Java string literals are delimited by double quotes.'), __ 'Like in C, Java string literals are delimited by double quotes.'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('Unlike C, however, strings are not NULL-terminated arrays of'), __ 'Unlike C, however, strings are not NULL-terminated arrays of'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('characters, but a distinct type named ``String\'\'.  They store their'), __ 'characters, but a distinct type named ``String\'\'.  They store their'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('own length, characters in Java\'s 16-bit ``char\'\' type, and are capable'), __ 'own length, characters in Java\'s 16-bit ``char\'\' type, and are capable'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('of holding NULL bytes.'), __ 'of holding NULL bytes.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('Instead of writing:'), __ 'Instead of writing:'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('wchar_t character;'), __ 'wchar_t character;'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('extern char *s;'), __ 'extern char *s;'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('size_t s;'), __ 'size_t s;'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('  for (/* determine n, s in a loop.  */)'), __ '  for (/* determine n, s in a loop.  */)'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('    s += mbstowc (&character, s, n);'), __ '    s += mbstowc (&character, s, n);'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('or:'), __ 'or:'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('const char *byte;'), __ 'const char *byte;'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('for (byte = my_string; *byte; ++byte)'), __ 'for (byte = my_string; *byte; ++byte)'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  /* do something with *byte.  */;'), __ '  /* do something with *byte.  */;'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('or perhaps even:'), __ 'or perhaps even:'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('size_t length, i;'), __ 'size_t length, i;'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('char foo;'), __ 'char foo;'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('length = strlen (my_string);'), __ 'length = strlen (my_string);'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('for (i = 0; i < length; ++i)'), __ 'for (i = 0; i < length; ++i)'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  foo = my_string[i];'), __ '  foo = my_string[i];'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('you write:'), __ 'you write:'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('char foo;'), __ 'char foo;'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('int i;'), __ 'int i;'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('for (i = 0; i < myString.length (); ++i)'), __ 'for (i = 0; i < myString.length (); ++i)'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  foo = myString.charAt (0);'), __ '  foo = myString.charAt (0);'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('Java also has stricter rules on what can be used as a truth value in a'), __ 'Java also has stricter rules on what can be used as a truth value in a'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('conditional.  While in C, any non-zero value is true, Java requires'), __ 'conditional.  While in C, any non-zero value is true, Java requires'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('that every truth value be of the boolean type ``boolean\'\'.'), __ 'that every truth value be of the boolean type ``boolean\'\'.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('What this means is that instead of simply writing:'), __ 'What this means is that instead of simply writing:'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('  if (foo || bar)'), __ '  if (foo || bar)'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('where foo can either be 1 or 0, and bar can either be NULL or a'), __ 'where foo can either be 1 or 0, and bar can either be NULL or a'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('pointer to something, you must explicitly write:'), __ 'pointer to something, you must explicitly write:'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('  if (foo != 0 || bar != null)'), __ '  if (foo != 0 || bar != null)'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('in Java.'), __ 'in Java.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('JAVA NATIVE INTERFACE'), __ 'JAVA NATIVE INTERFACE'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('Java also provides an interface for C code to interface with Java.'), __ 'Java also provides an interface for C code to interface with Java.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('C functions exported from a shared library become static Java'), __ 'C functions exported from a shared library become static Java'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('functions within a class, like so:'), __ 'functions within a class, like so:'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('public class EmacsNative'), __ 'public class EmacsNative'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('{'), __ '{'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  /* Obtain the fingerprint of this build of Emacs.  The fingerprint'), __ '  /* Obtain the fingerprint of this build of Emacs.  The fingerprint'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('     can be used to determine the dump file name.  */'), __ '     can be used to determine the dump file name.  */'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  public static native String getFingerprint ();'), __ '  public static native String getFingerprint ();'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('  /* Set certain parameters before initializing Emacs.'), __ '  /* Set certain parameters before initializing Emacs.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('     assetManager must be the asset manager associated with the'), __ '     assetManager must be the asset manager associated with the'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('     context that is loading Emacs.  It is saved and remains for the'), __ '     context that is loading Emacs.  It is saved and remains for the'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('     remainder the lifetime of the Emacs process.'), __ '     remainder the lifetime of the Emacs process.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('     filesDir must be the package\'s data storage location for the'), __ '     filesDir must be the package\'s data storage location for the'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('     current Android user.'), __ '     current Android user.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('     libDir must be the package\'s data storage location for native'), __ '     libDir must be the package\'s data storage location for native'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('     libraries.	 It is used as PATH.'), __ '     libraries.	 It is used as PATH.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('     cacheDir must be the package\'s cache directory.  It is used as'), __ '     cacheDir must be the package\'s cache directory.  It is used as'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('     the `temporary-file-directory\'.'), __ '     the `temporary-file-directory\'.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('     pixelDensityX and pixelDensityY are the DPI values that will be'), __ '     pixelDensityX and pixelDensityY are the DPI values that will be'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('     used by Emacs.'), __ '     used by Emacs.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('     classPath must be the classpath of this app_process process, or'), __ '     classPath must be the classpath of this app_process process, or'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('     NULL.'), __ '     NULL.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('     emacsService must be the EmacsService singleton, or NULL.	*/'), __ '     emacsService must be the EmacsService singleton, or NULL.	*/'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  public static native void setEmacsParams (AssetManager assetManager,'), __ '  public static native void setEmacsParams (AssetManager assetManager,'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('					    String filesDir,'), __ '					    String filesDir,'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('					    String libDir,'), __ '					    String libDir,'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('					    String cacheDir,'), __ '					    String cacheDir,'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('					    float pixelDensityX,'), __ '					    float pixelDensityX,'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('					    float pixelDensityY,'), __ '					    float pixelDensityY,'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('					    String classPath,'), __ '					    String classPath,'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('					    EmacsService emacsService);'), __ '					    EmacsService emacsService);'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('}'), __ '}'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('Where the corresponding C functions are located in android.c, and'), __ 'Where the corresponding C functions are located in android.c, and'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('loaded by the special invocation:'), __ 'loaded by the special invocation:'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('  static'), __ '  static'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  {'), __ '  {'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('    System.loadLibrary ("emacs");'), __ '    System.loadLibrary ("emacs");'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  };'), __ '  };'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('where ``static\'\' defines a section of code which will be run upon the'), __ 'where ``static\'\' defines a section of code which will be run upon the'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('object (containing class) being loaded.  This is like:'), __ 'object (containing class) being loaded.  This is like:'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('  __attribute__((constructor))'), __ '  __attribute__((constructor))'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('on systems where shared object constructors are supported.'), __ 'on systems where shared object constructors are supported.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('See http://docs.oracle.com/en/java/javase/19/docs/specs/jni/intro.html'), __ 'See http://docs.oracle.com/en/java/javase/19/docs/specs/jni/intro.html'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('for more details.'), __ 'for more details.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta(''), __ ''); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('OVERVIEW OF ANDROID'), __ 'OVERVIEW OF ANDROID'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('When the Android system starts an application, it does not actually'), __ 'When the Android system starts an application, it does not actually'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('call the application\'s ``main\'\' function.  It may not even start the'), __ 'call the application\'s ``main\'\' function.  It may not even start the'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('application\'s process if one is already running.'), __ 'application\'s process if one is already running.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('Instead, Android is organized around components.  When the user opens'), __ 'Instead, Android is organized around components.  When the user opens'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('the ``Emacs\'\' icon, the Android system looks up and starts the'), __ 'the ``Emacs\'\' icon, the Android system looks up and starts the'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('component associated with the ``Emacs\'\' icon.  In this case, the'), __ 'component associated with the ``Emacs\'\' icon.  In this case, the'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('component is called an activity, and is declared in'), __ 'component is called an activity, and is declared in'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('the AndroidManifest.xml in this directory:'), __ 'the AndroidManifest.xml in this directory:'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('    <activity android:name="org.gnu.emacs.EmacsActivity"'), __ '    <activity android:name="org.gnu.emacs.EmacsActivity"'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('	      android:launchMode="singleTop"'), __ '	      android:launchMode="singleTop"'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('	      android:windowSoftInputMode="adjustResize"'), __ '	      android:windowSoftInputMode="adjustResize"'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('	      android:exported="true"'), __ '	      android:exported="true"'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('	      android:configChanges="orientation|screenSize|screenLayout|keyboardHidden">'), __ '	      android:configChanges="orientation|screenSize|screenLayout|keyboardHidden">'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('      <intent-filter>'), __ '      <intent-filter>'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('	<action android:name="android.intent.action.MAIN" />'), __ '	<action android:name="android.intent.action.MAIN" />'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('	<category android:name="android.intent.category.DEFAULT" />'), __ '	<category android:name="android.intent.category.DEFAULT" />'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('	<category android:name="android.intent.category.LAUNCHER" />'), __ '	<category android:name="android.intent.category.LAUNCHER" />'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('      </intent-filter>'), __ '      </intent-filter>'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('    </activity>'), __ '    </activity>'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('This tells Android to start the activity defined in ``EmacsActivity\'\''), __ 'This tells Android to start the activity defined in ``EmacsActivity\'\''); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('(defined in org/gnu/emacs/EmacsActivity.java), a class extending the'), __ '(defined in org/gnu/emacs/EmacsActivity.java), a class extending the'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('Android class ``Activity\'\'.'), __ 'Android class ``Activity\'\'.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('To do so, the Android system creates an instance of ``EmacsActivity\'\''), __ 'To do so, the Android system creates an instance of ``EmacsActivity\'\''); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('and the window system window associated with it, and eventually calls:'), __ 'and the window system window associated with it, and eventually calls:'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('  Activity activity;'), __ '  Activity activity;'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('  activity.onCreate (...);'), __ '  activity.onCreate (...);'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('But which ``onCreate\'\' is really called?'), __ 'But which ``onCreate\'\' is really called?'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('It is actually the ``onCreate\'\' defined in EmacsActivity.java, as'), __ 'It is actually the ``onCreate\'\' defined in EmacsActivity.java, as'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('it overrides the ``onCreate\'\' defined in Android\'s own Activity class:'), __ 'it overrides the ``onCreate\'\' defined in Android\'s own Activity class:'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('  @Override'), __ '  @Override'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  public void'), __ '  public void'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  onCreate (Bundle savedInstanceState)'), __ '  onCreate (Bundle savedInstanceState)'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  {'), __ '  {'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('    FrameLayout.LayoutParams params;'), __ '    FrameLayout.LayoutParams params;'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('    Intent intent;'), __ '    Intent intent;'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('Then, this is what happens step-by-step within the ``onCreate\'\''), __ 'Then, this is what happens step-by-step within the ``onCreate\'\''); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('function:'), __ 'function:'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('    /* See if Emacs should be started with -Q.	*/'), __ '    /* See if Emacs should be started with -Q.	*/'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('    intent = getIntent ();'), __ '    intent = getIntent ();'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('    EmacsService.needDashQ'), __ '    EmacsService.needDashQ'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('      = intent.getBooleanExtra ("org.gnu.emacs.START_DASH_Q",'), __ '      = intent.getBooleanExtra ("org.gnu.emacs.START_DASH_Q",'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('				false);'), __ '				false);'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('Here, Emacs obtains the intent (a request to start a component) which'), __ 'Here, Emacs obtains the intent (a request to start a component) which'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('was used to start Emacs, and sets a special flag if it contains a'), __ 'was used to start Emacs, and sets a special flag if it contains a'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('request for Emacs to start with the ``-Q\'\' command-line argument.'), __ 'request for Emacs to start with the ``-Q\'\' command-line argument.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('    /* Set the theme to one without a title bar.  */'), __ '    /* Set the theme to one without a title bar.  */'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('    if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.ICE_CREAM_SANDWICH)'), __ '    if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.ICE_CREAM_SANDWICH)'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('      setTheme (android.R.style.Theme_DeviceDefault_NoActionBar);'), __ '      setTheme (android.R.style.Theme_DeviceDefault_NoActionBar);'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('    else'), __ '    else'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('      setTheme (android.R.style.Theme_NoTitleBar);'), __ '      setTheme (android.R.style.Theme_NoTitleBar);'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('Next, Emacs sets an appropriate theme for the activity\'s associated'), __ 'Next, Emacs sets an appropriate theme for the activity\'s associated'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('window decorations.'), __ 'window decorations.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('    params = new FrameLayout.LayoutParams (LayoutParams.MATCH_PARENT,'), __ '    params = new FrameLayout.LayoutParams (LayoutParams.MATCH_PARENT,'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('					   LayoutParams.MATCH_PARENT);'), __ '					   LayoutParams.MATCH_PARENT);'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('    /* Make the frame layout.  */'), __ '    /* Make the frame layout.  */'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('    layout = new FrameLayout (this);'), __ '    layout = new FrameLayout (this);'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('    layout.setLayoutParams (params);'), __ '    layout.setLayoutParams (params);'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('    /* Set it as the content view.  */'), __ '    /* Set it as the content view.  */'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('    setContentView (layout);'), __ '    setContentView (layout);'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('Then, Emacs creates a ``FrameLayout\'\', a widget that holds a single'), __ 'Then, Emacs creates a ``FrameLayout\'\', a widget that holds a single'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('other widget, and makes it the activity\'s ``content view\'\'.'), __ 'other widget, and makes it the activity\'s ``content view\'\'.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('The activity itself is a ``FrameLayout\'\', so the ``layout parameters\'\''), __ 'The activity itself is a ``FrameLayout\'\', so the ``layout parameters\'\''); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('here apply to the FrameLayout itself, and not its children.'), __ 'here apply to the FrameLayout itself, and not its children.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('    /* Maybe start the Emacs service if necessary.  */'), __ '    /* Maybe start the Emacs service if necessary.  */'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('    EmacsService.startEmacsService (this);'), __ '    EmacsService.startEmacsService (this);'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('And after that, Emacs calls the static function ``startEmacsService\'\','), __ 'And after that, Emacs calls the static function ``startEmacsService\'\','); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('defined in the class ``EmacsService\'\'.	This starts the Emacs service'), __ 'defined in the class ``EmacsService\'\'.	This starts the Emacs service'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('component if necessary.'), __ 'component if necessary.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('    /* Add this activity to the list of available activities.  */'), __ '    /* Add this activity to the list of available activities.  */'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('    EmacsWindowAttachmentManager.MANAGER.registerWindowConsumer (this);'), __ '    EmacsWindowAttachmentManager.MANAGER.registerWindowConsumer (this);'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('    super.onCreate (savedInstanceState);'), __ '    super.onCreate (savedInstanceState);'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('Finally, Emacs registers that this activity is now ready to receive'), __ 'Finally, Emacs registers that this activity is now ready to receive'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('top-level frames (windows) created from Lisp.'), __ 'top-level frames (windows) created from Lisp.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('Activities come and go, but Emacs has to stay running in the mean'), __ 'Activities come and go, but Emacs has to stay running in the mean'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('time.  Thus, Emacs also defines a ``service\'\', which is a long-running'), __ 'time.  Thus, Emacs also defines a ``service\'\', which is a long-running'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('component that the Android system allows to run in the background.'), __ 'component that the Android system allows to run in the background.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('Let us go back and review the definition of ``startEmacsService\'\':'), __ 'Let us go back and review the definition of ``startEmacsService\'\':'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('  public static void'), __ '  public static void'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  startEmacsService (Context context)'), __ '  startEmacsService (Context context)'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  {'), __ '  {'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('    if (EmacsService.SERVICE == null)'), __ '    if (EmacsService.SERVICE == null)'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('      {'), __ '      {'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('	if (Build.VERSION.SDK_INT < Build.VERSION_CODES.O)'), __ '	if (Build.VERSION.SDK_INT < Build.VERSION_CODES.O)'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('	  /* Start the Emacs service now.  */'), __ '	  /* Start the Emacs service now.  */'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('	  context.startService (new Intent (context,'), __ '	  context.startService (new Intent (context,'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('					    EmacsService.class));'), __ '					    EmacsService.class));'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('	else'), __ '	else'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('	  /* Display the permanant notification and start Emacs as a'), __ '	  /* Display the permanant notification and start Emacs as a'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('	     foreground service.  */'), __ '	     foreground service.  */'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('	  context.startForegroundService (new Intent (context,'), __ '	  context.startForegroundService (new Intent (context,'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('						      EmacsService.class));'), __ '						      EmacsService.class));'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('      }'), __ '      }'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  }'), __ '  }'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('If ``EmacsService.SERVICE\'\' does not yet exist, what this does is to'), __ 'If ``EmacsService.SERVICE\'\' does not yet exist, what this does is to'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('tell the ``context\'\' (the equivalent of an Xlib Display *) to start a'), __ 'tell the ``context\'\' (the equivalent of an Xlib Display *) to start a'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('service defined by the class ``EmacsService\'\'.	Eventually, this'), __ 'service defined by the class ``EmacsService\'\'.	Eventually, this'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('results in ``EmacsService.onCreate\'\' being called:'), __ 'results in ``EmacsService.onCreate\'\' being called:'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('  @Override'), __ '  @Override'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  public void'), __ '  public void'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  onCreate ()'), __ '  onCreate ()'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  {'), __ '  {'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('    AssetManager manager;'), __ '    AssetManager manager;'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('    Context app_context;'), __ '    Context app_context;'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('    String filesDir, libDir, cacheDir, classPath;'), __ '    String filesDir, libDir, cacheDir, classPath;'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('    double pixelDensityX;'), __ '    double pixelDensityX;'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('    double pixelDensityY;'), __ '    double pixelDensityY;'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('Here is what this function does, step-by-step:'), __ 'Here is what this function does, step-by-step:'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('    SERVICE = this;'), __ '    SERVICE = this;'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('First, it sets the special static variable ``SERVICE\'\' to ``this\'\','), __ 'First, it sets the special static variable ``SERVICE\'\' to ``this\'\','); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('which is a pointer to the ``EmacsService\' object that was created.'), __ 'which is a pointer to the ``EmacsService\' object that was created.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('    handler = new Handler (Looper.getMainLooper ());'), __ '    handler = new Handler (Looper.getMainLooper ());'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('Next, it creates a ``Handler\'\' object for the ``main looper\'\'.'), __ 'Next, it creates a ``Handler\'\' object for the ``main looper\'\'.'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('This is a helper structure which allows executing code on the Android'), __ 'This is a helper structure which allows executing code on the Android'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('user interface thread.'), __ 'user interface thread.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('    manager = getAssets ();'), __ '    manager = getAssets ();'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('    app_context = getApplicationContext ();'), __ '    app_context = getApplicationContext ();'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('    metrics = getResources ().getDisplayMetrics ();'), __ '    metrics = getResources ().getDisplayMetrics ();'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('    pixelDensityX = metrics.xdpi;'), __ '    pixelDensityX = metrics.xdpi;'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('    pixelDensityY = metrics.ydpi;'), __ '    pixelDensityY = metrics.ydpi;'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('Finally, it obtains:'), __ 'Finally, it obtains:'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('  - the asset manager, which is used to retrieve assets packaged'), __ '  - the asset manager, which is used to retrieve assets packaged'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('    into the Emacs application package.'), __ '    into the Emacs application package.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('  - the application context, used to obtain application specific'), __ '  - the application context, used to obtain application specific'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('    information.'), __ '    information.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('  - the display metrics, and from them, the X and Y densities in dots'), __ '  - the display metrics, and from them, the X and Y densities in dots'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('    per inch.'), __ '    per inch.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('Then, inside a ``try\'\' block:'), __ 'Then, inside a ``try\'\' block:'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('    try'), __ '    try'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('      {'), __ '      {'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('	/* Configure Emacs with the asset manager and other necessary'), __ '	/* Configure Emacs with the asset manager and other necessary'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('	   parameters.	*/'), __ '	   parameters.	*/'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('	filesDir = app_context.getFilesDir ().getCanonicalPath ();'), __ '	filesDir = app_context.getFilesDir ().getCanonicalPath ();'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('	libDir = getLibraryDirectory ();'), __ '	libDir = getLibraryDirectory ();'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('	cacheDir = app_context.getCacheDir ().getCanonicalPath ();'), __ '	cacheDir = app_context.getCacheDir ().getCanonicalPath ();'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('It obtains the names of the Emacs home, shared library, and temporary'), __ 'It obtains the names of the Emacs home, shared library, and temporary'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('file directories.'), __ 'file directories.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('	/* Now provide this application\'s apk file, so a recursive'), __ '	/* Now provide this application\'s apk file, so a recursive'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('	   invocation of app_process (through android-emacs) can'), __ '	   invocation of app_process (through android-emacs) can'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('	   find EmacsNoninteractive.  */'), __ '	   find EmacsNoninteractive.  */'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('	classPath = getApkFile ();'), __ '	classPath = getApkFile ();'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('The name of the Emacs application package.'), __ 'The name of the Emacs application package.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('	Log.d (TAG, "Initializing Emacs, where filesDir = " + filesDir'), __ '	Log.d (TAG, "Initializing Emacs, where filesDir = " + filesDir'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('	       + ", libDir = " + libDir + ", and classPath = " + classPath);'), __ '	       + ", libDir = " + libDir + ", and classPath = " + classPath);'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('Prints a debug message to the Android system log with this'), __ 'Prints a debug message to the Android system log with this'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('information.'), __ 'information.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('	EmacsNative.setEmacsParams (manager, filesDir, libDir,'), __ '	EmacsNative.setEmacsParams (manager, filesDir, libDir,'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('				    cacheDir, (float) pixelDensityX,'), __ '				    cacheDir, (float) pixelDensityX,'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('				    (float) pixelDensityY,'), __ '				    (float) pixelDensityY,'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('				    classPath, this);'), __ '				    classPath, this);'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('And calls the native function ``setEmacsParams\'\' (defined in'), __ 'And calls the native function ``setEmacsParams\'\' (defined in'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('android.c) to configure Emacs with this information.'), __ 'android.c) to configure Emacs with this information.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('	/* Start the thread that runs Emacs.  */'), __ '	/* Start the thread that runs Emacs.  */'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('	thread = new EmacsThread (this, needDashQ);'), __ '	thread = new EmacsThread (this, needDashQ);'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('	thread.start ();'), __ '	thread.start ();'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('Then, it allocates an ``EmacsThread\'\' object, and starts that thread.'), __ 'Then, it allocates an ``EmacsThread\'\' object, and starts that thread.'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('Inside that thread is where Emacs\'s C code runs.'), __ 'Inside that thread is where Emacs\'s C code runs.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('      }'), __ '      }'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('    catch (IOException exception)'), __ '    catch (IOException exception)'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('      {'), __ '      {'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('	EmacsNative.emacsAbort ();'), __ '	EmacsNative.emacsAbort ();'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('	return;'), __ '	return;'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('And here is the purpose of the ``try\'\' block.  Functions related to'), __ 'And here is the purpose of the ``try\'\' block.  Functions related to'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('file names in Java will signal errors of various types upon failure.'), __ 'file names in Java will signal errors of various types upon failure.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('This ``catch\'\' block means that the Java virtual machine will abort'), __ 'This ``catch\'\' block means that the Java virtual machine will abort'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('execution of the contents of the ``try\'\' block as soon as an error of'), __ 'execution of the contents of the ``try\'\' block as soon as an error of'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('type ``IOException\'\' is encountered, and begin executing the contents'), __ 'type ``IOException\'\' is encountered, and begin executing the contents'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('of the ``catch\'\' block.'), __ 'of the ``catch\'\' block.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('Any failure of that type here is a crash, and'), __ 'Any failure of that type here is a crash, and'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('``EmacsNative.emacsAbort\'\' is called to quickly abort the process to'), __ '``EmacsNative.emacsAbort\'\' is called to quickly abort the process to'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('get a useful backtrace.'), __ 'get a useful backtrace.'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('      }'), __ '      }'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  }'), __ '  }'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('Now, let us look at the definition of the class ``EmacsThread\'\', found'), __ 'Now, let us look at the definition of the class ``EmacsThread\'\', found'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('in org/gnu/emacs/EmacsThread.java:'), __ 'in org/gnu/emacs/EmacsThread.java:'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('public class EmacsThread extends Thread'), __ 'public class EmacsThread extends Thread'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('{'), __ '{'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  /* Whether or not Emacs should be started -Q.	 */'), __ '  /* Whether or not Emacs should be started -Q.	 */'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  private boolean startDashQ;'), __ '  private boolean startDashQ;'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('  public'), __ '  public'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  EmacsThread (EmacsService service, boolean startDashQ)'), __ '  EmacsThread (EmacsService service, boolean startDashQ)'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  {'), __ '  {'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('    super ("Emacs main thread");'), __ '    super ("Emacs main thread");'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('    this.startDashQ = startDashQ;'), __ '    this.startDashQ = startDashQ;'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  }'), __ '  }'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('  @Override'), __ '  @Override'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  public void'), __ '  public void'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  run ()'), __ '  run ()'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  {'), __ '  {'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('    String args[];'), __ '    String args[];'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('    if (!startDashQ)'), __ '    if (!startDashQ)'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('      args = new String[] { "libandroid-emacs.so", };'), __ '      args = new String[] { "libandroid-emacs.so", };'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('    else'), __ '    else'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('      args = new String[] { "libandroid-emacs.so", "-Q", };'), __ '      args = new String[] { "libandroid-emacs.so", "-Q", };'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('    /* Run the native code now.	 */'), __ '    /* Run the native code now.	 */'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('    EmacsNative.initEmacs (args, EmacsApplication.dumpFileName);'), __ '    EmacsNative.initEmacs (args, EmacsApplication.dumpFileName);'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  }'), __ '  }'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('};'), __ '};'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('The class itself defines a single field, ``startDashQ\'\', a constructor'), __ 'The class itself defines a single field, ``startDashQ\'\', a constructor'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('with an unused argument of the type ``EmacsService\'\' (which is useful'), __ 'with an unused argument of the type ``EmacsService\'\' (which is useful'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('while debugging) and a flag ``startDashQ\'\', and a single function'), __ 'while debugging) and a flag ``startDashQ\'\', and a single function'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('``run\'\', overriding the same function in the class ``Thread\'\'.'), __ '``run\'\', overriding the same function in the class ``Thread\'\'.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('When ``thread.start\'\' is called, the Java virtual machine creates a'), __ 'When ``thread.start\'\' is called, the Java virtual machine creates a'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('new thread, and then calls the function ``run\'\' within that thread.'), __ 'new thread, and then calls the function ``run\'\' within that thread.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('This function then computes a suitable argument vector, and calls'), __ 'This function then computes a suitable argument vector, and calls'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('``EmacsNative.initEmacs\'\' (defined in android.c), which then calls a'), __ '``EmacsNative.initEmacs\'\' (defined in android.c), which then calls a'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('modified version of the regular Emacs ``main\'\' function.'), __ 'modified version of the regular Emacs ``main\'\' function.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('At that point, Emacs initialization proceeds as usual:'), __ 'At that point, Emacs initialization proceeds as usual:'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('Vinitial_window_system is set, loadup.el calls `normal-top-level\','), __ 'Vinitial_window_system is set, loadup.el calls `normal-top-level\','); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('which calls `command-line\', and finally'), __ 'which calls `command-line\', and finally'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('`window-system-initialization\', which initializes the `android\''), __ '`window-system-initialization\', which initializes the `android\''); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('terminal interface as usual.'), __ 'terminal interface as usual.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('What happens here is the same as on other platforms.  Now, here is'), __ 'What happens here is the same as on other platforms.  Now, here is'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('what happens when the initial frame is created: Fx_create_frame calls'), __ 'what happens when the initial frame is created: Fx_create_frame calls'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('`android_create_frame_window\' to create a top level window:'), __ '`android_create_frame_window\' to create a top level window:'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('static void'), __ 'static void'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('android_create_frame_window (struct frame *f)'), __ 'android_create_frame_window (struct frame *f)'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('{'), __ '{'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  struct android_set_window_attributes attributes;'), __ '  struct android_set_window_attributes attributes;'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  enum android_window_value_mask attribute_mask;'), __ '  enum android_window_value_mask attribute_mask;'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('  attributes.background_pixel = FRAME_BACKGROUND_PIXEL (f);'), __ '  attributes.background_pixel = FRAME_BACKGROUND_PIXEL (f);'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  attribute_mask = ANDROID_CW_BACK_PIXEL;'), __ '  attribute_mask = ANDROID_CW_BACK_PIXEL;'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('  block_input ();'), __ '  block_input ();'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  FRAME_ANDROID_WINDOW (f)'), __ '  FRAME_ANDROID_WINDOW (f)'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('    = android_create_window (FRAME_DISPLAY_INFO (f)->root_window,'), __ '    = android_create_window (FRAME_DISPLAY_INFO (f)->root_window,'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('			     f->left_pos,'), __ '			     f->left_pos,'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('			     f->top_pos,'), __ '			     f->top_pos,'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('			     FRAME_PIXEL_WIDTH (f),'), __ '			     FRAME_PIXEL_WIDTH (f),'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('			     FRAME_PIXEL_HEIGHT (f),'), __ '			     FRAME_PIXEL_HEIGHT (f),'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('			     attribute_mask, &attributes);'), __ '			     attribute_mask, &attributes);'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  unblock_input ();'), __ '  unblock_input ();'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('}'), __ '}'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('This calls the function `android_create_window\' with some arguments'), __ 'This calls the function `android_create_window\' with some arguments'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('whose meanings are identical to the arguments to `XCreateWindow\'.'), __ 'whose meanings are identical to the arguments to `XCreateWindow\'.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('Here is the definition of `android_create_window\', in android.c:'), __ 'Here is the definition of `android_create_window\', in android.c:'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('android_window'), __ 'android_window'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('android_create_window (android_window parent, int x, int y,'), __ 'android_create_window (android_window parent, int x, int y,'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('		       int width, int height,'), __ '		       int width, int height,'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('		       enum android_window_value_mask value_mask,'), __ '		       enum android_window_value_mask value_mask,'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('		       struct android_set_window_attributes *attrs)'), __ '		       struct android_set_window_attributes *attrs)'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('{'), __ '{'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  static jclass class;'), __ '  static jclass class;'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  static jmethodID constructor;'), __ '  static jmethodID constructor;'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  jobject object, parent_object, old;'), __ '  jobject object, parent_object, old;'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  android_window window;'), __ '  android_window window;'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  android_handle prev_max_handle;'), __ '  android_handle prev_max_handle;'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  bool override_redirect;'), __ '  bool override_redirect;'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('What does it do? First, some context:'), __ 'What does it do? First, some context:'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('At any time, there can be at most 65535 Java objects referred to by'), __ 'At any time, there can be at most 65535 Java objects referred to by'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('the rest of Emacs through the Java native interface.  Each such object'), __ 'the rest of Emacs through the Java native interface.  Each such object'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('is assigned a ``handle\'\' (similar to an XID on X) and given a unique'), __ 'is assigned a ``handle\'\' (similar to an XID on X) and given a unique'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('type.  The function `android_resolve_handle\' returns the JNI `jobject\''), __ 'type.  The function `android_resolve_handle\' returns the JNI `jobject\''); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('associated with a given handle.'), __ 'associated with a given handle.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('  parent_object = android_resolve_handle (parent, ANDROID_HANDLE_WINDOW);'), __ '  parent_object = android_resolve_handle (parent, ANDROID_HANDLE_WINDOW);'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('Here, it is being used to look up the `jobject\' associated with the'), __ 'Here, it is being used to look up the `jobject\' associated with the'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('`parent\' handle.'), __ '`parent\' handle.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('  prev_max_handle = max_handle;'), __ '  prev_max_handle = max_handle;'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  window = android_alloc_id ();'), __ '  window = android_alloc_id ();'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('Next, `max_handle\' is saved, and a new handle is allocated for'), __ 'Next, `max_handle\' is saved, and a new handle is allocated for'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('`window\'.'), __ '`window\'.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('  if (!window)'), __ '  if (!window)'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('    error ("Out of window handles!");'), __ '    error ("Out of window handles!");'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('An error is signalled if Emacs runs out of available handles.'), __ 'An error is signalled if Emacs runs out of available handles.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('  if (!class)'), __ '  if (!class)'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('    {'), __ '    {'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('      class = (*android_java_env)->FindClass (android_java_env,'), __ '      class = (*android_java_env)->FindClass (android_java_env,'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('					      "org/gnu/emacs/EmacsWindow");'), __ '					      "org/gnu/emacs/EmacsWindow");'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('      assert (class != NULL);'), __ '      assert (class != NULL);'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('Then, if this initialization has not yet been completed, Emacs'), __ 'Then, if this initialization has not yet been completed, Emacs'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('proceeds to find the Java class named ``EmacsWindow\'\'.'), __ 'proceeds to find the Java class named ``EmacsWindow\'\'.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('      constructor'), __ '      constructor'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('	= (*android_java_env)->GetMethodID (android_java_env, class, "<init>",'), __ '	= (*android_java_env)->GetMethodID (android_java_env, class, "<init>",'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('					    "(SLorg/gnu/emacs/EmacsWindow;"'), __ '					    "(SLorg/gnu/emacs/EmacsWindow;"'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('					    "IIIIZ)V");'), __ '					    "IIIIZ)V");'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('      assert (constructor != NULL);'), __ '      assert (constructor != NULL);'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('And it tries to look up the constructor, which should take seven'), __ 'And it tries to look up the constructor, which should take seven'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('arguments:'), __ 'arguments:'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('  S					- a short.  (the handle ID)'), __ '  S					- a short.  (the handle ID)'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  Lorg/gnu/Emacs/EmacsWindow;		- an instance of the EmacsWindow'), __ '  Lorg/gnu/Emacs/EmacsWindow;		- an instance of the EmacsWindow'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('					  class.  (the parent)'), __ '					  class.  (the parent)'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  IIII					- four ints.  (the window geometry.)'), __ '  IIII					- four ints.  (the window geometry.)'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  Z					- a boolean.  (whether or not the'), __ '  Z					- a boolean.  (whether or not the'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('					  window is override-redirect; see'), __ '					  window is override-redirect; see'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('					  XChangeWindowAttributes.)'), __ '					  XChangeWindowAttributes.)'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('      old = class;'), __ '      old = class;'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('      class = (*android_java_env)->NewGlobalRef (android_java_env, class);'), __ '      class = (*android_java_env)->NewGlobalRef (android_java_env, class);'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('      (*android_java_env)->ExceptionClear (android_java_env);'), __ '      (*android_java_env)->ExceptionClear (android_java_env);'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('      ANDROID_DELETE_LOCAL_REF (old);'), __ '      ANDROID_DELETE_LOCAL_REF (old);'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('Next, it saves a global reference to the class and deletes the local'), __ 'Next, it saves a global reference to the class and deletes the local'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('reference.  Global references will never be deallocated by the Java'), __ 'reference.  Global references will never be deallocated by the Java'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('virtual machine as long as they still exist.'), __ 'virtual machine as long as they still exist.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('      if (!class)'), __ '      if (!class)'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('	memory_full (0);'), __ '	memory_full (0);'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('    }'), __ '    }'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('  /* N.B. that ANDROID_CW_OVERRIDE_REDIRECT can only be set at window'), __ '  /* N.B. that ANDROID_CW_OVERRIDE_REDIRECT can only be set at window'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('     creation time.  */'), __ '     creation time.  */'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  override_redirect = ((value_mask'), __ '  override_redirect = ((value_mask'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('			& ANDROID_CW_OVERRIDE_REDIRECT)'), __ '			& ANDROID_CW_OVERRIDE_REDIRECT)'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('		       && attrs->override_redirect);'), __ '		       && attrs->override_redirect);'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('  object = (*android_java_env)->NewObject (android_java_env, class,'), __ '  object = (*android_java_env)->NewObject (android_java_env, class,'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('					   constructor, (jshort) window,'), __ '					   constructor, (jshort) window,'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('					   parent_object, (jint) x, (jint) y,'), __ '					   parent_object, (jint) x, (jint) y,'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('					   (jint) width, (jint) height,'), __ '					   (jint) width, (jint) height,'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('					   (jboolean) override_redirect);'), __ '					   (jboolean) override_redirect);'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('Then, it creates an instance of the ``EmacsWindow\'\' class with the'), __ 'Then, it creates an instance of the ``EmacsWindow\'\' class with the'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('appropriate arguments and previously determined constructor.'), __ 'appropriate arguments and previously determined constructor.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('  if (!object)'), __ '  if (!object)'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('    {'), __ '    {'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('      (*android_java_env)->ExceptionClear (android_java_env);'), __ '      (*android_java_env)->ExceptionClear (android_java_env);'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('      max_handle = prev_max_handle;'), __ '      max_handle = prev_max_handle;'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('      memory_full (0);'), __ '      memory_full (0);'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('If creating the object fails, Emacs clears the ``pending exception\'\''), __ 'If creating the object fails, Emacs clears the ``pending exception\'\''); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('and signals that it is out of memory.'), __ 'and signals that it is out of memory.'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('    }'), __ '    }'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('  android_handles[window].type = ANDROID_HANDLE_WINDOW;'), __ '  android_handles[window].type = ANDROID_HANDLE_WINDOW;'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  android_handles[window].handle'), __ '  android_handles[window].handle'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('    = (*android_java_env)->NewGlobalRef (android_java_env,'), __ '    = (*android_java_env)->NewGlobalRef (android_java_env,'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('					 object);'), __ '					 object);'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  (*android_java_env)->ExceptionClear (android_java_env);'), __ '  (*android_java_env)->ExceptionClear (android_java_env);'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  ANDROID_DELETE_LOCAL_REF (object);'), __ '  ANDROID_DELETE_LOCAL_REF (object);'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('Otherwise, it associates a new global reference to the object with the'), __ 'Otherwise, it associates a new global reference to the object with the'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('handle, and deletes the local reference returned from the JNI'), __ 'handle, and deletes the local reference returned from the JNI'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('NewObject function.'), __ 'NewObject function.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('  if (!android_handles[window].handle)'), __ '  if (!android_handles[window].handle)'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('    memory_full (0);'), __ '    memory_full (0);'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('If allocating the global reference fails, Emacs signals that it is out'), __ 'If allocating the global reference fails, Emacs signals that it is out'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('of memory.'), __ 'of memory.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('  android_change_window_attributes (window, value_mask, attrs);'), __ '  android_change_window_attributes (window, value_mask, attrs);'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  return window;'), __ '  return window;'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('Otherwise, it applies the specified window attributes and returns the'), __ 'Otherwise, it applies the specified window attributes and returns the'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('handle of the new window.'), __ 'handle of the new window.'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('}'), __ '}'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta(''), __ ''); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('DRAWABLES, CURSORS AND HANDLES'), __ 'DRAWABLES, CURSORS AND HANDLES'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('Each widget created by Emacs corresponds to a single ``window\'\', which'), __ 'Each widget created by Emacs corresponds to a single ``window\'\', which'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('has its own backing store.  This arrangement is quite similar to X.'), __ 'has its own backing store.  This arrangement is quite similar to X.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('C code does not directly refer to the EmacsView widgets that implement'), __ 'C code does not directly refer to the EmacsView widgets that implement'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('the UI logic behind windows.  Instead, its handles refer to'), __ 'the UI logic behind windows.  Instead, its handles refer to'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('EmacsWindow structures, which contain the state necessary to interact'), __ 'EmacsWindow structures, which contain the state necessary to interact'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('with the widgets in an orderly and synchronized manner.'), __ 'with the widgets in an orderly and synchronized manner.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('Like X, both pixmaps and windows are drawable resources, and the same'), __ 'Like X, both pixmaps and windows are drawable resources, and the same'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('graphics operations can be applied to both.  Thus, a separate'), __ 'graphics operations can be applied to both.  Thus, a separate'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('EmacsPixmap structure is used to wrap around Android Bitmap resources,'), __ 'EmacsPixmap structure is used to wrap around Android Bitmap resources,'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('and the Java-level graphics operation functions are capable of'), __ 'and the Java-level graphics operation functions are capable of'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('operating on them both.'), __ 'operating on them both.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('Finally, graphics contexts are maintained on both the C and Java'), __ 'Finally, graphics contexts are maintained on both the C and Java'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('levels; the C state recorded in `struct android_gc\' is kept in sync'), __ 'levels; the C state recorded in `struct android_gc\' is kept in sync'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('with the Java state in the GContext handle\'s corresponding EmacsGC'), __ 'with the Java state in the GContext handle\'s corresponding EmacsGC'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('structure, and cursors are used through handles that refer to'), __ 'structure, and cursors are used through handles that refer to'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('EmacsCursor structures that hold system PointerIcons.'), __ 'EmacsCursor structures that hold system PointerIcons.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('In all cases, the interfaces provided are identical to X.'), __ 'In all cases, the interfaces provided are identical to X.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta(''), __ ''); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('EVENT LOOP'), __ 'EVENT LOOP'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('In a typical Android application, the event loop is managed by the'), __ 'In a typical Android application, the event loop is managed by the'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('operating system, and callbacks (implemented through overriding'), __ 'operating system, and callbacks (implemented through overriding'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('separate functions in widgets) are run by the event loop wherever'), __ 'separate functions in widgets) are run by the event loop wherever'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('necessary.  The thread which runs the event loop is also the only'), __ 'necessary.  The thread which runs the event loop is also the only'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('thread capable of creating and manipulating widgets and activities,'), __ 'thread capable of creating and manipulating widgets and activities,'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('and is referred to as the ``UI thread\'\'.'), __ 'and is referred to as the ``UI thread\'\'.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('These callbacks are used by Emacs to write representations of X-like'), __ 'These callbacks are used by Emacs to write representations of X-like'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('events to a separate event queue, which are then read from Emacs\'s own'), __ 'events to a separate event queue, which are then read from Emacs\'s own'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('event loop running in a separate thread.  This is accomplished through'), __ 'event loop running in a separate thread.  This is accomplished through'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('replacing `select\' by a function which waits for the event queue to be'), __ 'replacing `select\' by a function which waits for the event queue to be'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('occupied, in addition to any file descriptors that `select\' would'), __ 'occupied, in addition to any file descriptors that `select\' would'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('normally wait for.'), __ 'normally wait for.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('Conversely, Emacs\'s event loop sometimes needs to send events to the'), __ 'Conversely, Emacs\'s event loop sometimes needs to send events to the'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('UI thread.  These events are implemented as tiny fragments of code,'), __ 'UI thread.  These events are implemented as tiny fragments of code,'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('which are run as they are received by the main thread.'), __ 'which are run as they are received by the main thread.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('A typical example is `displayToast\', which is implemented in'), __ 'A typical example is `displayToast\', which is implemented in'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('EmacsService.java:'), __ 'EmacsService.java:'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('  public void'), __ '  public void'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  displayToast (final String string)'), __ '  displayToast (final String string)'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  {'), __ '  {'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('    runOnUiThread (new Runnable () {'), __ '    runOnUiThread (new Runnable () {'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('	@Override'), __ '	@Override'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('	public void'), __ '	public void'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('	run ()'), __ '	run ()'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('	{'), __ '	{'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('	  Toast toast;'), __ '	  Toast toast;'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('	  toast = Toast.makeText (getApplicationContext (),'), __ '	  toast = Toast.makeText (getApplicationContext (),'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('				  string, Toast.LENGTH_SHORT);'), __ '				  string, Toast.LENGTH_SHORT);'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('	  toast.show ();'), __ '	  toast.show ();'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('	}'), __ '	}'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('      });'), __ '      });'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  }'), __ '  }'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('Here, the variable `string\' is used by a nested function.  This nested'), __ 'Here, the variable `string\' is used by a nested function.  This nested'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('function contains a copy of that variable, and is run on the main'), __ 'function contains a copy of that variable, and is run on the main'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('thread using the function `runOnUiThread\', in order to display a short'), __ 'thread using the function `runOnUiThread\', in order to display a short'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('status message on the display.'), __ 'status message on the display.'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('When Emacs needs to wait for the nested function to finish, it uses a'), __ 'When Emacs needs to wait for the nested function to finish, it uses a'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('mechanism implemented in `syncRunnable\'.  This mechanism first calls a'), __ 'mechanism implemented in `syncRunnable\'.  This mechanism first calls a'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('deadlock avoidance mechanism, then runs a nested function on the UI'), __ 'deadlock avoidance mechanism, then runs a nested function on the UI'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('thread, which is expected to signal itself as a condition variable'), __ 'thread, which is expected to signal itself as a condition variable'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('upon completion.  It is typically used to allocate resources that can'), __ 'upon completion.  It is typically used to allocate resources that can'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('only be allocated from the UI thread, or to obtain non-thread-safe'), __ 'only be allocated from the UI thread, or to obtain non-thread-safe'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('information.  The following function is an example; it returns a new'), __ 'information.  The following function is an example; it returns a new'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('EmacsView widget corresponding to the provided window:'), __ 'EmacsView widget corresponding to the provided window:'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('  public EmacsView'), __ '  public EmacsView'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  getEmacsView (final EmacsWindow window, final int visibility,'), __ '  getEmacsView (final EmacsWindow window, final int visibility,'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('		final boolean isFocusedByDefault)'), __ '		final boolean isFocusedByDefault)'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  {'), __ '  {'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('    Runnable runnable;'), __ '    Runnable runnable;'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('    final EmacsHolder<EmacsView> view;'), __ '    final EmacsHolder<EmacsView> view;'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('    view = new EmacsHolder<EmacsView> ();'), __ '    view = new EmacsHolder<EmacsView> ();'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('    runnable = new Runnable () {'), __ '    runnable = new Runnable () {'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('	public void'), __ '	public void'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('	run ()'), __ '	run ()'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('	{'), __ '	{'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('	  synchronized (this)'), __ '	  synchronized (this)'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('	    {'), __ '	    {'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('	      view.thing = new EmacsView (window);'), __ '	      view.thing = new EmacsView (window);'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('	      view.thing.setVisibility (visibility);'), __ '	      view.thing.setVisibility (visibility);'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('	      /* The following function is only present on Android 26'), __ '	      /* The following function is only present on Android 26'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('		 or later.  */'), __ '		 or later.  */'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('	      if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O)'), __ '	      if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O)'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('		view.thing.setFocusedByDefault (isFocusedByDefault);'), __ '		view.thing.setFocusedByDefault (isFocusedByDefault);'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('	      notify ();'), __ '	      notify ();'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('	    }'), __ '	    }'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('	}'), __ '	}'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('      };'), __ '      };'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('    syncRunnable (runnable);'), __ '    syncRunnable (runnable);'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('    return view.thing;'), __ '    return view.thing;'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  }'), __ '  }'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('As no value can be directly returned from the nested function, a'), __ 'As no value can be directly returned from the nested function, a'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('separate container object is used to hold the result after the'), __ 'separate container object is used to hold the result after the'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('function finishes execution.  Note the type name inside the angle'), __ 'function finishes execution.  Note the type name inside the angle'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('brackets: this type is substituted into the class definition as it is'), __ 'brackets: this type is substituted into the class definition as it is'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('used; a definition such as:'), __ 'used; a definition such as:'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('public class Foo<T>'), __ 'public class Foo<T>'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('{'), __ '{'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  T bar;'), __ '  T bar;'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('};'), __ '};'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('can not be used alone:'), __ 'can not be used alone:'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('  Foo holder; /* Error! */'), __ '  Foo holder; /* Error! */'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('but must have a type specified:'), __ 'but must have a type specified:'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('  Foo<Object> holder;'), __ '  Foo<Object> holder;'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('in which case the effective definition is:'), __ 'in which case the effective definition is:'); s/^$en$/$ja/;

	($en, $ja) = (quotemeta('public class Foo'), __ 'public class Foo'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('{'), __ '{'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('  Object bar;'), __ '  Object bar;'); s/^$en$/$ja/;
	($en, $ja) = (quotemeta('};'), __ '};'); s/^$en$/$ja/;
	print;
}