
;; Function main (main, funcdef_no=0, decl_uid=1911, cgraph_uid=1, symbol_order=1)

main ()
{
  int i;
  int tmp;
  int arr[0:D.1920] [value-expr: *arr.0];
  void * saved_stack.1;
  int D.1926;
  int[0:D.1920] * arr.0;
  sizetype D.1924;
  bitsizetype D.1923;
  sizetype D.1922;
  bitsizetype D.1921;
  sizetype D.1920;

  saved_stack.1 = __builtin_stack_save ();
  D.1920 = 109;
  D.1921 = 3520;
  D.1922 = 440;
  D.1923 = 3520;
  D.1924 = 440;
  arr.0 = __builtin_alloca_with_align (D.1924, 32);
  tmp = 0;
  i = 0;
  goto <D.1917>;
  <D.1916>:
  tmp = tmp + i;
  _1 = tmp * i;
  *arr.0[i] = _1;
  i = i + 1;
  <D.1917>:
  if (i <= 109) goto <D.1916>; else goto <D.1918>;
  <D.1918>:
  D.1926 = 0;
  goto <D.1929>;
  <D.1929>:
  __builtin_stack_restore (saved_stack.1);
  goto <D.1928>;
  D.1926 = 0;
  goto <D.1928>;
  <D.1928>:
  return D.1926;
}


