
;; Function main (main, funcdef_no=0, decl_uid=1911, cgraph_uid=1, symbol_order=1)

main ()
{
  int n;
  int t;
  int i;
  int b;
  int a;
  int D.1922;

  a = 0;
  b = 1;
  i = 1;
  goto <D.1919>;
  <D.1918>:
  t = b;
  b = a + b;
  a = t;
  i = i + 1;
  <D.1919>:
  if (i < n) goto <D.1918>; else goto <D.1920>;
  <D.1920>:
  D.1922 = 0;
  goto <D.1923>;
  D.1922 = 0;
  goto <D.1923>;
  <D.1923>:
  return D.1922;
}


