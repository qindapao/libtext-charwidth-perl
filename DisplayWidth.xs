#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#ifdef free
#  undef free
#endif
#ifdef malloc
#  undef malloc
#endif
#include <unistr.h>
#include <uniwidth.h>

MODULE = Text::DisplayWidth        PACKAGE = Text::DisplayWidth


int
display_width(sv)
    SV *sv
    CODE:
    {
        STRLEN len;
        const char *pv = SvPVutf8(sv, len);
        RETVAL = u8_width((const uint8_t *)pv, len, "UTF-8");
    }
    OUTPUT:
        RETVAL

