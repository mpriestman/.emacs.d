;;-*-coding: emacs-mule;-*-
(define-abbrev-table 'Buffer-menu-mode-abbrev-table '())

(define-abbrev-table 'Custom-mode-abbrev-table '())

(define-abbrev-table 'apropos-mode-abbrev-table '())

(define-abbrev-table 'awk-mode-abbrev-table
  '(
    ("else" "else" c-electric-continued-statement 0)
    ("while" "while" c-electric-continued-statement 0)
   ))

(define-abbrev-table 'bs-mode-abbrev-table '())

(define-abbrev-table 'c++-mode-abbrev-table
  '(
    ("catch" "catch" c-electric-continued-statement 0)
    ("cpa" "CPPUNIT_ASSERT" nil 48)
    ("cpade" "CPPUNIT_ASSERT_DOUBLES_EQUAL" nil 1)
    ("cpae" "CPPUNIT_ASSERT_EQUAL" nil 68)
    ("cpase" "CPPUNIT_ASSERT_STR_EQUAL" nil 3)
    ("cpawe" "CPPUNIT_ASSERT_WSTR_EQUAL" nil 3)
    ("cppd" "#define" nil 0)
    ("cppi" "#include" nil 0)
    ("cpt" "CPPUNIT_TEST" nil 24)
    ("else" "else" c-electric-continued-statement 7)
    ("jarg" "LcNwcJournal::Arg" nil 413)
    ("jbeg" "LcNwcJournal::Begin" nil 148)
    ("jend" "LcNwcJournal::End" nil 142)
    ("jendc" "LcNwcJournal::EndCreate" nil 77)
    ("jfd" "FUNC_DEF" nil 60)
    ("jfp" "FUNC_PROTO" nil 80)
    ("jvb" "parser->ValidateBoolean" nil 1)
    ("jvc" "parser->ValidateCreation" nil 27)
    ("jvp" "parser->ValidatePointer" nil 0)
    ("jvv" "parser->ValidateVoid" nil 19)
    ("rept" "RepresentationType" nil 4)
    ("while" "while" c-electric-continued-statement 2)
	("defw" "#if defined(WINDOWS_PLATFORM)" nil 0)
	("defl" "#if defined(LINUX_PLATFORM)" nil 0)
	("defp" "#if defined(POSIX_PLATFORM)" nil 0)
	("defa" "#if defined(APPLE_PLATFORM)" nil 0)
	("defe" "#endif" nil 0)
   ))

(define-abbrev-table 'c-mode-abbrev-table
  '(
    ("else" "else" c-electric-continued-statement 0)
    ("while" "while" c-electric-continued-statement 0)
   ))

(define-abbrev-table 'comint-mode-abbrev-table '())

(define-abbrev-table 'completion-list-mode-abbrev-table '())

(define-abbrev-table 'emacs-lisp-mode-abbrev-table '())

(define-abbrev-table 'fundamental-mode-abbrev-table '())

(define-abbrev-table 'global-abbrev-table '())

(define-abbrev-table 'gud-mode-abbrev-table '())

(define-abbrev-table 'idl-mode-abbrev-table '())

(define-abbrev-table 'java-mode-abbrev-table
  '(
    ("catch" "catch" c-electric-continued-statement 0)
    ("else" "else" c-electric-continued-statement 0)
    ("finally" "finally" c-electric-continued-statement 0)
    ("while" "while" c-electric-continued-statement 0)
   ))

(define-abbrev-table 'javascript-mode-abbrev-table '())

(define-abbrev-table 'lisp-mode-abbrev-table '())

(define-abbrev-table 'objc-mode-abbrev-table
  '(
    ("else" "else" c-electric-continued-statement 0)
    ("while" "while" c-electric-continued-statement 0)
   ))

(define-abbrev-table 'occur-mode-abbrev-table '())

(define-abbrev-table 'org-mode-abbrev-table '())

(define-abbrev-table 'outline-mode-abbrev-table '())

(define-abbrev-table 'perl-mode-abbrev-table '())

(define-abbrev-table 'php-mode-abbrev-table
  '(
    ("else" "else" c-electric-continued-statement 0)
    ("while" "while" c-electric-continued-statement 0)
   ))

(define-abbrev-table 'pike-mode-abbrev-table
  '(
    ("else" "else" c-electric-continued-statement 0)
    ("while" "while" c-electric-continued-statement 0)
   ))

(define-abbrev-table 'ruby-mode-abbrev-table '())

(define-abbrev-table 'shell-mode-abbrev-table '())

(define-abbrev-table 'sml-cm-mode-abbrev-table '())

(define-abbrev-table 'sml-lex-mode-abbrev-table '())

(define-abbrev-table 'sml-mode-abbrev-table
  '(
    ("abstype" "" sml-form-abstype 0)
    ("case" "" sml-form-case 0)
    ("datatype" "" sml-form-datatype 0)
    ("fn" "" sml-form-fn 0)
    ("fun" "" sml-form-fun 0)
    ("functor" "" sml-form-functor 0)
    ("if" "" sml-form-if 0)
    ("let" "" sml-form-let 0)
    ("local" "" sml-form-local 0)
    ("sig" "" sml-form-sig 0)
    ("signature" "" sml-form-signature 0)
    ("struct" "" sml-form-struct 0)
    ("structure" "" sml-form-structure 0)
    ("val" "" sml-form-val 0)
   ))

(define-abbrev-table 'sml-yacc-mode-abbrev-table '())

(define-abbrev-table 'special-mode-abbrev-table '())

(define-abbrev-table 'text-mode-abbrev-table '())

(define-abbrev-table 'vc-annotate-mode-abbrev-table '())

(define-abbrev-table 'vc-dired-mode-abbrev-table '())

(define-abbrev-table 'vc-log-mode-abbrev-table '())

