TARGET = 3dcam-tri-quads
TYPE = ps-exe

SRCS = 3dcam-tri-quads.c \
../common/crt0/crt0.s \
TIM/home.tim \
TIM/grnd.tim \
TIM/cat.tim \
TIM/lara.tim \
TIM/bg.tim \
TIM/bg_camPath.tim \
TIM/bg_camPath_001.tim \
TIM/bg_camPath_002.tim \
TIM/bg_camPath_003.tim \
TIM/bg_camPath_004.tim \
TIM/bg_camPath_005.tim \
#~ TIM/Sans_nom_56.tim \
# img2tim -t -bpp 8 -org 320 0 -plt 0 481 -o bg.tim bg.png

CPPFLAGS += -I../psyq/include
LDFLAGS += -L../psyq/lib
LDFLAGS += -Wl,--start-group
LDFLAGS += -lapi
LDFLAGS += -lc
LDFLAGS += -lc2
LDFLAGS += -lcard
LDFLAGS += -lcomb
LDFLAGS += -lds
LDFLAGS += -letc
LDFLAGS += -lgpu
LDFLAGS += -lgs
LDFLAGS += -lgte
LDFLAGS += -lgun
LDFLAGS += -lhmd
LDFLAGS += -lmath
LDFLAGS += -lmcrd
LDFLAGS += -lmcx
LDFLAGS += -lpad
LDFLAGS += -lpress
LDFLAGS += -lsio
LDFLAGS += -lsnd
LDFLAGS += -lspu
LDFLAGS += -ltap
LDFLAGS += -Wl,--end-group

include ../common.mk \
