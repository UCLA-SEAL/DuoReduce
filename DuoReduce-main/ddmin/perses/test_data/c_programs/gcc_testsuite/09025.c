



extern int bar (const char *s, int *argc);
extern int baz (const char *s);

char
foo (const char *s)
{
  int argc;
  int ret;
  if ( !bar (s, &argc))
    ret = baz (s);
  return *s;
}
