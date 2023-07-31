KSRC ?= ~/Test/runninglinuxkernel_5.0

CROSS ?= aarch64-linux-gnu-

SRC ?= app.c

all:
	make -C $(KSRC)/ M=$(CURDIR) modules
	${CROSS}gcc ${SRC} -o app
%:
	make -C $(KSRC)/ M=$(CURDIR) $@
