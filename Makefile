SRCS = ass.c ass_bitmap.c ass_cache.c ass_font.c ass_fontconfig.c ass_library.c ass_render.c ass_utils.c mputils.c
OBJS = ass.o ass_bitmap.o ass_cache.o ass_font.o ass_fontconfig.o ass_library.o ass_render.o ass_utils.o mputils.o
CFLAGS = -g -O2 -DHAVE_CONFIG_H -fno-common -I /opt/local/include -I /opt/local/include/freetype2

libass-osx.so : $(OBJS)
	gcc -bundle -flat_namespace -undefined suppress -o libass-osx.so $(OBJS)
	
.PHONY : clean
clean :
	rm -f libass-osx.so $(OBJS)

DEPENDS = dependencies.mk
.PHONY: depend
depend: 
	@makedepend –f $(SRCS) > $(DEPENDS) 

include $(DEPENDS)

# DO NOT DELETE

ass.o: config.h /usr/include/stdio.h /usr/include/_types.h
ass.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ass.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ass.o: /usr/include/stdlib.h /usr/include/available.h /usr/include/sys/wait.h
ass.o: /usr/include/sys/signal.h /usr/include/sys/appleapiopts.h
ass.o: /usr/include/machine/signal.h /usr/include/i386/signal.h
ass.o: /usr/include/i386/_structs.h /usr/include/sys/_structs.h
ass.o: /usr/include/machine/_structs.h /usr/include/sys/resource.h
ass.o: /usr/include/machine/endian.h /usr/include/i386/endian.h
ass.o: /usr/include/sys/_endian.h /usr/include/libkern/_OSByteOrder.h
ass.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
ass.o: /usr/include/machine/types.h /usr/include/i386/types.h
ass.o: /usr/include/string.h /usr/include/assert.h /usr/include/errno.h
ass.o: /usr/include/sys/errno.h /usr/include/sys/types.h
ass.o: /usr/include/sys/stat.h /usr/include/unistd.h
ass.o: /usr/include/sys/unistd.h /usr/include/sys/select.h
ass.o: /usr/include/sys/_select.h /usr/include/inttypes.h
ass.o: /usr/include/stdint.h /usr/include/iconv.h ass.h ass_types.h
ass.o: ass_utils.h ass_library.h mputils.h mp_msg.h help_mp.h
ass_bitmap.o: /usr/include/stdlib.h /usr/include/available.h
ass_bitmap.o: /usr/include/_types.h /usr/include/sys/_types.h
ass_bitmap.o: /usr/include/sys/cdefs.h /usr/include/machine/_types.h
ass_bitmap.o: /usr/include/i386/_types.h /usr/include/sys/wait.h
ass_bitmap.o: /usr/include/sys/signal.h /usr/include/sys/appleapiopts.h
ass_bitmap.o: /usr/include/machine/signal.h /usr/include/i386/signal.h
ass_bitmap.o: /usr/include/i386/_structs.h /usr/include/sys/_structs.h
ass_bitmap.o: /usr/include/machine/_structs.h /usr/include/sys/resource.h
ass_bitmap.o: /usr/include/machine/endian.h /usr/include/i386/endian.h
ass_bitmap.o: /usr/include/sys/_endian.h /usr/include/libkern/_OSByteOrder.h
ass_bitmap.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
ass_bitmap.o: /usr/include/machine/types.h /usr/include/i386/types.h
ass_bitmap.o: /usr/include/string.h /usr/include/math.h
ass_bitmap.o: /usr/include/architecture/i386/math.h /usr/include/assert.h
ass_bitmap.o: mputils.h mp_msg.h help_mp.h ass_bitmap.h
ass_cache.o: config.h /usr/include/inttypes.h /usr/include/sys/cdefs.h
ass_cache.o: /usr/include/_types.h /usr/include/sys/_types.h
ass_cache.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ass_cache.o: /usr/include/stdint.h /usr/include/assert.h mputils.h mp_msg.h
ass_cache.o: help_mp.h ass.h /usr/include/stdio.h ass_types.h
ass_cache.o: ass_fontconfig.h ass_font.h ass_bitmap.h ass_cache.h
ass_font.o: config.h /usr/include/inttypes.h /usr/include/sys/cdefs.h
ass_font.o: /usr/include/_types.h /usr/include/sys/_types.h
ass_font.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ass_font.o: /usr/include/stdint.h ass.h /usr/include/stdio.h ass_types.h
ass_font.o: ass_library.h ass_font.h ass_bitmap.h ass_cache.h
ass_font.o: ass_fontconfig.h ass_utils.h mputils.h mp_msg.h help_mp.h
ass_fontconfig.o: config.h /usr/include/stdlib.h /usr/include/available.h
ass_fontconfig.o: /usr/include/_types.h /usr/include/sys/_types.h
ass_fontconfig.o: /usr/include/sys/cdefs.h /usr/include/machine/_types.h
ass_fontconfig.o: /usr/include/i386/_types.h /usr/include/sys/wait.h
ass_fontconfig.o: /usr/include/sys/signal.h /usr/include/sys/appleapiopts.h
ass_fontconfig.o: /usr/include/machine/signal.h /usr/include/i386/signal.h
ass_fontconfig.o: /usr/include/i386/_structs.h /usr/include/sys/_structs.h
ass_fontconfig.o: /usr/include/machine/_structs.h /usr/include/sys/resource.h
ass_fontconfig.o: /usr/include/machine/endian.h /usr/include/i386/endian.h
ass_fontconfig.o: /usr/include/sys/_endian.h
ass_fontconfig.o: /usr/include/libkern/_OSByteOrder.h
ass_fontconfig.o: /usr/include/libkern/i386/_OSByteOrder.h
ass_fontconfig.o: /usr/include/alloca.h /usr/include/machine/types.h
ass_fontconfig.o: /usr/include/i386/types.h /usr/include/stdio.h
ass_fontconfig.o: /usr/include/assert.h /usr/include/string.h
ass_fontconfig.o: /usr/include/sys/types.h /usr/include/sys/stat.h
ass_fontconfig.o: /usr/include/inttypes.h /usr/include/stdint.h mputils.h
ass_fontconfig.o: mp_msg.h help_mp.h ass.h ass_types.h ass_library.h
ass_fontconfig.o: ass_fontconfig.h
ass_library.o: /usr/include/inttypes.h /usr/include/sys/cdefs.h
ass_library.o: /usr/include/_types.h /usr/include/sys/_types.h
ass_library.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ass_library.o: /usr/include/stdint.h /usr/include/stdio.h
ass_library.o: /usr/include/stdlib.h /usr/include/available.h
ass_library.o: /usr/include/sys/wait.h /usr/include/sys/signal.h
ass_library.o: /usr/include/sys/appleapiopts.h /usr/include/machine/signal.h
ass_library.o: /usr/include/i386/signal.h /usr/include/i386/_structs.h
ass_library.o: /usr/include/sys/_structs.h /usr/include/machine/_structs.h
ass_library.o: /usr/include/sys/resource.h /usr/include/machine/endian.h
ass_library.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
ass_library.o: /usr/include/libkern/_OSByteOrder.h
ass_library.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
ass_library.o: /usr/include/machine/types.h /usr/include/i386/types.h
ass_library.o: /usr/include/string.h ass.h ass_types.h ass_library.h
ass_render.o: config.h /usr/include/assert.h /usr/include/sys/cdefs.h
ass_render.o: /usr/include/math.h /usr/include/architecture/i386/math.h
ass_render.o: /usr/include/inttypes.h /usr/include/_types.h
ass_render.o: /usr/include/sys/_types.h /usr/include/machine/_types.h
ass_render.o: /usr/include/i386/_types.h /usr/include/stdint.h mputils.h
ass_render.o: mp_msg.h help_mp.h ass.h /usr/include/stdio.h ass_types.h
ass_render.o: ass_font.h ass_bitmap.h ass_cache.h ass_utils.h
ass_render.o: ass_fontconfig.h ass_library.h
ass_utils.o: config.h /usr/include/stdlib.h /usr/include/available.h
ass_utils.o: /usr/include/_types.h /usr/include/sys/_types.h
ass_utils.o: /usr/include/sys/cdefs.h /usr/include/machine/_types.h
ass_utils.o: /usr/include/i386/_types.h /usr/include/sys/wait.h
ass_utils.o: /usr/include/sys/signal.h /usr/include/sys/appleapiopts.h
ass_utils.o: /usr/include/machine/signal.h /usr/include/i386/signal.h
ass_utils.o: /usr/include/i386/_structs.h /usr/include/sys/_structs.h
ass_utils.o: /usr/include/machine/_structs.h /usr/include/sys/resource.h
ass_utils.o: /usr/include/machine/endian.h /usr/include/i386/endian.h
ass_utils.o: /usr/include/sys/_endian.h /usr/include/libkern/_OSByteOrder.h
ass_utils.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
ass_utils.o: /usr/include/machine/types.h /usr/include/i386/types.h
ass_utils.o: /usr/include/inttypes.h /usr/include/stdint.h mputils.h mp_msg.h
ass_utils.o: help_mp.h ass_utils.h
mputils.o: config.h mputils.h mp_msg.h help_mp.h /usr/include/stdio.h
mputils.o: /usr/include/_types.h /usr/include/sys/_types.h
mputils.o: /usr/include/sys/cdefs.h /usr/include/machine/_types.h
mputils.o: /usr/include/i386/_types.h /usr/include/stdarg.h
mputils.o: /usr/include/stdint.h /usr/include/stdlib.h
mputils.o: /usr/include/available.h /usr/include/sys/wait.h
mputils.o: /usr/include/sys/signal.h /usr/include/sys/appleapiopts.h
mputils.o: /usr/include/machine/signal.h /usr/include/i386/signal.h
mputils.o: /usr/include/i386/_structs.h /usr/include/sys/_structs.h
mputils.o: /usr/include/machine/_structs.h /usr/include/sys/resource.h
mputils.o: /usr/include/machine/endian.h /usr/include/i386/endian.h
mputils.o: /usr/include/sys/_endian.h /usr/include/libkern/_OSByteOrder.h
mputils.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
mputils.o: /usr/include/machine/types.h /usr/include/i386/types.h
mputils.o: /usr/include/string.h /usr/include/assert.h
