#include <R.h>
#include <Rinternals.h>
#include <R_ext/Rdynload.h>

void R_char_date(int *n, int *order, char *cdate,
		 int *month, int *day, int *year);

static const R_CMethodDef CEntries[] = {
    {"R_char_date", (DL_FUNC) &R_char_date, 6},
    {NULL, NULL, 0}
};

void R_init_date(DllInfo *dll)
{
    R_registerRoutines(dll, CEntries, NULL, NULL, NULL);
    R_useDynamicSymbols(dll, FALSE);
}
