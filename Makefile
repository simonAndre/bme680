DIRDEVBASE := ~/dev/elec
LIBS := $(DIRDEVBASE)/drivers
EMONSANLIBS := $(DIRDEVBASE)/emon_san/libraries/

INCLUDEDIR1 := $(LIBS)
#INCLUDEDIR2 := /usr/share/arduino/libraries/san_libraries/nanopb/

CSRC  =  ./main.c                   # The main program
CSRC += $(LIBS)/BME680_driver/bme680.c  
CSRC += $(EMONSANLIBS)/gateway.c  
#include "$(LIBS)/BME680_driver/bme680_defs.h"
#include "$(LIBS)/BME680_driver/bme680.h"


main:	$(CSRC)	
	g++ -std=gnu++11 -g -obmetest -fpermissive -I $(INCLUDEDIR1)/BME680_driver $(CSRC)


