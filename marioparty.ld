SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    header_ROM_START = __romPos;
    header_VRAM = ADDR(.header);
    .header : AT(header_ROM_START) SUBALIGN(16)
    {
        header_DATA_START = .;
        header_s = .;
        build/asm/header.s.o(.data);
        header_DATA_END = .;
        header_DATA_SIZE = ABSOLUTE(header_DATA_END - header_DATA_START);
    }
    __romPos += SIZEOF(.header);
    header_ROM_END = __romPos;
    header_VRAM_END = .;

    boot_ROM_START = __romPos;
    boot_VRAM = ADDR(.boot);
    .boot : AT(boot_ROM_START) SUBALIGN(16)
    {
        boot_DATA_START = .;
        boot_bin = .;
        build/assets/boot.bin.o(.data);
        boot_DATA_END = .;
        boot_DATA_SIZE = ABSOLUTE(boot_DATA_END - boot_DATA_START);
    }
    __romPos += SIZEOF(.boot);
    boot_ROM_END = __romPos;
    boot_VRAM_END = .;

    main_ROM_START = __romPos;
    main_VRAM = ADDR(.main);
    .main 0x80000400 : AT(main_ROM_START) SUBALIGN(16)
    {
        main_TEXT_START = .;
        build/asm/entrypoint.s.o(.text);
        build/src/1060.c.o(.text);
        build/src/1130.c.o(.text);
        build/src/99E0.c.o(.text);
        build/src/B980.c.o(.text);
        build/src/138F0.c.o(.text);
        build/src/engine/pad.c.o(.text);
        build/src/engine/data.c.o(.text);
        build/src/156F0.c.o(.text);
        build/src/engine/decode.c.o(.text);
        build/src/engine/ovlman.c.o(.text);
        build/src/18650.c.o(.text);
        build/src/engine/esprite.c.o(.text);
        build/src/19E70.c.o(.text);
        build/src/1A2A0.c.o(.text);
        build/src/engine/gameman.c.o(.text);
        build/src/engine/graphics.c.o(.text);
        build/src/1B800.c.o(.text);
        build/src/1DE40.c.o(.text);
        build/src/1EA70.c.o(.text);
        build/src/engine/math.c.o(.text);
        build/src/23C40.c.o(.text);
        build/src/engine/mallocblock.c.o(.text);
        build/src/24740.c.o(.text);
        build/src/29C90.c.o(.text);
        build/src/2C0C0.c.o(.text);
        build/src/34D80.c.o(.text);
        build/src/388E0.c.o(.text);
        build/src/3AC60.c.o(.text);
        build/src/3BF30.c.o(.text);
        build/src/engine/memory.c.o(.text);
        build/src/3CED0.c.o(.text);
        build/src/3DEB0.c.o(.text);
        build/src/3E560.c.o(.text);
        build/src/3F5B0.c.o(.text);
        build/src/42CA0.c.o(.text);
        build/src/42E40.c.o(.text);
        build/src/43760.c.o(.text);
        build/src/46100.c.o(.text);
        build/src/467E0.c.o(.text);
        build/src/46AE0.c.o(.text);
        build/src/47320.c.o(.text);
        build/src/48D90.c.o(.text);
        build/src/engine/spaces.c.o(.text);
        build/src/4D770.c.o(.text);
        build/src/4E530.c.o(.text);
        build/src/51200.c.o(.text);
        build/src/53680.c.o(.text);
        build/src/53C80.c.o(.text);
        build/src/54120.c.o(.text);
        build/src/57330.c.o(.text);
        build/src/59510.c.o(.text);
        build/src/59710.c.o(.text);
        build/src/59E80.c.o(.text);
        build/src/5C460.c.o(.text);
        build/src/5CDB0.c.o(.text);
        build/src/61B70.c.o(.text);
        build/src/62140.c.o(.text);
        build/src/engine/process.c.o(.text);
        build/src/engine/nnsched.c.o(.text);
        build/src/engine/siman.c.o(.text);
        build/src/64FD0.c.o(.text);
        build/src/65770.c.o(.text);
        build/src/69010.c.o(.text);
        build/src/6C470.c.o(.text);
        build/src/6D4E0.c.o(.text);
        build/src/72D90.c.o(.text);
        build/src/lib/2.0I/audio/synstartvoiceparam.c.o(.text);
        build/src/lib/2.0I/audio/synsetpan.c.o(.text);
        build/asm/lib/sys/setjmp.s.o(.text);
        build/src/7CD60.c.o(.text);
        main_DATA_START = .;
        libleo_bin = .;
        build/assets/libleo.bin.o(.data);
        build/asm/lib/2.0I/gu/sqrtf.s.o(.text);
        build/src/lib/2.0I/gu/cosf.c.o(.text);
        build/src/lib/2.0I/gu/lookat.c.o(.text);
        build/src/lib/2.0I/gu/lookatref.c.o(.text);
        build/src/lib/2.0I/gu/lookathil.c.o(.text);
        build/src/lib/2.0I/gu/mtxutil.c.o(.text);
        build/src/lib/2.0I/gu/mtxcatf.c.o(.text);
        build/src/lib/2.0I/gu/mtxcatl.c.o(.text);
        build/src/lib/2.0I/gu/ortho.c.o(.text);
        build/src/lib/2.0I/gu/perspective.c.o(.text);
        build/src/lib/2.0I/gu/rotate.c.o(.text);
        build/src/lib/2.0I/gu/rotateRPY.c.o(.text);
        build/src/lib/2.0I/gu/scale.c.o(.text);
        build/src/lib/2.0I/gu/sinf.c.o(.text);
        build/src/lib/2.0I/gu/translate.c.o(.text);
        build/src/lib/2.0I/gu/random.c.o(.text);
        build/asm/lib/2.0I/os/invaldcache.s.o(.text);
        build/asm/lib/2.0I/os/invalicache.s.o(.text);
        build/asm/lib/2.0I/os/setintmask.s.o(.text);
        build/asm/lib/2.0I/os/setcause.s.o(.text);
        build/asm/lib/2.0I/os/setcompare.s.o(.text);
        build/asm/lib/2.0I/os/setcount.s.o(.text);
        build/asm/lib/2.0I/os/setsr.s.o(.text);
        build/asm/lib/2.0I/os/osWritebackDCache.s.o(.text);
        build/asm/lib/2.0I/os/writebackdcacheall.s.o(.text);
        build/src/lib/2.0I/os/createmesgqueue.c.o(.text);
        build/src/lib/2.0I/os/createthread.c.o(.text);
        build/src/lib/2.0I/os/destroythread.c.o(.text);
        build/src/lib/2.0I/os/getthreadpri.c.o(.text);
        build/src/lib/2.0I/os/gettime.c.o(.text);
        build/src/lib/2.0I/os/jammesg.c.o(.text);
        build/src/lib/2.0I/os/recvmesg.c.o(.text);
        build/src/lib/2.0I/os/sendmesg.c.o(.text);
        build/src/lib/2.0I/os/setthreadpri.c.o(.text);
        build/src/lib/2.0I/os/startthread.c.o(.text);
        build/src/lib/2.0I/os/stopthread.c.o(.text);
        build/src/lib/2.0I/os/thread.c.o(.text);
        build/src/lib/2.0I/os/timerintr.c.o(.text);
        build/src/lib/2.0I/os/virtualtophysical.c.o(.text);
        build/src/89E90.c.o(.text);
        build/src/lib/2.0I/audio/bnkf.c.o(.text);
        build/src/lib/2.0I/audio/event.c.o(.text);
        build/src/lib/2.0I/audio/sl.c.o(.text);
        build/src/lib/2.0I/audio/heapinit.c.o(.text);
        build/src/lib/2.0I/audio/heapalloc.c.o(.text);
        build/src/lib/2.0I/audio/copy.c.o(.text);
        build/src/lib/2.0I/audio/cseq.c.o(.text);
        build/src/lib/2.0I/audio/seqpdelete.c.o(.text);
        build/src/lib/2.0I/audio/seqpgetfxmix.c.o(.text);
        build/src/lib/2.0I/audio/seqpgetpan.c.o(.text);
        build/src/lib/2.0I/audio/seqpgetchlvol.c.o(.text);
        build/src/lib/2.0I/audio/seqpgetprogram.c.o(.text);
        build/src/lib/2.0I/audio/cspgettempo.c.o(.text);
        build/src/lib/2.0I/audio/seqpgetstate.c.o(.text);
        build/src/lib/2.0I/audio/seqpplay.c.o(.text);
        build/src/lib/2.0I/audio/seqpsetbank.c.o(.text);
        build/src/lib/2.0I/audio/seqpsetfxmix.c.o(.text);
        build/src/lib/2.0I/audio/seqpsetseq.c.o(.text);
        build/src/lib/2.0I/audio/seqpsettempo.c.o(.text);
        build/src/lib/2.0I/audio/seqpsetvol.c.o(.text);
        build/src/lib/2.0I/audio/seqpstop.c.o(.text);
        build/src/lib/2.0I/audio/sndpdelete.c.o(.text);
        build/src/lib/2.0I/audio/sndpallocate.c.o(.text);
        build/src/lib/2.0I/audio/sndpdeallocate.c.o(.text);
        build/src/lib/2.0I/audio/sndpsetsound.c.o(.text);
        build/src/lib/2.0I/audio/sndpplay.c.o(.text);
        build/src/lib/2.0I/audio/sndpgetsound.c.o(.text);
        build/src/lib/2.0I/audio/sndpstop.c.o(.text);
        build/src/lib/2.0I/audio/sndpgetstate.c.o(.text);
        build/src/lib/2.0I/audio/sndpsetpitch.c.o(.text);
        build/src/lib/2.0I/audio/sndpsetpriority.c.o(.text);
        build/src/lib/2.0I/audio/sndpsetvol.c.o(.text);
        build/src/lib/2.0I/audio/sndpsetpan.c.o(.text);
        build/src/lib/2.0I/audio/sndpsetfxmix.c.o(.text);
        build/src/lib/2.0I/audio/syndelete.c.o(.text);
        build/src/lib/2.0I/audio/synaddplayer.c.o(.text);
        build/src/lib/2.0I/audio/synremoveplayer.c.o(.text);
        build/src/lib/2.0I/audio/synfreevoice.c.o(.text);
        build/src/lib/2.0I/audio/synallocvoice.c.o(.text);
        build/src/lib/2.0I/audio/synstopvoice.c.o(.text);
        build/src/lib/2.0I/audio/synstartvoice.c.o(.text);
        build/src/lib/2.0I/audio/synsetpitch.c.o(.text);
        build/src/lib/2.0I/audio/synsetvol.c.o(.text);
        build/src/lib/2.0I/audio/cents2ratio.c.o(.text);
        build/src/lib/2.0I/io/aigetlen.c.o(.text);
        build/src/lib/2.0I/io/aisetnextbuf.c.o(.text);
        build/src/lib/2.0I/io/sptask.c.o(.text);
        build/src/lib/2.0I/io/sptaskyield.c.o(.text);
        build/src/lib/2.0I/io/sptaskyielded.c.o(.text);
        build/src/lib/2.0I/io/vigetcurrframebuf.c.o(.text);
        build/src/lib/2.0I/io/vigetnextframebuf.c.o(.text);
        build/src/lib/2.0I/io/visetevent.c.o(.text);
        build/src/lib/2.0I/io/visetmode.c.o(.text);
        build/src/lib/2.0I/io/viswapbuf.c.o(.text);
        build/src/lib/2.0I/io/viblack.c.o(.text);
        build/src/lib/2.0I/io/controller.c.o(.text);
        build/src/lib/2.0I/io/contsetch.c.o(.text);
        build/src/lib/2.0I/io/pfsisplug.c.o(.text);
        build/src/lib/2.0I/io/conteeplongwrite.c.o(.text);
        build/src/lib/2.0I/io/conteeplongread.c.o(.text);
        build/src/lib/2.0I/io/epidma.c.o(.text);
        build/src/lib/2.0I/io/piacs.c.o(.text);
        build/asm/lib/2.0I/libc/bcopy.s.o(.text);
        build/asm/lib/2.0I/libc/bzero.s.o(.text);
        build/src/lib/2.0I/libc/string.c.o(.text);
        build/src/lib/2.0I/libc/sprintf.c.o(.text);
        build/src/lib/2.0I/libc/syncprintf.c.o(.text);
        build/src/lib/2.0I/audio/csplayer.c.o(.text);
        build/src/lib/2.0I/audio/seqplayer.c.o(.text);
        build/src/lib/2.0I/audio/synsetfxmix.c.o(.text);
        build/src/lib/2.0I/audio/synthesizer.c.o(.text);
        build/src/lib/2.0I/io/aisetfreq.c.o(.text);
        build/src/lib/2.0I/io/cartrominit.c.o(.text);
        build/src/lib/2.0I/io/conteepprobe.c.o(.text);
        build/src/lib/2.0I/io/conteepread.c.o(.text);
        build/src/lib/2.0I/io/conteepwrite.c.o(.text);
        build/src/lib/2.0I/io/contreaddata.c.o(.text);
        build/src/lib/2.0I/io/epirawdma.c.o(.text);
        build/src/lib/2.0I/io/epiread.c.o(.text);
        build/src/lib/2.0I/io/epiwrite.c.o(.text);
        build/src/lib/2.0I/io/motor.c.o(.text);
        build/src/lib/2.0I/io/pfsallocatefile.c.o(.text);
        build/src/lib/2.0I/io/pfsdeletefile.c.o(.text);
        build/src/lib/2.0I/io/pfsfilestate.c.o(.text);
        build/src/lib/2.0I/io/pfsfreeblocks.c.o(.text);
        build/src/lib/2.0I/io/pfsinitpak.c.o(.text);
        build/src/lib/2.0I/io/pfsnumfiles.c.o(.text);
        build/src/lib/2.0I/io/pfsreadwritefile.c.o(.text);
        build/src/lib/2.0I/io/pfsrepairid.c.o(.text);
        build/src/lib/2.0I/io/pfssearchfile.c.o(.text);
        build/src/lib/2.0I/io/pfsselectbank.c.o(.text);
        build/src/lib/2.0I/io/pimgr.c.o(.text);
        build/src/lib/2.0I/io/pirawdma.c.o(.text);
        build/src/lib/2.0I/io/sirawdma.c.o(.text);
        build/src/lib/2.0I/io/sprawdma.c.o(.text);
        build/src/lib/2.0I/io/vimgr.c.o(.text);
        build/src/lib/2.0I/io/visetspecial.c.o(.text);
        build/src/lib/2.0I/io/viswapcontext.c.o(.text);
        build/src/lib/2.0I/os/afterprenmi.c.o(.text);
        build/asm/lib/2.0I/os/exceptasm.s.o(.text);
        build/src/lib/2.0I/os/getmemsize.c.o(.text);
        build/src/lib/2.0I/os/initialize.c.o(.text);
        build/asm/lib/2.0I/os/interrupt.s.o(.text);
        build/src/lib/2.0I/os/seteventmesg.c.o(.text);
        build/src/lib/2.0I/os/sethwinterrupt.c.o(.text);
        build/asm/lib/2.0I/mgu/guNormalize.s.o(.text);
        build/asm/lib/2.0I/os/getcause.s.o(.text);
        build/asm/lib/2.0I/os/getcount.s.o(.text);
        build/asm/lib/2.0I/os/getsr.s.o(.text);
        build/asm/lib/2.0I/os/probetlb.s.o(.text);
        build/asm/lib/2.0I/os/setfpccsr.s.o(.text);
        build/asm/lib/2.0I/os/unmaptlball.s.o(.text);
        build/asm/lib/2.0I/os/osmaptlbrdb.s.o(.text);
        build/src/lib/2.0I/os/settimer.c.o(.text);
        build/src/lib/2.0I/audio/load.c.o(.text);
        build/src/lib/2.0I/audio/auxbus.c.o(.text);
        build/src/lib/2.0I/audio/mainbus.c.o(.text);
        build/src/lib/2.0I/audio/resample.c.o(.text);
        build/src/lib/2.0I/audio/seq.c.o(.text);
        build/src/95BF0.c.o(.text);
        build/src/95C00.c.o(.text);
        build/src/95CA0.c.o(.text);
        build/src/95CC0.c.o(.text);
        build/src/95CE0.c.o(.text);
        build/src/95E40.c.o(.text);
        build/src/95E50.c.o(.text);
        build/src/95F40.c.o(.text);
        build/src/96AA0.c.o(.text);
        build/src/972D0.c.o(.text);
        build/src/98B20.c.o(.text);
        build/src/99680.c.o(.text);
        build/src/99880.c.o(.text);
        build/src/99AA0.c.o(.text);
        build/src/99B90.c.o(.text);
        build/src/99F50.c.o(.text);
        build/src/9A0C0.c.o(.text);
        build/src/9A230.c.o(.text);
        build/src/9AB60.c.o(.text);
        build/src/9ABB0.c.o(.text);
        build/src/9AC00.c.o(.text);
        build/src/9AC50.c.o(.text);
        build/src/9ACE0.c.o(.text);
        build/src/9AD00.c.o(.text);
        build/src/9AD20.c.o(.text);
        build/src/9AF70.c.o(.text);
        build/src/9B9F0.c.o(.text);
        build/src/9BBB0.c.o(.text);
        build/src/9BBD0.c.o(.text);
        build/src/9BD50.c.o(.text);
        build/src/9C190.c.o(.text);
        build/src/9C370.c.o(.text);
        build/src/9C440.c.o(.text);
        build/src/9C560.c.o(.text);
        build/asm/9C630.s.o(.text);
        build/asm/9C8A0.s.o(.text);
        build/asm/9CA10.s.o(.text);
        build/asm/9CA30.s.o(.text);
        build/src/9CB90.c.o(.text);
        build/src/9CC90.c.o(.text);
        build/src/9CCA0.c.o(.text);
        build/src/9CD00.c.o(.text);
        build/src/9CD60.c.o(.text);
        build/src/9CE40.c.o(.text);
        build/src/9D2E0.c.o(.text);
        build/src/9D370.c.o(.text);
        build/src/9D920.c.o(.text);
        build/src/9D9B0.c.o(.text);
        build/src/9E440.c.o(.text);
        build/src/9E520.c.o(.text);
        build/src/9E6D0.c.o(.text);
        build/src/9E750.c.o(.text);
        build/src/9E910.c.o(.text);
        build/src/9E990.c.o(.text);
        build/src/9EBF0.c.o(.text);
        build/src/9EC60.c.o(.text);
        build/src/9EF60.c.o(.text);
        build/src/9F3E0.c.o(.text);
        build/src/9F4F0.c.o(.text);
        build/src/9F750.c.o(.text);
        build/src/9FED0.c.o(.text);
        build/src/A0130.c.o(.text);
        build/src/A05B0.c.o(.text);
        build/src/A0940.c.o(.text);
        build/src/A0E70.c.o(.text);
        build/src/A0FB0.c.o(.text);
        build/src/A1330.c.o(.text);
        build/src/A1490.c.o(.text);
        build/src/A1500.c.o(.text);
        build/src/A1570.c.o(.text);
        build/src/A15D0.c.o(.text);
        build/src/A1620.c.o(.text);
        build/src/A19A0.c.o(.text);
        build/src/A1A80.c.o(.text);
        build/src/A1B00.c.o(.text);
        build/src/A1C10.c.o(.text);
        build/src/A1D90.c.o(.text);
        build/src/A1E00.c.o(.text);
        build/src/A1E50.c.o(.text);
        build/src/A2080.c.o(.text);
        build/src/A21C0.c.o(.text);
        build/src/A2260.c.o(.text);
        build/src/A23A0.c.o(.text);
        build/src/A24F0.c.o(.text);
        build/src/A27D0.c.o(.text);
        build/src/A29F0.c.o(.text);
        build/src/A2A40.c.o(.text);
        build/src/A2A90.c.o(.text);
        build/src/A2AF0.c.o(.text);
        build/src/A2E80.c.o(.text);
        build/src/A2EE0.c.o(.text);
        build/src/A30C0.c.o(.text);
        build/src/A3110.c.o(.text);
        build/src/A3320.c.o(.text);
        build/src/A3370.c.o(.text);
        build/src/A3600.c.o(.text);
        build/src/A3650.c.o(.text);
        build/src/A3B10.c.o(.text);
        build/src/A3FB0.c.o(.text);
        build/src/A42C0.c.o(.text);
        build/src/A4770.c.o(.text);
        build/src/A4B40.c.o(.text);
        build/src/A4CD0.c.o(.text);
        build/src/A50B0.c.o(.text);
        build/src/A5250.c.o(.text);
        build/src/A5370.c.o(.text);
        build/src/A5620.c.o(.text);
        build/src/A57B0.c.o(.text);
        build/src/A58C0.c.o(.text);
        build/src/A5A20.c.o(.text);
        build/src/A5B30.c.o(.text);
        build/src/A5CA0.c.o(.text);
        build/src/A5EC0.c.o(.text);
        build/src/A62D0.c.o(.text);
        build/src/A6930.c.o(.text);
        build/src/A6BD0.c.o(.text);
        build/src/A7090.c.o(.text);
        build/src/A7380.c.o(.text);
        build/src/A7C30.c.o(.text);
        build/src/A8190.c.o(.text);
        build/src/A8450.c.o(.text);
        build/src/A8D50.c.o(.text);
        build/src/A9C10.c.o(.text);
        build/src/AA510.c.o(.text);
        build/src/AA7F0.c.o(.text);
        build/src/AB3D0.c.o(.text);
        build/src/ABCD0.c.o(.text);
        build/src/ABFB0.c.o(.text);
        build/src/ACA30.c.o(.text);
        build/src/ACA90.c.o(.text);
        build/src/ACC50.c.o(.text);
        build/src/ACCB0.c.o(.text);
        build/src/ACF10.c.o(.text);
        build/src/ACF80.c.o(.text);
        build/src/AD210.c.o(.text);
        build/src/AD380.c.o(.text);
        build/src/AD5D0.c.o(.text);
        build/src/AD740.c.o(.text);
        build/src/AD940.c.o(.text);
        build/src/ADA70.c.o(.text);
        build/src/ADBD0.c.o(.text);
        build/src/ADF70.c.o(.text);
        build/src/AE150.c.o(.text);
        build/src/AE630.c.o(.text);
        build/src/AE820.c.o(.text);
        build/src/AED10.c.o(.text);
        build/src/AEF30.c.o(.text);
        build/src/AF450.c.o(.text);
        build/src/AF6C0.c.o(.text);
        build/src/AF960.c.o(.text);
        build/src/AFBD0.c.o(.text);
        build/src/AFE60.c.o(.text);
        build/src/AFF70.c.o(.text);
        build/src/B07B0.c.o(.text);
        build/src/B0BA0.c.o(.text);
        build/src/B0FC0.c.o(.text);
        build/src/B1930.c.o(.text);
        build/src/B1B60.c.o(.text);
        build/src/B1DC0.c.o(.text);
        build/src/B1FD0.c.o(.text);
        build/src/B22E0.c.o(.text);
        build/src/B2310.c.o(.text);
        build/src/B2340.c.o(.text);
        build/src/B2350.c.o(.text);
        main_TEXT_END = .;
        main_TEXT_SIZE = ABSOLUTE(main_TEXT_END - main_TEXT_START);
        B2360_bin = .;
        build/assets/B2360.bin.o(.data);
        aspMain_bin = .;
        build/assets/aspMain.bin.o(.data);
        B9550_bin = .;
        build/assets/B9550.bin.o(.data);
        _180C0_data__s = .;
        build/asm/data/180C0.data.s.o(.data);
        overlay_table_data__s = .;
        build/asm/data/overlay_table.data.s.o(.data);
        C3DE0_bin = .;
        build/assets/C3DE0.bin.o(.data);
        minigamelist_data__s = .;
        build/asm/data/minigamelist.data.s.o(.data);
        C5940_bin = .;
        build/assets/C5940.bin.o(.data);
        ___src_lib_2_0I_gu_rotate_c = .;
        build/src/lib/2.0I/gu/rotate.c.o(.data);
        ___src_lib_2_0I_gu_rotateRPY_c = .;
        build/src/lib/2.0I/gu/rotateRPY.c.o(.data);
        C7090_bin = .;
        build/assets/C7090.bin.o(.data);
        ___src_lib_2_0I_audio_sl_c = .;
        build/src/lib/2.0I/audio/sl.c.o(.data);
        ___src_lib_2_0I_io_aisetnextbuf_c = .;
        build/src/lib/2.0I/io/aisetnextbuf.c.o(.data);
        ___src_lib_2_0I_io_controller_c = .;
        build/src/lib/2.0I/io/controller.c.o(.data);
        ___src_lib_2_0I_io_piacs_c = .;
        build/src/lib/2.0I/io/piacs.c.o(.data);
        ___src_lib_2_0I_io_cartrominit_c = .;
        build/src/lib/2.0I/io/cartrominit.c.o(.data);
        ___src_lib_2_0I_io_pimgr_c = .;
        build/src/lib/2.0I/io/pimgr.c.o(.data);
        ___src_lib_2_0I_io_vimgr_c = .;
        build/src/lib/2.0I/io/vimgr.c.o(.data);
        C7170_bin = .;
        build/assets/C7170.bin.o(.data);
        ___src_lib_2_0I_os_initialize_c = .;
        build/src/lib/2.0I/os/initialize.c.o(.data);
        ___src_lib_2_0I_os_seteventmesg_c = .;
        build/src/lib/2.0I/os/seteventmesg.c.o(.data);
        C8350_bin = .;
        build/assets/C8350.bin.o(.data);
        aspMain_data_bin = .;
        build/assets/aspMain_data.bin.o(.data);
        CAA70_bin = .;
        build/assets/CAA70.bin.o(.data);
        main_RODATA_START = .;
        build/src/3F5B0.c.o(.rodata);
        CB7D0_bin = .;
        build/assets/CB7D0.bin.o(.data);
        build/src/51200.c.o(.rodata);
        CBDC0_bin = .;
        build/assets/CBDC0.bin.o(.data);
        build/src/57330.c.o(.rodata);
        CBFB0_bin = .;
        build/assets/CBFB0.bin.o(.data);
        build/src/lib/2.0I/gu/cosf.c.o(.rodata);
        build/src/lib/2.0I/gu/lookat.c.o(.rodata);
        build/src/lib/2.0I/gu/lookatref.c.o(.rodata);
        build/src/lib/2.0I/gu/lookathil.c.o(.rodata);
        build/src/lib/2.0I/gu/perspective.c.o(.rodata);
        build/src/lib/2.0I/gu/sinf.c.o(.rodata);
        CD030_bin = .;
        build/assets/CD030.bin.o(.data);
        build/src/lib/2.0I/audio/cseq.c.o(.rodata);
        build/src/lib/2.0I/audio/csplayer.c.o(.rodata);
        build/src/lib/2.0I/audio/seqplayer.c.o(.rodata);
        build/src/lib/2.0I/audio/synthesizer.c.o(.rodata);
        build/src/lib/2.0I/io/aisetfreq.c.o(.rodata);
        build/src/lib/2.0I/io/viswapcontext.c.o(.rodata);
        CD260_bin = .;
        build/assets/CD260.bin.o(.data);
        build/src/lib/2.0I/audio/resample.c.o(.rodata);
        build/src/lib/2.0I/audio/seq.c.o(.rodata);
        main_RODATA_END = .;
        main_RODATA_SIZE = ABSOLUTE(main_RODATA_END - main_RODATA_START);
        CD320_bin = .;
        build/assets/CD320.bin.o(.data);
        main_DATA_END = .;
        main_DATA_SIZE = ABSOLUTE(main_DATA_END - main_DATA_START);
    }
    main_bss_VRAM = ADDR(.main_bss);
    .main_bss (NOLOAD) : SUBALIGN(16)
    {
        main_BSS_START = .;
        build/src/padding/bss_padding_1d330.c.o(.bss);
        build/src/lib/2.0I/io/sptask.c.o(.bss);
        build/src/lib/2.0I/io/controller.c.o(.bss);
        build/src/lib/2.0I/io/piacs.c.o(.bss);
        build/src/lib/2.0I/io/motor.c.o(.bss);
        build/src/lib/2.0I/io/pimgr.c.o(.bss);
        build/src/lib/2.0I/io/vimgr.c.o(.bss);
        main_BSS_END = .;
        main_BSS_SIZE = ABSOLUTE(main_BSS_END - main_BSS_START);
    }
    __romPos += SIZEOF(.main);
    __romPos = ALIGN(__romPos, 16);
    main_ROM_END = __romPos;
    main_VRAM_END = .;

    MemoryMatch_ROM_START = __romPos;
    MemoryMatch_VRAM = ADDR(.MemoryMatch);
    .MemoryMatch 0x800F65E0 : AT(MemoryMatch_ROM_START) SUBALIGN(16)
    {
        MemoryMatch_TEXT_START = .;
        build/src/ovl_00_MemoryMatch/CDA50.c.o(.text);
        build/src/ovl_00_MemoryMatch/D27D0.c.o(.text);
        MemoryMatch_TEXT_END = .;
        MemoryMatch_TEXT_SIZE = ABSOLUTE(MemoryMatch_TEXT_END - MemoryMatch_TEXT_START);
        MemoryMatch_DATA_START = .;
        ovl_00_MemoryMatch_CDA50_data__s = .;
        build/asm/data/ovl_00_MemoryMatch/CDA50.data.s.o(.data);
        ovl_00_MemoryMatch_D4C50_bin = .;
        build/assets/ovl_00_MemoryMatch/D4C50.bin.o(.data);
        MemoryMatch_DATA_END = .;
        MemoryMatch_DATA_SIZE = ABSOLUTE(MemoryMatch_DATA_END - MemoryMatch_DATA_START);
        MemoryMatch_RODATA_START = .;
        build/src/ovl_00_MemoryMatch/CDA50.c.o(.rodata);
        build/src/ovl_00_MemoryMatch/D27D0.c.o(.rodata);
        MemoryMatch_RODATA_END = .;
        MemoryMatch_RODATA_SIZE = ABSOLUTE(MemoryMatch_RODATA_END - MemoryMatch_RODATA_START);
    }
    MemoryMatch_bss_VRAM = ADDR(.MemoryMatch_bss);
    .MemoryMatch_bss (NOLOAD) : SUBALIGN(16)
    {
        MemoryMatch_BSS_START = .;
        build/src/ovl_00_MemoryMatch/CDA50.c.o(.bss);
        build/src/ovl_00_MemoryMatch/D27D0.c.o(.bss);
        MemoryMatch_BSS_END = .;
        MemoryMatch_BSS_SIZE = ABSOLUTE(MemoryMatch_BSS_END - MemoryMatch_BSS_START);
    }
    __romPos += SIZEOF(.MemoryMatch);
    __romPos = ALIGN(__romPos, 16);
    MemoryMatch_ROM_END = __romPos;
    MemoryMatch_VRAM_END = .;

    ChanceTime_ROM_START = __romPos;
    ChanceTime_VRAM = ADDR(.ChanceTime);
    .ChanceTime 0x800F65E0 : AT(ChanceTime_ROM_START) SUBALIGN(16)
    {
        ChanceTime_TEXT_START = .;
        build/src/ovl_01_ChanceTime/D51E0.c.o(.text);
        build/src/ovl_01_ChanceTime/DAF90.c.o(.text);
        build/src/ovl_01_ChanceTime/DD760.c.o(.text);
        build/src/ovl_01_ChanceTime/DE2D0.c.o(.text);
        build/src/ovl_01_ChanceTime/DE6A0.c.o(.text);
        ChanceTime_TEXT_END = .;
        ChanceTime_TEXT_SIZE = ABSOLUTE(ChanceTime_TEXT_END - ChanceTime_TEXT_START);
        ChanceTime_DATA_START = .;
        ovl_01_ChanceTime_D51E0_c = .;
        build/src/ovl_01_ChanceTime/D51E0.c.o(.data);
        ovl_01_ChanceTime_DAF90_c = .;
        build/src/ovl_01_ChanceTime/DAF90.c.o(.data);
        ovl_01_ChanceTime_DD760_c = .;
        build/src/ovl_01_ChanceTime/DD760.c.o(.data);
        ovl_01_ChanceTime_DE2D0_c = .;
        build/src/ovl_01_ChanceTime/DE2D0.c.o(.data);
        ovl_01_ChanceTime_DE6A0_c = .;
        build/src/ovl_01_ChanceTime/DE6A0.c.o(.data);
        ChanceTime_DATA_END = .;
        ChanceTime_DATA_SIZE = ABSOLUTE(ChanceTime_DATA_END - ChanceTime_DATA_START);
        ChanceTime_RODATA_START = .;
        build/src/ovl_01_ChanceTime/D51E0.c.o(.rodata);
        build/src/ovl_01_ChanceTime/DAF90.c.o(.rodata);
        build/src/ovl_01_ChanceTime/DD760.c.o(.rodata);
        build/src/ovl_01_ChanceTime/DE2D0.c.o(.rodata);
        build/src/ovl_01_ChanceTime/DE6A0.c.o(.rodata);
        ChanceTime_RODATA_END = .;
        ChanceTime_RODATA_SIZE = ABSOLUTE(ChanceTime_RODATA_END - ChanceTime_RODATA_START);
    }
    ChanceTime_bss_VRAM = ADDR(.ChanceTime_bss);
    .ChanceTime_bss (NOLOAD) : SUBALIGN(16)
    {
        ChanceTime_BSS_START = .;
        build/src/ovl_01_ChanceTime/D51E0.c.o(.bss);
        build/src/ovl_01_ChanceTime/DAF90.c.o(.bss);
        build/src/ovl_01_ChanceTime/DD760.c.o(.bss);
        build/src/ovl_01_ChanceTime/DE2D0.c.o(.bss);
        build/src/ovl_01_ChanceTime/DE6A0.c.o(.bss);
        ChanceTime_BSS_END = .;
        ChanceTime_BSS_SIZE = ABSOLUTE(ChanceTime_BSS_END - ChanceTime_BSS_START);
    }
    __romPos += SIZEOF(.ChanceTime);
    __romPos = ALIGN(__romPos, 16);
    ChanceTime_ROM_END = __romPos;
    ChanceTime_VRAM_END = .;

    DFDF0_ROM_START = __romPos;
    DFDF0_VRAM = ADDR(.DFDF0);
    .DFDF0 : AT(DFDF0_ROM_START) SUBALIGN(16)
    {
        DFDF0_DATA_START = .;
        DFDF0_bin = .;
        build/assets/DFDF0.bin.o(.data);
        DFDF0_DATA_END = .;
        DFDF0_DATA_SIZE = ABSOLUTE(DFDF0_DATA_END - DFDF0_DATA_START);
    }
    __romPos += SIZEOF(.DFDF0);
    DFDF0_ROM_END = __romPos;
    DFDF0_VRAM_END = .;

    SlotMachine_ROM_START = __romPos;
    SlotMachine_VRAM = ADDR(.SlotMachine);
    .SlotMachine 0x800F65E0 : AT(SlotMachine_ROM_START) SUBALIGN(16)
    {
        SlotMachine_TEXT_START = .;
        build/src/ovl_02_SlotMachine/E02F0.c.o(.text);
        build/src/ovl_02_SlotMachine/E13F0.c.o(.text);
        build/src/ovl_02_SlotMachine/E5DA0.c.o(.text);
        SlotMachine_TEXT_END = .;
        SlotMachine_TEXT_SIZE = ABSOLUTE(SlotMachine_TEXT_END - SlotMachine_TEXT_START);
        SlotMachine_DATA_START = .;
        ovl_02_SlotMachine_E7E10_bin = .;
        build/assets/ovl_02_SlotMachine/E7E10.bin.o(.data);
        ovl_02_SlotMachine_E02F0_c = .;
        build/src/ovl_02_SlotMachine/E02F0.c.o(.data);
        ovl_02_SlotMachine_E13F0_c = .;
        build/src/ovl_02_SlotMachine/E13F0.c.o(.data);
        ovl_02_SlotMachine_E5DA0_c = .;
        build/src/ovl_02_SlotMachine/E5DA0.c.o(.data);
        SlotMachine_DATA_END = .;
        SlotMachine_DATA_SIZE = ABSOLUTE(SlotMachine_DATA_END - SlotMachine_DATA_START);
        SlotMachine_RODATA_START = .;
        build/src/ovl_02_SlotMachine/E02F0.c.o(.rodata);
        build/src/ovl_02_SlotMachine/E13F0.c.o(.rodata);
        build/src/ovl_02_SlotMachine/E5DA0.c.o(.rodata);
        SlotMachine_RODATA_END = .;
        SlotMachine_RODATA_SIZE = ABSOLUTE(SlotMachine_RODATA_END - SlotMachine_RODATA_START);
    }
    SlotMachine_bss_VRAM = ADDR(.SlotMachine_bss);
    .SlotMachine_bss (NOLOAD) : SUBALIGN(16)
    {
        SlotMachine_BSS_START = .;
        build/src/ovl_02_SlotMachine/E02F0.c.o(.bss);
        build/src/ovl_02_SlotMachine/E13F0.c.o(.bss);
        build/src/ovl_02_SlotMachine/E5DA0.c.o(.bss);
        SlotMachine_BSS_END = .;
        SlotMachine_BSS_SIZE = ABSOLUTE(SlotMachine_BSS_END - SlotMachine_BSS_START);
    }
    __romPos += SIZEOF(.SlotMachine);
    __romPos = ALIGN(__romPos, 16);
    SlotMachine_ROM_END = __romPos;
    SlotMachine_VRAM_END = .;

    BuriedTreasure_ROM_START = __romPos;
    BuriedTreasure_VRAM = ADDR(.BuriedTreasure);
    .BuriedTreasure 0x800F65E0 : AT(BuriedTreasure_ROM_START) SUBALIGN(16)
    {
        BuriedTreasure_TEXT_START = .;
        build/src/ovl_03_BuriedTreasure/E8F60.c.o(.text);
        build/src/ovl_03_BuriedTreasure/EB0E0.c.o(.text);
        BuriedTreasure_TEXT_END = .;
        BuriedTreasure_TEXT_SIZE = ABSOLUTE(BuriedTreasure_TEXT_END - BuriedTreasure_TEXT_START);
        BuriedTreasure_DATA_START = .;
        ovl_03_BuriedTreasure_EE3F0_data__s = .;
        build/asm/data/ovl_03_BuriedTreasure/EE3F0.data.s.o(.data);
        BuriedTreasure_DATA_END = .;
        BuriedTreasure_DATA_SIZE = ABSOLUTE(BuriedTreasure_DATA_END - BuriedTreasure_DATA_START);
        BuriedTreasure_RODATA_START = .;
        build/asm/data/ovl_03_BuriedTreasure/EE7E0.rodata.s.o(.rodata);
        BuriedTreasure_RODATA_END = .;
        BuriedTreasure_RODATA_SIZE = ABSOLUTE(BuriedTreasure_RODATA_END - BuriedTreasure_RODATA_START);
    }
    BuriedTreasure_bss_VRAM = ADDR(.BuriedTreasure_bss);
    .BuriedTreasure_bss (NOLOAD) : SUBALIGN(16)
    {
        BuriedTreasure_BSS_START = .;
        build/src/ovl_03_BuriedTreasure/E8F60.c.o(.bss);
        build/src/ovl_03_BuriedTreasure/EB0E0.c.o(.bss);
        BuriedTreasure_BSS_END = .;
        BuriedTreasure_BSS_SIZE = ABSOLUTE(BuriedTreasure_BSS_END - BuriedTreasure_BSS_START);
    }
    __romPos += SIZEOF(.BuriedTreasure);
    __romPos = ALIGN(__romPos, 16);
    BuriedTreasure_ROM_END = __romPos;
    BuriedTreasure_VRAM_END = .;

    TreasureDivers_ROM_START = __romPos;
    TreasureDivers_VRAM = ADDR(.TreasureDivers);
    .TreasureDivers 0x800F65E0 : AT(TreasureDivers_ROM_START) SUBALIGN(16)
    {
        TreasureDivers_TEXT_START = .;
        build/src/ovl_04_TreasureDivers/EE9A0.c.o(.text);
        build/src/ovl_04_TreasureDivers/F2800.c.o(.text);
        build/src/ovl_04_TreasureDivers/F4420.c.o(.text);
        TreasureDivers_TEXT_END = .;
        TreasureDivers_TEXT_SIZE = ABSOLUTE(TreasureDivers_TEXT_END - TreasureDivers_TEXT_START);
        TreasureDivers_DATA_START = .;
        ovl_04_TreasureDivers_F6750_data__s = .;
        build/asm/data/ovl_04_TreasureDivers/F6750.data.s.o(.data);
        TreasureDivers_DATA_END = .;
        TreasureDivers_DATA_SIZE = ABSOLUTE(TreasureDivers_DATA_END - TreasureDivers_DATA_START);
        TreasureDivers_RODATA_START = .;
        build/asm/data/ovl_04_TreasureDivers/F6830.rodata.s.o(.rodata);
        TreasureDivers_RODATA_END = .;
        TreasureDivers_RODATA_SIZE = ABSOLUTE(TreasureDivers_RODATA_END - TreasureDivers_RODATA_START);
    }
    TreasureDivers_bss_VRAM = ADDR(.TreasureDivers_bss);
    .TreasureDivers_bss (NOLOAD) : SUBALIGN(16)
    {
        TreasureDivers_BSS_START = .;
        build/src/ovl_04_TreasureDivers/EE9A0.c.o(.bss);
        build/src/ovl_04_TreasureDivers/F2800.c.o(.bss);
        build/src/ovl_04_TreasureDivers/F4420.c.o(.bss);
        TreasureDivers_BSS_END = .;
        TreasureDivers_BSS_SIZE = ABSOLUTE(TreasureDivers_BSS_END - TreasureDivers_BSS_START);
    }
    __romPos += SIZEOF(.TreasureDivers);
    __romPos = ALIGN(__romPos, 16);
    TreasureDivers_ROM_END = __romPos;
    TreasureDivers_VRAM_END = .;

    ShellGame_ROM_START = __romPos;
    ShellGame_VRAM = ADDR(.ShellGame);
    .ShellGame 0x800F65E0 : AT(ShellGame_ROM_START) SUBALIGN(16)
    {
        ShellGame_TEXT_START = .;
        build/src/ovl_05_ShellGame/F6AB0.c.o(.text);
        build/src/ovl_05_ShellGame/FD460.c.o(.text);
        ShellGame_TEXT_END = .;
        ShellGame_TEXT_SIZE = ABSOLUTE(ShellGame_TEXT_END - ShellGame_TEXT_START);
        ShellGame_DATA_START = .;
        ovl_05_ShellGame_F6AB0_data__s = .;
        build/asm/data/ovl_05_ShellGame/F6AB0.data.s.o(.data);
        ShellGame_DATA_END = .;
        ShellGame_DATA_SIZE = ABSOLUTE(ShellGame_DATA_END - ShellGame_DATA_START);
        ShellGame_RODATA_START = .;
        build/src/ovl_05_ShellGame/F6AB0.c.o(.rodata);
        build/src/ovl_05_ShellGame/FD460.c.o(.rodata);
        ShellGame_RODATA_END = .;
        ShellGame_RODATA_SIZE = ABSOLUTE(ShellGame_RODATA_END - ShellGame_RODATA_START);
    }
    ShellGame_bss_VRAM = ADDR(.ShellGame_bss);
    .ShellGame_bss (NOLOAD) : SUBALIGN(16)
    {
        ShellGame_BSS_START = .;
        build/src/ovl_05_ShellGame/F6AB0.c.o(.bss);
        build/src/ovl_05_ShellGame/FD460.c.o(.bss);
        ShellGame_BSS_END = .;
        ShellGame_BSS_SIZE = ABSOLUTE(ShellGame_BSS_END - ShellGame_BSS_START);
    }
    __romPos += SIZEOF(.ShellGame);
    __romPos = ALIGN(__romPos, 16);
    ShellGame_ROM_END = __romPos;
    ShellGame_VRAM_END = .;

    UnusedMinigame0_ROM_START = __romPos;
    UnusedMinigame0_VRAM = ADDR(.UnusedMinigame0);
    .UnusedMinigame0 0x800F65E0 : AT(UnusedMinigame0_ROM_START) SUBALIGN(16)
    {
        UnusedMinigame0_TEXT_START = .;
        build/src/ovl_06_UnusedMinigame0/FF570.c.o(.text);
        build/src/ovl_06_UnusedMinigame0/103D80.c.o(.text);
        build/src/ovl_06_UnusedMinigame0/105EA0.c.o(.text);
        UnusedMinigame0_TEXT_END = .;
        UnusedMinigame0_TEXT_SIZE = ABSOLUTE(UnusedMinigame0_TEXT_END - UnusedMinigame0_TEXT_START);
        UnusedMinigame0_DATA_START = .;
        ovl_06_UnusedMinigame0_FF570_c = .;
        build/src/ovl_06_UnusedMinigame0/FF570.c.o(.data);
        ovl_06_UnusedMinigame0_103D80_c = .;
        build/src/ovl_06_UnusedMinigame0/103D80.c.o(.data);
        ovl_06_UnusedMinigame0_105EA0_c = .;
        build/src/ovl_06_UnusedMinigame0/105EA0.c.o(.data);
        UnusedMinigame0_DATA_END = .;
        UnusedMinigame0_DATA_SIZE = ABSOLUTE(UnusedMinigame0_DATA_END - UnusedMinigame0_DATA_START);
        UnusedMinigame0_RODATA_START = .;
        build/src/ovl_06_UnusedMinigame0/FF570.c.o(.rodata);
        build/src/ovl_06_UnusedMinigame0/103D80.c.o(.rodata);
        build/src/ovl_06_UnusedMinigame0/105EA0.c.o(.rodata);
        UnusedMinigame0_RODATA_END = .;
        UnusedMinigame0_RODATA_SIZE = ABSOLUTE(UnusedMinigame0_RODATA_END - UnusedMinigame0_RODATA_START);
    }
    UnusedMinigame0_bss_VRAM = ADDR(.UnusedMinigame0_bss);
    .UnusedMinigame0_bss (NOLOAD) : SUBALIGN(16)
    {
        UnusedMinigame0_BSS_START = .;
        build/src/ovl_06_UnusedMinigame0/FF570.c.o(.bss);
        build/src/ovl_06_UnusedMinigame0/103D80.c.o(.bss);
        build/src/ovl_06_UnusedMinigame0/105EA0.c.o(.bss);
        UnusedMinigame0_BSS_END = .;
        UnusedMinigame0_BSS_SIZE = ABSOLUTE(UnusedMinigame0_BSS_END - UnusedMinigame0_BSS_START);
    }
    __romPos += SIZEOF(.UnusedMinigame0);
    __romPos = ALIGN(__romPos, 16);
    UnusedMinigame0_ROM_END = __romPos;
    UnusedMinigame0_VRAM_END = .;

    _10BA80_ROM_START = __romPos;
    _10BA80_VRAM = ADDR(._10BA80);
    ._10BA80 : AT(_10BA80_ROM_START) SUBALIGN(16)
    {
        _10BA80_DATA_START = .;
        _10BA80_bin = .;
        build/assets/10BA80.bin.o(.data);
        _10BA80_DATA_END = .;
        _10BA80_DATA_SIZE = ABSOLUTE(_10BA80_DATA_END - _10BA80_DATA_START);
    }
    __romPos += SIZEOF(._10BA80);
    _10BA80_ROM_END = __romPos;
    _10BA80_VRAM_END = .;

    HotBobOmb_ROM_START = __romPos;
    HotBobOmb_VRAM = ADDR(.HotBobOmb);
    .HotBobOmb 0x800F65E0 : AT(HotBobOmb_ROM_START) SUBALIGN(16)
    {
        HotBobOmb_TEXT_START = .;
        build/src/ovl_07_HotBobOmb/10CD10.c.o(.text);
        build/src/ovl_07_HotBobOmb/10CF70.c.o(.text);
        build/src/ovl_07_HotBobOmb/10F6D0.c.o(.text);
        HotBobOmb_TEXT_END = .;
        HotBobOmb_TEXT_SIZE = ABSOLUTE(HotBobOmb_TEXT_END - HotBobOmb_TEXT_START);
        HotBobOmb_DATA_START = .;
        ovl_07_HotBobOmb_10CD10_c = .;
        build/src/ovl_07_HotBobOmb/10CD10.c.o(.data);
        ovl_07_HotBobOmb_10CF70_c = .;
        build/src/ovl_07_HotBobOmb/10CF70.c.o(.data);
        ovl_07_HotBobOmb_10F6D0_c = .;
        build/src/ovl_07_HotBobOmb/10F6D0.c.o(.data);
        HotBobOmb_DATA_END = .;
        HotBobOmb_DATA_SIZE = ABSOLUTE(HotBobOmb_DATA_END - HotBobOmb_DATA_START);
        HotBobOmb_RODATA_START = .;
        build/src/ovl_07_HotBobOmb/10CD10.c.o(.rodata);
        build/src/ovl_07_HotBobOmb/10CF70.c.o(.rodata);
        build/src/ovl_07_HotBobOmb/10F6D0.c.o(.rodata);
        HotBobOmb_RODATA_END = .;
        HotBobOmb_RODATA_SIZE = ABSOLUTE(HotBobOmb_RODATA_END - HotBobOmb_RODATA_START);
    }
    HotBobOmb_bss_VRAM = ADDR(.HotBobOmb_bss);
    .HotBobOmb_bss (NOLOAD) : SUBALIGN(16)
    {
        HotBobOmb_BSS_START = .;
        build/src/ovl_07_HotBobOmb/10CD10.c.o(.bss);
        build/src/ovl_07_HotBobOmb/10CF70.c.o(.bss);
        build/src/ovl_07_HotBobOmb/10F6D0.c.o(.bss);
        HotBobOmb_BSS_END = .;
        HotBobOmb_BSS_SIZE = ABSOLUTE(HotBobOmb_BSS_END - HotBobOmb_BSS_START);
    }
    __romPos += SIZEOF(.HotBobOmb);
    __romPos = ALIGN(__romPos, 16);
    HotBobOmb_ROM_END = __romPos;
    HotBobOmb_VRAM_END = .;

    _110460_ROM_START = __romPos;
    _110460_VRAM = ADDR(._110460);
    ._110460 : AT(_110460_ROM_START) SUBALIGN(16)
    {
        _110460_DATA_START = .;
        _110460_bin = .;
        build/assets/110460.bin.o(.data);
        _110460_DATA_END = .;
        _110460_DATA_SIZE = ABSOLUTE(_110460_DATA_END - _110460_DATA_START);
    }
    __romPos += SIZEOF(._110460);
    _110460_ROM_END = __romPos;
    _110460_VRAM_END = .;

    UnusedMinigame1_ROM_START = __romPos;
    UnusedMinigame1_VRAM = ADDR(.UnusedMinigame1);
    .UnusedMinigame1 0x800F65E0 : AT(UnusedMinigame1_ROM_START) SUBALIGN(16)
    {
        UnusedMinigame1_TEXT_START = .;
        build/src/ovl_08_UnusedMinigame1/110F90.c.o(.text);
        build/src/ovl_08_UnusedMinigame1/111890.c.o(.text);
        build/src/ovl_08_UnusedMinigame1/1127C0.c.o(.text);
        build/src/ovl_08_UnusedMinigame1/113730.c.o(.text);
        UnusedMinigame1_TEXT_END = .;
        UnusedMinigame1_TEXT_SIZE = ABSOLUTE(UnusedMinigame1_TEXT_END - UnusedMinigame1_TEXT_START);
        UnusedMinigame1_DATA_START = .;
        ovl_08_UnusedMinigame1_110F90_c = .;
        build/src/ovl_08_UnusedMinigame1/110F90.c.o(.data);
        ovl_08_UnusedMinigame1_111890_c = .;
        build/src/ovl_08_UnusedMinigame1/111890.c.o(.data);
        ovl_08_UnusedMinigame1_1127C0_c = .;
        build/src/ovl_08_UnusedMinigame1/1127C0.c.o(.data);
        ovl_08_UnusedMinigame1_113730_c = .;
        build/src/ovl_08_UnusedMinigame1/113730.c.o(.data);
        UnusedMinigame1_DATA_END = .;
        UnusedMinigame1_DATA_SIZE = ABSOLUTE(UnusedMinigame1_DATA_END - UnusedMinigame1_DATA_START);
        UnusedMinigame1_RODATA_START = .;
        build/src/ovl_08_UnusedMinigame1/110F90.c.o(.rodata);
        build/src/ovl_08_UnusedMinigame1/111890.c.o(.rodata);
        build/src/ovl_08_UnusedMinigame1/1127C0.c.o(.rodata);
        build/src/ovl_08_UnusedMinigame1/113730.c.o(.rodata);
        UnusedMinigame1_RODATA_END = .;
        UnusedMinigame1_RODATA_SIZE = ABSOLUTE(UnusedMinigame1_RODATA_END - UnusedMinigame1_RODATA_START);
    }
    UnusedMinigame1_bss_VRAM = ADDR(.UnusedMinigame1_bss);
    .UnusedMinigame1_bss (NOLOAD) : SUBALIGN(16)
    {
        UnusedMinigame1_BSS_START = .;
        build/src/ovl_08_UnusedMinigame1/110F90.c.o(.bss);
        build/src/ovl_08_UnusedMinigame1/111890.c.o(.bss);
        build/src/ovl_08_UnusedMinigame1/1127C0.c.o(.bss);
        build/src/ovl_08_UnusedMinigame1/113730.c.o(.bss);
        UnusedMinigame1_BSS_END = .;
        UnusedMinigame1_BSS_SIZE = ABSOLUTE(UnusedMinigame1_BSS_END - UnusedMinigame1_BSS_START);
    }
    __romPos += SIZEOF(.UnusedMinigame1);
    __romPos = ALIGN(__romPos, 16);
    UnusedMinigame1_ROM_END = __romPos;
    UnusedMinigame1_VRAM_END = .;

    _113B20_ROM_START = __romPos;
    _113B20_VRAM = ADDR(._113B20);
    ._113B20 : AT(_113B20_ROM_START) SUBALIGN(16)
    {
        _113B20_DATA_START = .;
        _113B20_bin = .;
        build/assets/113B20.bin.o(.data);
        _113B20_DATA_END = .;
        _113B20_DATA_SIZE = ABSOLUTE(_113B20_DATA_END - _113B20_DATA_START);
    }
    __romPos += SIZEOF(._113B20);
    _113B20_ROM_END = __romPos;
    _113B20_VRAM_END = .;

    PipeMaze_ROM_START = __romPos;
    PipeMaze_VRAM = ADDR(.PipeMaze);
    .PipeMaze 0x800F65E0 : AT(PipeMaze_ROM_START) SUBALIGN(16)
    {
        PipeMaze_TEXT_START = .;
        build/src/ovl_09_PipeMaze/113DC0.c.o(.text);
        PipeMaze_TEXT_END = .;
        PipeMaze_TEXT_SIZE = ABSOLUTE(PipeMaze_TEXT_END - PipeMaze_TEXT_START);
        PipeMaze_DATA_START = .;
        ovl_09_PipeMaze_113DC0_c = .;
        build/src/ovl_09_PipeMaze/113DC0.c.o(.data);
        PipeMaze_DATA_END = .;
        PipeMaze_DATA_SIZE = ABSOLUTE(PipeMaze_DATA_END - PipeMaze_DATA_START);
        PipeMaze_RODATA_START = .;
        build/src/ovl_09_PipeMaze/113DC0.c.o(.rodata);
        PipeMaze_RODATA_END = .;
        PipeMaze_RODATA_SIZE = ABSOLUTE(PipeMaze_RODATA_END - PipeMaze_RODATA_START);
    }
    PipeMaze_bss_VRAM = ADDR(.PipeMaze_bss);
    .PipeMaze_bss (NOLOAD) : SUBALIGN(16)
    {
        PipeMaze_BSS_START = .;
        build/src/ovl_09_PipeMaze/113DC0.c.o(.bss);
        PipeMaze_BSS_END = .;
        PipeMaze_BSS_SIZE = ABSOLUTE(PipeMaze_BSS_END - PipeMaze_BSS_START);
    }
    __romPos += SIZEOF(.PipeMaze);
    __romPos = ALIGN(__romPos, 16);
    PipeMaze_ROM_END = __romPos;
    PipeMaze_VRAM_END = .;

    _1170E0_ROM_START = __romPos;
    _1170E0_VRAM = ADDR(._1170E0);
    ._1170E0 : AT(_1170E0_ROM_START) SUBALIGN(16)
    {
        _1170E0_DATA_START = .;
        _1170E0_bin = .;
        build/assets/1170E0.bin.o(.data);
        _1170E0_DATA_END = .;
        _1170E0_DATA_SIZE = ABSOLUTE(_1170E0_DATA_END - _1170E0_DATA_START);
    }
    __romPos += SIZEOF(._1170E0);
    _1170E0_ROM_END = __romPos;
    _1170E0_VRAM_END = .;

    GhostGuess_ROM_START = __romPos;
    GhostGuess_VRAM = ADDR(.GhostGuess);
    .GhostGuess 0x800F65E0 : AT(GhostGuess_ROM_START) SUBALIGN(16)
    {
        GhostGuess_TEXT_START = .;
        build/src/ovl_0A_GhostGuess/117210.c.o(.text);
        build/src/ovl_0A_GhostGuess/11BFE0.c.o(.text);
        GhostGuess_TEXT_END = .;
        GhostGuess_TEXT_SIZE = ABSOLUTE(GhostGuess_TEXT_END - GhostGuess_TEXT_START);
        GhostGuess_DATA_START = .;
        ovl_0A_GhostGuess_117210_c = .;
        build/src/ovl_0A_GhostGuess/117210.c.o(.data);
        ovl_0A_GhostGuess_11BFE0_c = .;
        build/src/ovl_0A_GhostGuess/11BFE0.c.o(.data);
        GhostGuess_DATA_END = .;
        GhostGuess_DATA_SIZE = ABSOLUTE(GhostGuess_DATA_END - GhostGuess_DATA_START);
        GhostGuess_RODATA_START = .;
        build/src/ovl_0A_GhostGuess/117210.c.o(.rodata);
        build/src/ovl_0A_GhostGuess/11BFE0.c.o(.rodata);
        GhostGuess_RODATA_END = .;
        GhostGuess_RODATA_SIZE = ABSOLUTE(GhostGuess_RODATA_END - GhostGuess_RODATA_START);
    }
    GhostGuess_bss_VRAM = ADDR(.GhostGuess_bss);
    .GhostGuess_bss (NOLOAD) : SUBALIGN(16)
    {
        GhostGuess_BSS_START = .;
        build/src/ovl_0A_GhostGuess/117210.c.o(.bss);
        build/src/ovl_0A_GhostGuess/11BFE0.c.o(.bss);
        GhostGuess_BSS_END = .;
        GhostGuess_BSS_SIZE = ABSOLUTE(GhostGuess_BSS_END - GhostGuess_BSS_START);
    }
    __romPos += SIZEOF(.GhostGuess);
    __romPos = ALIGN(__romPos, 16);
    GhostGuess_ROM_END = __romPos;
    GhostGuess_VRAM_END = .;

    _11C2A0_ROM_START = __romPos;
    _11C2A0_VRAM = ADDR(._11C2A0);
    ._11C2A0 : AT(_11C2A0_ROM_START) SUBALIGN(16)
    {
        _11C2A0_DATA_START = .;
        _11C2A0_bin = .;
        build/assets/11C2A0.bin.o(.data);
        _11C2A0_DATA_END = .;
        _11C2A0_DATA_SIZE = ABSOLUTE(_11C2A0_DATA_END - _11C2A0_DATA_START);
    }
    __romPos += SIZEOF(._11C2A0);
    _11C2A0_ROM_END = __romPos;
    _11C2A0_VRAM_END = .;

    MusicalMushroom_ROM_START = __romPos;
    MusicalMushroom_VRAM = ADDR(.MusicalMushroom);
    .MusicalMushroom 0x800F65E0 : AT(MusicalMushroom_ROM_START) SUBALIGN(16)
    {
        MusicalMushroom_TEXT_START = .;
        build/src/ovl_0B_MusicalMushroom/11C810.c.o(.text);
        build/src/ovl_0B_MusicalMushroom/11F890.c.o(.text);
        MusicalMushroom_TEXT_END = .;
        MusicalMushroom_TEXT_SIZE = ABSOLUTE(MusicalMushroom_TEXT_END - MusicalMushroom_TEXT_START);
        MusicalMushroom_DATA_START = .;
        ovl_0B_MusicalMushroom_11C810_c = .;
        build/src/ovl_0B_MusicalMushroom/11C810.c.o(.data);
        ovl_0B_MusicalMushroom_11F890_c = .;
        build/src/ovl_0B_MusicalMushroom/11F890.c.o(.data);
        MusicalMushroom_DATA_END = .;
        MusicalMushroom_DATA_SIZE = ABSOLUTE(MusicalMushroom_DATA_END - MusicalMushroom_DATA_START);
        MusicalMushroom_RODATA_START = .;
        build/src/ovl_0B_MusicalMushroom/11C810.c.o(.rodata);
        build/src/ovl_0B_MusicalMushroom/11F890.c.o(.rodata);
        MusicalMushroom_RODATA_END = .;
        MusicalMushroom_RODATA_SIZE = ABSOLUTE(MusicalMushroom_RODATA_END - MusicalMushroom_RODATA_START);
    }
    MusicalMushroom_bss_VRAM = ADDR(.MusicalMushroom_bss);
    .MusicalMushroom_bss (NOLOAD) : SUBALIGN(16)
    {
        MusicalMushroom_BSS_START = .;
        build/src/ovl_0B_MusicalMushroom/11C810.c.o(.bss);
        build/src/ovl_0B_MusicalMushroom/11F890.c.o(.bss);
        MusicalMushroom_BSS_END = .;
        MusicalMushroom_BSS_SIZE = ABSOLUTE(MusicalMushroom_BSS_END - MusicalMushroom_BSS_START);
    }
    __romPos += SIZEOF(.MusicalMushroom);
    __romPos = ALIGN(__romPos, 16);
    MusicalMushroom_ROM_END = __romPos;
    MusicalMushroom_VRAM_END = .;

    _1216F0_ROM_START = __romPos;
    _1216F0_VRAM = ADDR(._1216F0);
    ._1216F0 : AT(_1216F0_ROM_START) SUBALIGN(16)
    {
        _1216F0_DATA_START = .;
        _1216F0_bin = .;
        build/assets/1216F0.bin.o(.data);
        _1216F0_DATA_END = .;
        _1216F0_DATA_SIZE = ABSOLUTE(_1216F0_DATA_END - _1216F0_DATA_START);
    }
    __romPos += SIZEOF(._1216F0);
    _1216F0_ROM_END = __romPos;
    _1216F0_VRAM_END = .;

    PedalPower_ROM_START = __romPos;
    PedalPower_VRAM = ADDR(.PedalPower);
    .PedalPower 0x800F65E0 : AT(PedalPower_ROM_START) SUBALIGN(16)
    {
        PedalPower_TEXT_START = .;
        build/src/ovl_0C_PedalPower/1217D0.c.o(.text);
        build/src/ovl_0C_PedalPower/122BA0.c.o(.text);
        build/src/ovl_0C_PedalPower/1240D0.c.o(.text);
        PedalPower_TEXT_END = .;
        PedalPower_TEXT_SIZE = ABSOLUTE(PedalPower_TEXT_END - PedalPower_TEXT_START);
        PedalPower_DATA_START = .;
        ovl_0C_PedalPower_1217D0_c = .;
        build/src/ovl_0C_PedalPower/1217D0.c.o(.data);
        ovl_0C_PedalPower_122BA0_c = .;
        build/src/ovl_0C_PedalPower/122BA0.c.o(.data);
        ovl_0C_PedalPower_1240D0_c = .;
        build/src/ovl_0C_PedalPower/1240D0.c.o(.data);
        PedalPower_DATA_END = .;
        PedalPower_DATA_SIZE = ABSOLUTE(PedalPower_DATA_END - PedalPower_DATA_START);
        PedalPower_RODATA_START = .;
        build/src/ovl_0C_PedalPower/1217D0.c.o(.rodata);
        build/src/ovl_0C_PedalPower/122BA0.c.o(.rodata);
        build/src/ovl_0C_PedalPower/1240D0.c.o(.rodata);
        PedalPower_RODATA_END = .;
        PedalPower_RODATA_SIZE = ABSOLUTE(PedalPower_RODATA_END - PedalPower_RODATA_START);
    }
    PedalPower_bss_VRAM = ADDR(.PedalPower_bss);
    .PedalPower_bss (NOLOAD) : SUBALIGN(16)
    {
        PedalPower_BSS_START = .;
        build/src/ovl_0C_PedalPower/1217D0.c.o(.bss);
        build/src/ovl_0C_PedalPower/122BA0.c.o(.bss);
        build/src/ovl_0C_PedalPower/1240D0.c.o(.bss);
        PedalPower_BSS_END = .;
        PedalPower_BSS_SIZE = ABSOLUTE(PedalPower_BSS_END - PedalPower_BSS_START);
    }
    __romPos += SIZEOF(.PedalPower);
    __romPos = ALIGN(__romPos, 16);
    PedalPower_ROM_END = __romPos;
    PedalPower_VRAM_END = .;

    _124FD0_ROM_START = __romPos;
    _124FD0_VRAM = ADDR(._124FD0);
    ._124FD0 : AT(_124FD0_ROM_START) SUBALIGN(16)
    {
        _124FD0_DATA_START = .;
        _124FD0_bin = .;
        build/assets/124FD0.bin.o(.data);
        _124FD0_DATA_END = .;
        _124FD0_DATA_SIZE = ABSOLUTE(_124FD0_DATA_END - _124FD0_DATA_START);
    }
    __romPos += SIZEOF(._124FD0);
    _124FD0_ROM_END = __romPos;
    _124FD0_VRAM_END = .;

    CrazyCutter_ROM_START = __romPos;
    CrazyCutter_VRAM = ADDR(.CrazyCutter);
    .CrazyCutter 0x800F65E0 : AT(CrazyCutter_ROM_START) SUBALIGN(16)
    {
        CrazyCutter_TEXT_START = .;
        build/src/ovl_0D_CrazyCutter/1250D0.c.o(.text);
        build/src/ovl_0D_CrazyCutter/12AFE0.c.o(.text);
        CrazyCutter_TEXT_END = .;
        CrazyCutter_TEXT_SIZE = ABSOLUTE(CrazyCutter_TEXT_END - CrazyCutter_TEXT_START);
        CrazyCutter_DATA_START = .;
        ovl_0D_CrazyCutter_1250D0_c = .;
        build/src/ovl_0D_CrazyCutter/1250D0.c.o(.data);
        ovl_0D_CrazyCutter_12AFE0_c = .;
        build/src/ovl_0D_CrazyCutter/12AFE0.c.o(.data);
        CrazyCutter_DATA_END = .;
        CrazyCutter_DATA_SIZE = ABSOLUTE(CrazyCutter_DATA_END - CrazyCutter_DATA_START);
        CrazyCutter_RODATA_START = .;
        build/src/ovl_0D_CrazyCutter/1250D0.c.o(.rodata);
        build/src/ovl_0D_CrazyCutter/12AFE0.c.o(.rodata);
        CrazyCutter_RODATA_END = .;
        CrazyCutter_RODATA_SIZE = ABSOLUTE(CrazyCutter_RODATA_END - CrazyCutter_RODATA_START);
    }
    CrazyCutter_bss_VRAM = ADDR(.CrazyCutter_bss);
    .CrazyCutter_bss (NOLOAD) : SUBALIGN(16)
    {
        CrazyCutter_BSS_START = .;
        build/src/ovl_0D_CrazyCutter/1250D0.c.o(.bss);
        build/src/ovl_0D_CrazyCutter/12AFE0.c.o(.bss);
        CrazyCutter_BSS_END = .;
        CrazyCutter_BSS_SIZE = ABSOLUTE(CrazyCutter_BSS_END - CrazyCutter_BSS_START);
    }
    __romPos += SIZEOF(.CrazyCutter);
    __romPos = ALIGN(__romPos, 16);
    CrazyCutter_ROM_END = __romPos;
    CrazyCutter_VRAM_END = .;

    _12B7E0_ROM_START = __romPos;
    _12B7E0_VRAM = ADDR(._12B7E0);
    ._12B7E0 : AT(_12B7E0_ROM_START) SUBALIGN(16)
    {
        _12B7E0_DATA_START = .;
        _12B7E0_bin = .;
        build/assets/12B7E0.bin.o(.data);
        _12B7E0_DATA_END = .;
        _12B7E0_DATA_SIZE = ABSOLUTE(_12B7E0_DATA_END - _12B7E0_DATA_START);
    }
    __romPos += SIZEOF(._12B7E0);
    _12B7E0_ROM_END = __romPos;
    _12B7E0_VRAM_END = .;

    FaceLift_ROM_START = __romPos;
    FaceLift_VRAM = ADDR(.FaceLift);
    .FaceLift 0x800F65E0 : AT(FaceLift_ROM_START) SUBALIGN(16)
    {
        FaceLift_TEXT_START = .;
        build/src/ovl_0E_FaceLift/12BC20.c.o(.text);
        FaceLift_TEXT_END = .;
        FaceLift_TEXT_SIZE = ABSOLUTE(FaceLift_TEXT_END - FaceLift_TEXT_START);
        FaceLift_DATA_START = .;
        ovl_0E_FaceLift_12BC20_c = .;
        build/src/ovl_0E_FaceLift/12BC20.c.o(.data);
        FaceLift_DATA_END = .;
        FaceLift_DATA_SIZE = ABSOLUTE(FaceLift_DATA_END - FaceLift_DATA_START);
        FaceLift_RODATA_START = .;
        build/src/ovl_0E_FaceLift/12BC20.c.o(.rodata);
        FaceLift_RODATA_END = .;
        FaceLift_RODATA_SIZE = ABSOLUTE(FaceLift_RODATA_END - FaceLift_RODATA_START);
    }
    FaceLift_bss_VRAM = ADDR(.FaceLift_bss);
    .FaceLift_bss (NOLOAD) : SUBALIGN(16)
    {
        FaceLift_BSS_START = .;
        build/src/ovl_0E_FaceLift/12BC20.c.o(.bss);
        FaceLift_BSS_END = .;
        FaceLift_BSS_SIZE = ABSOLUTE(FaceLift_BSS_END - FaceLift_BSS_START);
    }
    __romPos += SIZEOF(.FaceLift);
    __romPos = ALIGN(__romPos, 16);
    FaceLift_ROM_END = __romPos;
    FaceLift_VRAM_END = .;

    _131A10_ROM_START = __romPos;
    _131A10_VRAM = ADDR(._131A10);
    ._131A10 : AT(_131A10_ROM_START) SUBALIGN(16)
    {
        _131A10_DATA_START = .;
        _131A10_bin = .;
        build/assets/131A10.bin.o(.data);
        _131A10_DATA_END = .;
        _131A10_DATA_SIZE = ABSOLUTE(_131A10_DATA_END - _131A10_DATA_START);
    }
    __romPos += SIZEOF(._131A10);
    _131A10_ROM_END = __romPos;
    _131A10_VRAM_END = .;

    WhackAPlant_ROM_START = __romPos;
    WhackAPlant_VRAM = ADDR(.WhackAPlant);
    .WhackAPlant 0x800F65E0 : AT(WhackAPlant_ROM_START) SUBALIGN(16)
    {
        WhackAPlant_TEXT_START = .;
        build/src/ovl_0F_WhackAPlant/131FA0.c.o(.text);
        build/src/ovl_0F_WhackAPlant/136C10.c.o(.text);
        WhackAPlant_TEXT_END = .;
        WhackAPlant_TEXT_SIZE = ABSOLUTE(WhackAPlant_TEXT_END - WhackAPlant_TEXT_START);
        WhackAPlant_DATA_START = .;
        ovl_0F_WhackAPlant_131FA0_c = .;
        build/src/ovl_0F_WhackAPlant/131FA0.c.o(.data);
        ovl_0F_WhackAPlant_136C10_c = .;
        build/src/ovl_0F_WhackAPlant/136C10.c.o(.data);
        WhackAPlant_DATA_END = .;
        WhackAPlant_DATA_SIZE = ABSOLUTE(WhackAPlant_DATA_END - WhackAPlant_DATA_START);
        WhackAPlant_RODATA_START = .;
        build/src/ovl_0F_WhackAPlant/131FA0.c.o(.rodata);
        build/src/ovl_0F_WhackAPlant/136C10.c.o(.rodata);
        WhackAPlant_RODATA_END = .;
        WhackAPlant_RODATA_SIZE = ABSOLUTE(WhackAPlant_RODATA_END - WhackAPlant_RODATA_START);
    }
    WhackAPlant_bss_VRAM = ADDR(.WhackAPlant_bss);
    .WhackAPlant_bss (NOLOAD) : SUBALIGN(16)
    {
        WhackAPlant_BSS_START = .;
        build/src/ovl_0F_WhackAPlant/131FA0.c.o(.bss);
        build/src/ovl_0F_WhackAPlant/136C10.c.o(.bss);
        WhackAPlant_BSS_END = .;
        WhackAPlant_BSS_SIZE = ABSOLUTE(WhackAPlant_BSS_END - WhackAPlant_BSS_START);
    }
    __romPos += SIZEOF(.WhackAPlant);
    __romPos = ALIGN(__romPos, 16);
    WhackAPlant_ROM_END = __romPos;
    WhackAPlant_VRAM_END = .;

    _136F40_ROM_START = __romPos;
    _136F40_VRAM = ADDR(._136F40);
    ._136F40 : AT(_136F40_ROM_START) SUBALIGN(16)
    {
        _136F40_DATA_START = .;
        _136F40_bin = .;
        build/assets/136F40.bin.o(.data);
        _136F40_DATA_END = .;
        _136F40_DATA_SIZE = ABSOLUTE(_136F40_DATA_END - _136F40_DATA_START);
    }
    __romPos += SIZEOF(._136F40);
    _136F40_ROM_END = __romPos;
    _136F40_VRAM_END = .;

    BashNCash_ROM_START = __romPos;
    BashNCash_VRAM = ADDR(.BashNCash);
    .BashNCash 0x800F65E0 : AT(BashNCash_ROM_START) SUBALIGN(16)
    {
        BashNCash_TEXT_START = .;
        build/src/ovl_10_BashNCash/137050.c.o(.text);
        BashNCash_TEXT_END = .;
        BashNCash_TEXT_SIZE = ABSOLUTE(BashNCash_TEXT_END - BashNCash_TEXT_START);
        BashNCash_DATA_START = .;
        ovl_10_BashNCash_137050_c = .;
        build/src/ovl_10_BashNCash/137050.c.o(.data);
        BashNCash_DATA_END = .;
        BashNCash_DATA_SIZE = ABSOLUTE(BashNCash_DATA_END - BashNCash_DATA_START);
        BashNCash_RODATA_START = .;
        build/src/ovl_10_BashNCash/137050.c.o(.rodata);
        BashNCash_RODATA_END = .;
        BashNCash_RODATA_SIZE = ABSOLUTE(BashNCash_RODATA_END - BashNCash_RODATA_START);
    }
    BashNCash_bss_VRAM = ADDR(.BashNCash_bss);
    .BashNCash_bss (NOLOAD) : SUBALIGN(16)
    {
        BashNCash_BSS_START = .;
        build/src/ovl_10_BashNCash/137050.c.o(.bss);
        BashNCash_BSS_END = .;
        BashNCash_BSS_SIZE = ABSOLUTE(BashNCash_BSS_END - BashNCash_BSS_START);
    }
    __romPos += SIZEOF(.BashNCash);
    __romPos = ALIGN(__romPos, 16);
    BashNCash_ROM_END = __romPos;
    BashNCash_VRAM_END = .;

    _13EE10_ROM_START = __romPos;
    _13EE10_VRAM = ADDR(._13EE10);
    ._13EE10 : AT(_13EE10_ROM_START) SUBALIGN(16)
    {
        _13EE10_DATA_START = .;
        _13EE10_bin = .;
        build/assets/13EE10.bin.o(.data);
        _13EE10_DATA_END = .;
        _13EE10_DATA_SIZE = ABSOLUTE(_13EE10_DATA_END - _13EE10_DATA_START);
    }
    __romPos += SIZEOF(._13EE10);
    _13EE10_ROM_END = __romPos;
    _13EE10_VRAM_END = .;

    BowlOver_ROM_START = __romPos;
    BowlOver_VRAM = ADDR(.BowlOver);
    .BowlOver 0x800F65E0 : AT(BowlOver_ROM_START) SUBALIGN(16)
    {
        BowlOver_TEXT_START = .;
        build/src/ovl_11_BowlOver/13EFB0.c.o(.text);
        build/src/ovl_11_BowlOver/142EA0.c.o(.text);
        BowlOver_TEXT_END = .;
        BowlOver_TEXT_SIZE = ABSOLUTE(BowlOver_TEXT_END - BowlOver_TEXT_START);
        BowlOver_DATA_START = .;
        ovl_11_BowlOver_13EFB0_c = .;
        build/src/ovl_11_BowlOver/13EFB0.c.o(.data);
        ovl_11_BowlOver_142EA0_c = .;
        build/src/ovl_11_BowlOver/142EA0.c.o(.data);
        BowlOver_DATA_END = .;
        BowlOver_DATA_SIZE = ABSOLUTE(BowlOver_DATA_END - BowlOver_DATA_START);
        BowlOver_RODATA_START = .;
        build/src/ovl_11_BowlOver/13EFB0.c.o(.rodata);
        build/src/ovl_11_BowlOver/142EA0.c.o(.rodata);
        BowlOver_RODATA_END = .;
        BowlOver_RODATA_SIZE = ABSOLUTE(BowlOver_RODATA_END - BowlOver_RODATA_START);
    }
    BowlOver_bss_VRAM = ADDR(.BowlOver_bss);
    .BowlOver_bss (NOLOAD) : SUBALIGN(16)
    {
        BowlOver_BSS_START = .;
        build/src/ovl_11_BowlOver/13EFB0.c.o(.bss);
        build/src/ovl_11_BowlOver/142EA0.c.o(.bss);
        BowlOver_BSS_END = .;
        BowlOver_BSS_SIZE = ABSOLUTE(BowlOver_BSS_END - BowlOver_BSS_START);
    }
    __romPos += SIZEOF(.BowlOver);
    __romPos = ALIGN(__romPos, 16);
    BowlOver_ROM_END = __romPos;
    BowlOver_VRAM_END = .;

    _145CA0_ROM_START = __romPos;
    _145CA0_VRAM = ADDR(._145CA0);
    ._145CA0 : AT(_145CA0_ROM_START) SUBALIGN(16)
    {
        _145CA0_DATA_START = .;
        _145CA0_bin = .;
        build/assets/145CA0.bin.o(.data);
        _145CA0_DATA_END = .;
        _145CA0_DATA_SIZE = ABSOLUTE(_145CA0_DATA_END - _145CA0_DATA_START);
    }
    __romPos += SIZEOF(._145CA0);
    _145CA0_ROM_END = __romPos;
    _145CA0_VRAM_END = .;

    GroundPound_ROM_START = __romPos;
    GroundPound_VRAM = ADDR(.GroundPound);
    .GroundPound 0x800F65E0 : AT(GroundPound_ROM_START) SUBALIGN(16)
    {
        GroundPound_TEXT_START = .;
        build/src/ovl_12_GroundPound/146200.c.o(.text);
        build/src/ovl_12_GroundPound/146B60.c.o(.text);
        build/src/ovl_12_GroundPound/148840.c.o(.text);
        GroundPound_TEXT_END = .;
        GroundPound_TEXT_SIZE = ABSOLUTE(GroundPound_TEXT_END - GroundPound_TEXT_START);
        GroundPound_DATA_START = .;
        ovl_12_GroundPound_146200_c = .;
        build/src/ovl_12_GroundPound/146200.c.o(.data);
        ovl_12_GroundPound_146B60_c = .;
        build/src/ovl_12_GroundPound/146B60.c.o(.data);
        ovl_12_GroundPound_148840_c = .;
        build/src/ovl_12_GroundPound/148840.c.o(.data);
        GroundPound_DATA_END = .;
        GroundPound_DATA_SIZE = ABSOLUTE(GroundPound_DATA_END - GroundPound_DATA_START);
        GroundPound_RODATA_START = .;
        build/src/ovl_12_GroundPound/146200.c.o(.rodata);
        build/src/ovl_12_GroundPound/146B60.c.o(.rodata);
        build/src/ovl_12_GroundPound/148840.c.o(.rodata);
        GroundPound_RODATA_END = .;
        GroundPound_RODATA_SIZE = ABSOLUTE(GroundPound_RODATA_END - GroundPound_RODATA_START);
    }
    GroundPound_bss_VRAM = ADDR(.GroundPound_bss);
    .GroundPound_bss (NOLOAD) : SUBALIGN(16)
    {
        GroundPound_BSS_START = .;
        build/src/ovl_12_GroundPound/146200.c.o(.bss);
        build/src/ovl_12_GroundPound/146B60.c.o(.bss);
        build/src/ovl_12_GroundPound/148840.c.o(.bss);
        GroundPound_BSS_END = .;
        GroundPound_BSS_SIZE = ABSOLUTE(GroundPound_BSS_END - GroundPound_BSS_START);
    }
    __romPos += SIZEOF(.GroundPound);
    __romPos = ALIGN(__romPos, 16);
    GroundPound_ROM_END = __romPos;
    GroundPound_VRAM_END = .;

    _149C40_ROM_START = __romPos;
    _149C40_VRAM = ADDR(._149C40);
    ._149C40 : AT(_149C40_ROM_START) SUBALIGN(16)
    {
        _149C40_DATA_START = .;
        _149C40_bin = .;
        build/assets/149C40.bin.o(.data);
        _149C40_DATA_END = .;
        _149C40_DATA_SIZE = ABSOLUTE(_149C40_DATA_END - _149C40_DATA_START);
    }
    __romPos += SIZEOF(._149C40);
    _149C40_ROM_END = __romPos;
    _149C40_VRAM_END = .;

    BalloonBurst_ROM_START = __romPos;
    BalloonBurst_VRAM = ADDR(.BalloonBurst);
    .BalloonBurst 0x800F65E0 : AT(BalloonBurst_ROM_START) SUBALIGN(16)
    {
        BalloonBurst_TEXT_START = .;
        build/src/ovl_13_BalloonBurst/149E80.c.o(.text);
        BalloonBurst_TEXT_END = .;
        BalloonBurst_TEXT_SIZE = ABSOLUTE(BalloonBurst_TEXT_END - BalloonBurst_TEXT_START);
        BalloonBurst_DATA_START = .;
        ovl_13_BalloonBurst_149E80_c = .;
        build/src/ovl_13_BalloonBurst/149E80.c.o(.data);
        BalloonBurst_DATA_END = .;
        BalloonBurst_DATA_SIZE = ABSOLUTE(BalloonBurst_DATA_END - BalloonBurst_DATA_START);
        BalloonBurst_RODATA_START = .;
        build/src/ovl_13_BalloonBurst/149E80.c.o(.rodata);
        BalloonBurst_RODATA_END = .;
        BalloonBurst_RODATA_SIZE = ABSOLUTE(BalloonBurst_RODATA_END - BalloonBurst_RODATA_START);
    }
    BalloonBurst_bss_VRAM = ADDR(.BalloonBurst_bss);
    .BalloonBurst_bss (NOLOAD) : SUBALIGN(16)
    {
        BalloonBurst_BSS_START = .;
        build/src/ovl_13_BalloonBurst/149E80.c.o(.bss);
        BalloonBurst_BSS_END = .;
        BalloonBurst_BSS_SIZE = ABSOLUTE(BalloonBurst_BSS_END - BalloonBurst_BSS_START);
    }
    __romPos += SIZEOF(.BalloonBurst);
    __romPos = ALIGN(__romPos, 16);
    BalloonBurst_ROM_END = __romPos;
    BalloonBurst_VRAM_END = .;

    _14E540_ROM_START = __romPos;
    _14E540_VRAM = ADDR(._14E540);
    ._14E540 : AT(_14E540_ROM_START) SUBALIGN(16)
    {
        _14E540_DATA_START = .;
        _14E540_bin = .;
        build/assets/14E540.bin.o(.data);
        _14E540_DATA_END = .;
        _14E540_DATA_SIZE = ABSOLUTE(_14E540_DATA_END - _14E540_DATA_START);
    }
    __romPos += SIZEOF(._14E540);
    _14E540_ROM_END = __romPos;
    _14E540_VRAM_END = .;

    CoinBlockBlitz_ROM_START = __romPos;
    CoinBlockBlitz_VRAM = ADDR(.CoinBlockBlitz);
    .CoinBlockBlitz 0x800F65E0 : AT(CoinBlockBlitz_ROM_START) SUBALIGN(16)
    {
        CoinBlockBlitz_TEXT_START = .;
        build/src/ovl_14_CoinBlockBlitz/14E940.c.o(.text);
        build/src/ovl_14_CoinBlockBlitz/150E30.c.o(.text);
        CoinBlockBlitz_TEXT_END = .;
        CoinBlockBlitz_TEXT_SIZE = ABSOLUTE(CoinBlockBlitz_TEXT_END - CoinBlockBlitz_TEXT_START);
        CoinBlockBlitz_DATA_START = .;
        ovl_14_CoinBlockBlitz_14E940_c = .;
        build/src/ovl_14_CoinBlockBlitz/14E940.c.o(.data);
        ovl_14_CoinBlockBlitz_150E30_c = .;
        build/src/ovl_14_CoinBlockBlitz/150E30.c.o(.data);
        CoinBlockBlitz_DATA_END = .;
        CoinBlockBlitz_DATA_SIZE = ABSOLUTE(CoinBlockBlitz_DATA_END - CoinBlockBlitz_DATA_START);
        CoinBlockBlitz_RODATA_START = .;
        build/src/ovl_14_CoinBlockBlitz/14E940.c.o(.rodata);
        build/src/ovl_14_CoinBlockBlitz/150E30.c.o(.rodata);
        CoinBlockBlitz_RODATA_END = .;
        CoinBlockBlitz_RODATA_SIZE = ABSOLUTE(CoinBlockBlitz_RODATA_END - CoinBlockBlitz_RODATA_START);
    }
    CoinBlockBlitz_bss_VRAM = ADDR(.CoinBlockBlitz_bss);
    .CoinBlockBlitz_bss (NOLOAD) : SUBALIGN(16)
    {
        CoinBlockBlitz_BSS_START = .;
        build/src/ovl_14_CoinBlockBlitz/14E940.c.o(.bss);
        build/src/ovl_14_CoinBlockBlitz/150E30.c.o(.bss);
        CoinBlockBlitz_BSS_END = .;
        CoinBlockBlitz_BSS_SIZE = ABSOLUTE(CoinBlockBlitz_BSS_END - CoinBlockBlitz_BSS_START);
    }
    __romPos += SIZEOF(.CoinBlockBlitz);
    __romPos = ALIGN(__romPos, 16);
    CoinBlockBlitz_ROM_END = __romPos;
    CoinBlockBlitz_VRAM_END = .;

    _152B20_ROM_START = __romPos;
    _152B20_VRAM = ADDR(._152B20);
    ._152B20 : AT(_152B20_ROM_START) SUBALIGN(16)
    {
        _152B20_DATA_START = .;
        _152B20_bin = .;
        build/assets/152B20.bin.o(.data);
        _152B20_DATA_END = .;
        _152B20_DATA_SIZE = ABSOLUTE(_152B20_DATA_END - _152B20_DATA_START);
    }
    __romPos += SIZEOF(._152B20);
    _152B20_ROM_END = __romPos;
    _152B20_VRAM_END = .;

    CoinBlockBash_ROM_START = __romPos;
    CoinBlockBash_VRAM = ADDR(.CoinBlockBash);
    .CoinBlockBash 0x800F65E0 : AT(CoinBlockBash_ROM_START) SUBALIGN(16)
    {
        CoinBlockBash_TEXT_START = .;
        build/src/ovl_15_CoinBlockBash/152BE0.c.o(.text);
        build/src/ovl_15_CoinBlockBash/15AC50.c.o(.text);
        CoinBlockBash_TEXT_END = .;
        CoinBlockBash_TEXT_SIZE = ABSOLUTE(CoinBlockBash_TEXT_END - CoinBlockBash_TEXT_START);
        CoinBlockBash_DATA_START = .;
        ovl_15_CoinBlockBash_152BE0_c = .;
        build/src/ovl_15_CoinBlockBash/152BE0.c.o(.data);
        ovl_15_CoinBlockBash_15AC50_c = .;
        build/src/ovl_15_CoinBlockBash/15AC50.c.o(.data);
        CoinBlockBash_DATA_END = .;
        CoinBlockBash_DATA_SIZE = ABSOLUTE(CoinBlockBash_DATA_END - CoinBlockBash_DATA_START);
        CoinBlockBash_RODATA_START = .;
        build/src/ovl_15_CoinBlockBash/152BE0.c.o(.rodata);
        build/src/ovl_15_CoinBlockBash/15AC50.c.o(.rodata);
        CoinBlockBash_RODATA_END = .;
        CoinBlockBash_RODATA_SIZE = ABSOLUTE(CoinBlockBash_RODATA_END - CoinBlockBash_RODATA_START);
    }
    CoinBlockBash_bss_VRAM = ADDR(.CoinBlockBash_bss);
    .CoinBlockBash_bss (NOLOAD) : SUBALIGN(16)
    {
        CoinBlockBash_BSS_START = .;
        build/src/ovl_15_CoinBlockBash/152BE0.c.o(.bss);
        build/src/ovl_15_CoinBlockBash/15AC50.c.o(.bss);
        CoinBlockBash_BSS_END = .;
        CoinBlockBash_BSS_SIZE = ABSOLUTE(CoinBlockBash_BSS_END - CoinBlockBash_BSS_START);
    }
    __romPos += SIZEOF(.CoinBlockBash);
    __romPos = ALIGN(__romPos, 16);
    CoinBlockBash_ROM_END = __romPos;
    CoinBlockBash_VRAM_END = .;

    _15E120_ROM_START = __romPos;
    _15E120_VRAM = ADDR(._15E120);
    ._15E120 : AT(_15E120_ROM_START) SUBALIGN(16)
    {
        _15E120_DATA_START = .;
        _15E120_bin = .;
        build/assets/15E120.bin.o(.data);
        _15E120_DATA_END = .;
        _15E120_DATA_SIZE = ABSOLUTE(_15E120_DATA_END - _15E120_DATA_START);
    }
    __romPos += SIZEOF(._15E120);
    _15E120_ROM_END = __romPos;
    _15E120_VRAM_END = .;

    SkateBoardSkamper_ROM_START = __romPos;
    SkateBoardSkamper_VRAM = ADDR(.SkateBoardSkamper);
    .SkateBoardSkamper 0x800F65E0 : AT(SkateBoardSkamper_ROM_START) SUBALIGN(16)
    {
        SkateBoardSkamper_TEXT_START = .;
        build/src/ovl_16_SkateBoardSkamper/15EAF0.c.o(.text);
        SkateBoardSkamper_TEXT_END = .;
        SkateBoardSkamper_TEXT_SIZE = ABSOLUTE(SkateBoardSkamper_TEXT_END - SkateBoardSkamper_TEXT_START);
        SkateBoardSkamper_DATA_START = .;
        ovl_16_SkateBoardSkamper_15EAF0_c = .;
        build/src/ovl_16_SkateBoardSkamper/15EAF0.c.o(.data);
        SkateBoardSkamper_DATA_END = .;
        SkateBoardSkamper_DATA_SIZE = ABSOLUTE(SkateBoardSkamper_DATA_END - SkateBoardSkamper_DATA_START);
        SkateBoardSkamper_RODATA_START = .;
        build/src/ovl_16_SkateBoardSkamper/15EAF0.c.o(.rodata);
        SkateBoardSkamper_RODATA_END = .;
        SkateBoardSkamper_RODATA_SIZE = ABSOLUTE(SkateBoardSkamper_RODATA_END - SkateBoardSkamper_RODATA_START);
    }
    SkateBoardSkamper_bss_VRAM = ADDR(.SkateBoardSkamper_bss);
    .SkateBoardSkamper_bss (NOLOAD) : SUBALIGN(16)
    {
        SkateBoardSkamper_BSS_START = .;
        build/src/ovl_16_SkateBoardSkamper/15EAF0.c.o(.bss);
        SkateBoardSkamper_BSS_END = .;
        SkateBoardSkamper_BSS_SIZE = ABSOLUTE(SkateBoardSkamper_BSS_END - SkateBoardSkamper_BSS_START);
    }
    __romPos += SIZEOF(.SkateBoardSkamper);
    __romPos = ALIGN(__romPos, 16);
    SkateBoardSkamper_ROM_END = __romPos;
    SkateBoardSkamper_VRAM_END = .;

    _165F10_ROM_START = __romPos;
    _165F10_VRAM = ADDR(._165F10);
    ._165F10 : AT(_165F10_ROM_START) SUBALIGN(16)
    {
        _165F10_DATA_START = .;
        _165F10_bin = .;
        build/assets/165F10.bin.o(.data);
        _165F10_DATA_END = .;
        _165F10_DATA_SIZE = ABSOLUTE(_165F10_DATA_END - _165F10_DATA_START);
    }
    __romPos += SIZEOF(._165F10);
    _165F10_ROM_END = __romPos;
    _165F10_VRAM_END = .;

    BoxMountainMayhem_ROM_START = __romPos;
    BoxMountainMayhem_VRAM = ADDR(.BoxMountainMayhem);
    .BoxMountainMayhem 0x800F65E0 : AT(BoxMountainMayhem_ROM_START) SUBALIGN(16)
    {
        BoxMountainMayhem_TEXT_START = .;
        build/src/ovl_17_BoxMountainMayhem/166220.c.o(.text);
        build/src/ovl_17_BoxMountainMayhem/166D50.c.o(.text);
        build/src/ovl_17_BoxMountainMayhem/168CA0.c.o(.text);
        BoxMountainMayhem_TEXT_END = .;
        BoxMountainMayhem_TEXT_SIZE = ABSOLUTE(BoxMountainMayhem_TEXT_END - BoxMountainMayhem_TEXT_START);
        BoxMountainMayhem_DATA_START = .;
        ovl_17_BoxMountainMayhem_166220_c = .;
        build/src/ovl_17_BoxMountainMayhem/166220.c.o(.data);
        ovl_17_BoxMountainMayhem_166D50_c = .;
        build/src/ovl_17_BoxMountainMayhem/166D50.c.o(.data);
        ovl_17_BoxMountainMayhem_168CA0_c = .;
        build/src/ovl_17_BoxMountainMayhem/168CA0.c.o(.data);
        BoxMountainMayhem_DATA_END = .;
        BoxMountainMayhem_DATA_SIZE = ABSOLUTE(BoxMountainMayhem_DATA_END - BoxMountainMayhem_DATA_START);
        BoxMountainMayhem_RODATA_START = .;
        build/src/ovl_17_BoxMountainMayhem/166220.c.o(.rodata);
        build/src/ovl_17_BoxMountainMayhem/166D50.c.o(.rodata);
        build/src/ovl_17_BoxMountainMayhem/168CA0.c.o(.rodata);
        BoxMountainMayhem_RODATA_END = .;
        BoxMountainMayhem_RODATA_SIZE = ABSOLUTE(BoxMountainMayhem_RODATA_END - BoxMountainMayhem_RODATA_START);
    }
    BoxMountainMayhem_bss_VRAM = ADDR(.BoxMountainMayhem_bss);
    .BoxMountainMayhem_bss (NOLOAD) : SUBALIGN(16)
    {
        BoxMountainMayhem_BSS_START = .;
        build/src/ovl_17_BoxMountainMayhem/166220.c.o(.bss);
        build/src/ovl_17_BoxMountainMayhem/166D50.c.o(.bss);
        build/src/ovl_17_BoxMountainMayhem/168CA0.c.o(.bss);
        BoxMountainMayhem_BSS_END = .;
        BoxMountainMayhem_BSS_SIZE = ABSOLUTE(BoxMountainMayhem_BSS_END - BoxMountainMayhem_BSS_START);
    }
    __romPos += SIZEOF(.BoxMountainMayhem);
    __romPos = ALIGN(__romPos, 16);
    BoxMountainMayhem_ROM_END = __romPos;
    BoxMountainMayhem_VRAM_END = .;

    _16BC00_ROM_START = __romPos;
    _16BC00_VRAM = ADDR(._16BC00);
    ._16BC00 : AT(_16BC00_ROM_START) SUBALIGN(16)
    {
        _16BC00_DATA_START = .;
        _16BC00_bin = .;
        build/assets/16BC00.bin.o(.data);
        _16BC00_DATA_END = .;
        _16BC00_DATA_SIZE = ABSOLUTE(_16BC00_DATA_END - _16BC00_DATA_START);
    }
    __romPos += SIZEOF(._16BC00);
    _16BC00_ROM_END = __romPos;
    _16BC00_VRAM_END = .;

    PlatformPeril_ROM_START = __romPos;
    PlatformPeril_VRAM = ADDR(.PlatformPeril);
    .PlatformPeril 0x800F65E0 : AT(PlatformPeril_ROM_START) SUBALIGN(16)
    {
        PlatformPeril_TEXT_START = .;
        build/src/ovl_18_PlatformPeril/16BD20.c.o(.text);
        build/src/ovl_18_PlatformPeril/16C6A0.c.o(.text);
        build/src/ovl_18_PlatformPeril/170470.c.o(.text);
        build/src/ovl_18_PlatformPeril/172490.c.o(.text);
        PlatformPeril_TEXT_END = .;
        PlatformPeril_TEXT_SIZE = ABSOLUTE(PlatformPeril_TEXT_END - PlatformPeril_TEXT_START);
        PlatformPeril_DATA_START = .;
        ovl_18_PlatformPeril_16BD20_c = .;
        build/src/ovl_18_PlatformPeril/16BD20.c.o(.data);
        ovl_18_PlatformPeril_16C6A0_c = .;
        build/src/ovl_18_PlatformPeril/16C6A0.c.o(.data);
        ovl_18_PlatformPeril_170470_c = .;
        build/src/ovl_18_PlatformPeril/170470.c.o(.data);
        ovl_18_PlatformPeril_172490_c = .;
        build/src/ovl_18_PlatformPeril/172490.c.o(.data);
        PlatformPeril_DATA_END = .;
        PlatformPeril_DATA_SIZE = ABSOLUTE(PlatformPeril_DATA_END - PlatformPeril_DATA_START);
        PlatformPeril_RODATA_START = .;
        build/src/ovl_18_PlatformPeril/16BD20.c.o(.rodata);
        build/src/ovl_18_PlatformPeril/16C6A0.c.o(.rodata);
        build/src/ovl_18_PlatformPeril/170470.c.o(.rodata);
        build/src/ovl_18_PlatformPeril/172490.c.o(.rodata);
        PlatformPeril_RODATA_END = .;
        PlatformPeril_RODATA_SIZE = ABSOLUTE(PlatformPeril_RODATA_END - PlatformPeril_RODATA_START);
    }
    PlatformPeril_bss_VRAM = ADDR(.PlatformPeril_bss);
    .PlatformPeril_bss (NOLOAD) : SUBALIGN(16)
    {
        PlatformPeril_BSS_START = .;
        build/src/ovl_18_PlatformPeril/16BD20.c.o(.bss);
        build/src/ovl_18_PlatformPeril/16C6A0.c.o(.bss);
        build/src/ovl_18_PlatformPeril/170470.c.o(.bss);
        build/src/ovl_18_PlatformPeril/172490.c.o(.bss);
        PlatformPeril_BSS_END = .;
        PlatformPeril_BSS_SIZE = ABSOLUTE(PlatformPeril_BSS_END - PlatformPeril_BSS_START);
    }
    __romPos += SIZEOF(.PlatformPeril);
    __romPos = ALIGN(__romPos, 16);
    PlatformPeril_ROM_END = __romPos;
    PlatformPeril_VRAM_END = .;

    _1724D0_ROM_START = __romPos;
    _1724D0_VRAM = ADDR(._1724D0);
    ._1724D0 : AT(_1724D0_ROM_START) SUBALIGN(16)
    {
        _1724D0_DATA_START = .;
        _1724D0_bin = .;
        build/assets/1724D0.bin.o(.data);
        _1724D0_DATA_END = .;
        _1724D0_DATA_SIZE = ABSOLUTE(_1724D0_DATA_END - _1724D0_DATA_START);
    }
    __romPos += SIZEOF(._1724D0);
    _1724D0_ROM_END = __romPos;
    _1724D0_VRAM_END = .;

    TeeteringTowers_ROM_START = __romPos;
    TeeteringTowers_VRAM = ADDR(.TeeteringTowers);
    .TeeteringTowers 0x800F65E0 : AT(TeeteringTowers_ROM_START) SUBALIGN(16)
    {
        TeeteringTowers_TEXT_START = .;
        build/src/ovl_19_TeeteringTowers/1738E0.c.o(.text);
        build/src/ovl_19_TeeteringTowers/176130.c.o(.text);
        TeeteringTowers_TEXT_END = .;
        TeeteringTowers_TEXT_SIZE = ABSOLUTE(TeeteringTowers_TEXT_END - TeeteringTowers_TEXT_START);
        TeeteringTowers_DATA_START = .;
        ovl_19_TeeteringTowers_1738E0_c = .;
        build/src/ovl_19_TeeteringTowers/1738E0.c.o(.data);
        ovl_19_TeeteringTowers_176130_c = .;
        build/src/ovl_19_TeeteringTowers/176130.c.o(.data);
        TeeteringTowers_DATA_END = .;
        TeeteringTowers_DATA_SIZE = ABSOLUTE(TeeteringTowers_DATA_END - TeeteringTowers_DATA_START);
        TeeteringTowers_RODATA_START = .;
        build/src/ovl_19_TeeteringTowers/1738E0.c.o(.rodata);
        build/src/ovl_19_TeeteringTowers/176130.c.o(.rodata);
        TeeteringTowers_RODATA_END = .;
        TeeteringTowers_RODATA_SIZE = ABSOLUTE(TeeteringTowers_RODATA_END - TeeteringTowers_RODATA_START);
    }
    TeeteringTowers_bss_VRAM = ADDR(.TeeteringTowers_bss);
    .TeeteringTowers_bss (NOLOAD) : SUBALIGN(16)
    {
        TeeteringTowers_BSS_START = .;
        build/src/ovl_19_TeeteringTowers/1738E0.c.o(.bss);
        build/src/ovl_19_TeeteringTowers/176130.c.o(.bss);
        TeeteringTowers_BSS_END = .;
        TeeteringTowers_BSS_SIZE = ABSOLUTE(TeeteringTowers_BSS_END - TeeteringTowers_BSS_START);
    }
    __romPos += SIZEOF(.TeeteringTowers);
    __romPos = ALIGN(__romPos, 16);
    TeeteringTowers_ROM_END = __romPos;
    TeeteringTowers_VRAM_END = .;

    _177C30_ROM_START = __romPos;
    _177C30_VRAM = ADDR(._177C30);
    ._177C30 : AT(_177C30_ROM_START) SUBALIGN(16)
    {
        _177C30_DATA_START = .;
        _177C30_bin = .;
        build/assets/177C30.bin.o(.data);
        _177C30_DATA_END = .;
        _177C30_DATA_SIZE = ABSOLUTE(_177C30_DATA_END - _177C30_DATA_START);
    }
    __romPos += SIZEOF(._177C30);
    _177C30_ROM_END = __romPos;
    _177C30_VRAM_END = .;

    MushroomMixup_ROM_START = __romPos;
    MushroomMixup_VRAM = ADDR(.MushroomMixup);
    .MushroomMixup 0x800F65E0 : AT(MushroomMixup_ROM_START) SUBALIGN(16)
    {
        MushroomMixup_TEXT_START = .;
        build/src/ovl_1A_MushroomMixup/1784E0.c.o(.text);
        build/src/ovl_1A_MushroomMixup/17BDC0.c.o(.text);
        MushroomMixup_TEXT_END = .;
        MushroomMixup_TEXT_SIZE = ABSOLUTE(MushroomMixup_TEXT_END - MushroomMixup_TEXT_START);
        MushroomMixup_DATA_START = .;
        ovl_1A_MushroomMixup_1784E0_c = .;
        build/src/ovl_1A_MushroomMixup/1784E0.c.o(.data);
        ovl_1A_MushroomMixup_17BDC0_c = .;
        build/src/ovl_1A_MushroomMixup/17BDC0.c.o(.data);
        MushroomMixup_DATA_END = .;
        MushroomMixup_DATA_SIZE = ABSOLUTE(MushroomMixup_DATA_END - MushroomMixup_DATA_START);
        MushroomMixup_RODATA_START = .;
        build/src/ovl_1A_MushroomMixup/1784E0.c.o(.rodata);
        build/src/ovl_1A_MushroomMixup/17BDC0.c.o(.rodata);
        MushroomMixup_RODATA_END = .;
        MushroomMixup_RODATA_SIZE = ABSOLUTE(MushroomMixup_RODATA_END - MushroomMixup_RODATA_START);
    }
    MushroomMixup_bss_VRAM = ADDR(.MushroomMixup_bss);
    .MushroomMixup_bss (NOLOAD) : SUBALIGN(16)
    {
        MushroomMixup_BSS_START = .;
        build/src/ovl_1A_MushroomMixup/1784E0.c.o(.bss);
        build/src/ovl_1A_MushroomMixup/17BDC0.c.o(.bss);
        MushroomMixup_BSS_END = .;
        MushroomMixup_BSS_SIZE = ABSOLUTE(MushroomMixup_BSS_END - MushroomMixup_BSS_START);
    }
    __romPos += SIZEOF(.MushroomMixup);
    __romPos = ALIGN(__romPos, 16);
    MushroomMixup_ROM_END = __romPos;
    MushroomMixup_VRAM_END = .;

    _17E600_ROM_START = __romPos;
    _17E600_VRAM = ADDR(._17E600);
    ._17E600 : AT(_17E600_ROM_START) SUBALIGN(16)
    {
        _17E600_DATA_START = .;
        _17E600_bin = .;
        build/assets/17E600.bin.o(.data);
        _17E600_DATA_END = .;
        _17E600_DATA_SIZE = ABSOLUTE(_17E600_DATA_END - _17E600_DATA_START);
    }
    __romPos += SIZEOF(._17E600);
    _17E600_ROM_END = __romPos;
    _17E600_VRAM_END = .;

    HammerDrop_ROM_START = __romPos;
    HammerDrop_VRAM = ADDR(.HammerDrop);
    .HammerDrop 0x800F65E0 : AT(HammerDrop_ROM_START) SUBALIGN(16)
    {
        HammerDrop_TEXT_START = .;
        build/src/ovl_1B_HammerDrop/17E710.c.o(.text);
        HammerDrop_TEXT_END = .;
        HammerDrop_TEXT_SIZE = ABSOLUTE(HammerDrop_TEXT_END - HammerDrop_TEXT_START);
        HammerDrop_DATA_START = .;
        ovl_1B_HammerDrop_17E710_c = .;
        build/src/ovl_1B_HammerDrop/17E710.c.o(.data);
        HammerDrop_DATA_END = .;
        HammerDrop_DATA_SIZE = ABSOLUTE(HammerDrop_DATA_END - HammerDrop_DATA_START);
        HammerDrop_RODATA_START = .;
        build/src/ovl_1B_HammerDrop/17E710.c.o(.rodata);
        HammerDrop_RODATA_END = .;
        HammerDrop_RODATA_SIZE = ABSOLUTE(HammerDrop_RODATA_END - HammerDrop_RODATA_START);
    }
    HammerDrop_bss_VRAM = ADDR(.HammerDrop_bss);
    .HammerDrop_bss (NOLOAD) : SUBALIGN(16)
    {
        HammerDrop_BSS_START = .;
        build/src/ovl_1B_HammerDrop/17E710.c.o(.bss);
        HammerDrop_BSS_END = .;
        HammerDrop_BSS_SIZE = ABSOLUTE(HammerDrop_BSS_END - HammerDrop_BSS_START);
    }
    __romPos += SIZEOF(.HammerDrop);
    __romPos = ALIGN(__romPos, 16);
    HammerDrop_ROM_END = __romPos;
    HammerDrop_VRAM_END = .;

    _1836C0_ROM_START = __romPos;
    _1836C0_VRAM = ADDR(._1836C0);
    ._1836C0 : AT(_1836C0_ROM_START) SUBALIGN(16)
    {
        _1836C0_DATA_START = .;
        _1836C0_bin = .;
        build/assets/1836C0.bin.o(.data);
        _1836C0_DATA_END = .;
        _1836C0_DATA_SIZE = ABSOLUTE(_1836C0_DATA_END - _1836C0_DATA_START);
    }
    __romPos += SIZEOF(._1836C0);
    _1836C0_ROM_END = __romPos;
    _1836C0_VRAM_END = .;

    GrabBag_ROM_START = __romPos;
    GrabBag_VRAM = ADDR(.GrabBag);
    .GrabBag 0x800F65E0 : AT(GrabBag_ROM_START) SUBALIGN(16)
    {
        GrabBag_TEXT_START = .;
        build/src/ovl_1C_GrabBag/1837D0.c.o(.text);
        build/src/ovl_1C_GrabBag/184450.c.o(.text);
        build/src/ovl_1C_GrabBag/184870.c.o(.text);
        GrabBag_TEXT_END = .;
        GrabBag_TEXT_SIZE = ABSOLUTE(GrabBag_TEXT_END - GrabBag_TEXT_START);
        GrabBag_DATA_START = .;
        ovl_1C_GrabBag_1837D0_c = .;
        build/src/ovl_1C_GrabBag/1837D0.c.o(.data);
        ovl_1C_GrabBag_184450_c = .;
        build/src/ovl_1C_GrabBag/184450.c.o(.data);
        ovl_1C_GrabBag_184870_c = .;
        build/src/ovl_1C_GrabBag/184870.c.o(.data);
        GrabBag_DATA_END = .;
        GrabBag_DATA_SIZE = ABSOLUTE(GrabBag_DATA_END - GrabBag_DATA_START);
        GrabBag_RODATA_START = .;
        build/src/ovl_1C_GrabBag/1837D0.c.o(.rodata);
        build/src/ovl_1C_GrabBag/184450.c.o(.rodata);
        build/src/ovl_1C_GrabBag/184870.c.o(.rodata);
        GrabBag_RODATA_END = .;
        GrabBag_RODATA_SIZE = ABSOLUTE(GrabBag_RODATA_END - GrabBag_RODATA_START);
    }
    GrabBag_bss_VRAM = ADDR(.GrabBag_bss);
    .GrabBag_bss (NOLOAD) : SUBALIGN(16)
    {
        GrabBag_BSS_START = .;
        build/src/ovl_1C_GrabBag/1837D0.c.o(.bss);
        build/src/ovl_1C_GrabBag/184450.c.o(.bss);
        build/src/ovl_1C_GrabBag/184870.c.o(.bss);
        GrabBag_BSS_END = .;
        GrabBag_BSS_SIZE = ABSOLUTE(GrabBag_BSS_END - GrabBag_BSS_START);
    }
    __romPos += SIZEOF(.GrabBag);
    __romPos = ALIGN(__romPos, 16);
    GrabBag_ROM_END = __romPos;
    GrabBag_VRAM_END = .;

    _188280_ROM_START = __romPos;
    _188280_VRAM = ADDR(._188280);
    ._188280 : AT(_188280_ROM_START) SUBALIGN(16)
    {
        _188280_DATA_START = .;
        _188280_bin = .;
        build/assets/188280.bin.o(.data);
        _188280_DATA_END = .;
        _188280_DATA_SIZE = ABSOLUTE(_188280_DATA_END - _188280_DATA_START);
    }
    __romPos += SIZEOF(._188280);
    _188280_ROM_END = __romPos;
    _188280_VRAM_END = .;

    BobsledRun_ROM_START = __romPos;
    BobsledRun_VRAM = ADDR(.BobsledRun);
    .BobsledRun 0x800F65E0 : AT(BobsledRun_ROM_START) SUBALIGN(16)
    {
        BobsledRun_TEXT_START = .;
        build/src/ovl_1D_BobsledRun/188410.c.o(.text);
        BobsledRun_TEXT_END = .;
        BobsledRun_TEXT_SIZE = ABSOLUTE(BobsledRun_TEXT_END - BobsledRun_TEXT_START);
        BobsledRun_DATA_START = .;
        ovl_1D_BobsledRun_188410_c = .;
        build/src/ovl_1D_BobsledRun/188410.c.o(.data);
        BobsledRun_DATA_END = .;
        BobsledRun_DATA_SIZE = ABSOLUTE(BobsledRun_DATA_END - BobsledRun_DATA_START);
        BobsledRun_RODATA_START = .;
        build/src/ovl_1D_BobsledRun/188410.c.o(.rodata);
        BobsledRun_RODATA_END = .;
        BobsledRun_RODATA_SIZE = ABSOLUTE(BobsledRun_RODATA_END - BobsledRun_RODATA_START);
    }
    BobsledRun_bss_VRAM = ADDR(.BobsledRun_bss);
    .BobsledRun_bss (NOLOAD) : SUBALIGN(16)
    {
        BobsledRun_BSS_START = .;
        build/src/ovl_1D_BobsledRun/188410.c.o(.bss);
        BobsledRun_BSS_END = .;
        BobsledRun_BSS_SIZE = ABSOLUTE(BobsledRun_BSS_END - BobsledRun_BSS_START);
    }
    __romPos += SIZEOF(.BobsledRun);
    __romPos = ALIGN(__romPos, 16);
    BobsledRun_ROM_END = __romPos;
    BobsledRun_VRAM_END = .;

    _1910D0_ROM_START = __romPos;
    _1910D0_VRAM = ADDR(._1910D0);
    ._1910D0 : AT(_1910D0_ROM_START) SUBALIGN(16)
    {
        _1910D0_DATA_START = .;
        _1910D0_bin = .;
        build/assets/1910D0.bin.o(.data);
        _1910D0_DATA_END = .;
        _1910D0_DATA_SIZE = ABSOLUTE(_1910D0_DATA_END - _1910D0_DATA_START);
    }
    __romPos += SIZEOF(._1910D0);
    _1910D0_ROM_END = __romPos;
    _1910D0_VRAM_END = .;

    BumperBalls_ROM_START = __romPos;
    BumperBalls_VRAM = ADDR(.BumperBalls);
    .BumperBalls 0x800F65E0 : AT(BumperBalls_ROM_START) SUBALIGN(16)
    {
        BumperBalls_TEXT_START = .;
        build/src/ovl_1E_BumperBalls/191700.c.o(.text);
        build/src/ovl_1E_BumperBalls/196300.c.o(.text);
        BumperBalls_TEXT_END = .;
        BumperBalls_TEXT_SIZE = ABSOLUTE(BumperBalls_TEXT_END - BumperBalls_TEXT_START);
        BumperBalls_DATA_START = .;
        ovl_1E_BumperBalls_191700_c = .;
        build/src/ovl_1E_BumperBalls/191700.c.o(.data);
        ovl_1E_BumperBalls_196300_c = .;
        build/src/ovl_1E_BumperBalls/196300.c.o(.data);
        BumperBalls_DATA_END = .;
        BumperBalls_DATA_SIZE = ABSOLUTE(BumperBalls_DATA_END - BumperBalls_DATA_START);
        BumperBalls_RODATA_START = .;
        build/src/ovl_1E_BumperBalls/191700.c.o(.rodata);
        build/src/ovl_1E_BumperBalls/196300.c.o(.rodata);
        BumperBalls_RODATA_END = .;
        BumperBalls_RODATA_SIZE = ABSOLUTE(BumperBalls_RODATA_END - BumperBalls_RODATA_START);
    }
    BumperBalls_bss_VRAM = ADDR(.BumperBalls_bss);
    .BumperBalls_bss (NOLOAD) : SUBALIGN(16)
    {
        BumperBalls_BSS_START = .;
        build/src/ovl_1E_BumperBalls/191700.c.o(.bss);
        build/src/ovl_1E_BumperBalls/196300.c.o(.bss);
        BumperBalls_BSS_END = .;
        BumperBalls_BSS_SIZE = ABSOLUTE(BumperBalls_BSS_END - BumperBalls_BSS_START);
    }
    __romPos += SIZEOF(.BumperBalls);
    __romPos = ALIGN(__romPos, 16);
    BumperBalls_ROM_END = __romPos;
    BumperBalls_VRAM_END = .;

    _197C50_ROM_START = __romPos;
    _197C50_VRAM = ADDR(._197C50);
    ._197C50 : AT(_197C50_ROM_START) SUBALIGN(16)
    {
        _197C50_DATA_START = .;
        _197C50_bin = .;
        build/assets/197C50.bin.o(.data);
        _197C50_DATA_END = .;
        _197C50_DATA_SIZE = ABSOLUTE(_197C50_DATA_END - _197C50_DATA_START);
    }
    __romPos += SIZEOF(._197C50);
    _197C50_ROM_END = __romPos;
    _197C50_VRAM_END = .;

    TightropeTreachery_ROM_START = __romPos;
    TightropeTreachery_VRAM = ADDR(.TightropeTreachery);
    .TightropeTreachery 0x800F65E0 : AT(TightropeTreachery_ROM_START) SUBALIGN(16)
    {
        TightropeTreachery_TEXT_START = .;
        build/src/ovl_1F_TightropeTreachery/197E20.c.o(.text);
        build/src/ovl_1F_TightropeTreachery/19A360.c.o(.text);
        build/src/ovl_1F_TightropeTreachery/19ACC0.c.o(.text);
        build/src/ovl_1F_TightropeTreachery/19D510.c.o(.text);
        TightropeTreachery_TEXT_END = .;
        TightropeTreachery_TEXT_SIZE = ABSOLUTE(TightropeTreachery_TEXT_END - TightropeTreachery_TEXT_START);
        TightropeTreachery_DATA_START = .;
        ovl_1F_TightropeTreachery_197E20_c = .;
        build/src/ovl_1F_TightropeTreachery/197E20.c.o(.data);
        ovl_1F_TightropeTreachery_19A360_c = .;
        build/src/ovl_1F_TightropeTreachery/19A360.c.o(.data);
        ovl_1F_TightropeTreachery_19ACC0_c = .;
        build/src/ovl_1F_TightropeTreachery/19ACC0.c.o(.data);
        ovl_1F_TightropeTreachery_19D510_c = .;
        build/src/ovl_1F_TightropeTreachery/19D510.c.o(.data);
        TightropeTreachery_DATA_END = .;
        TightropeTreachery_DATA_SIZE = ABSOLUTE(TightropeTreachery_DATA_END - TightropeTreachery_DATA_START);
        TightropeTreachery_RODATA_START = .;
        build/src/ovl_1F_TightropeTreachery/197E20.c.o(.rodata);
        build/src/ovl_1F_TightropeTreachery/19A360.c.o(.rodata);
        build/src/ovl_1F_TightropeTreachery/19ACC0.c.o(.rodata);
        build/src/ovl_1F_TightropeTreachery/19D510.c.o(.rodata);
        TightropeTreachery_RODATA_END = .;
        TightropeTreachery_RODATA_SIZE = ABSOLUTE(TightropeTreachery_RODATA_END - TightropeTreachery_RODATA_START);
    }
    TightropeTreachery_bss_VRAM = ADDR(.TightropeTreachery_bss);
    .TightropeTreachery_bss (NOLOAD) : SUBALIGN(16)
    {
        TightropeTreachery_BSS_START = .;
        build/src/ovl_1F_TightropeTreachery/197E20.c.o(.bss);
        build/src/ovl_1F_TightropeTreachery/19A360.c.o(.bss);
        build/src/ovl_1F_TightropeTreachery/19ACC0.c.o(.bss);
        build/src/ovl_1F_TightropeTreachery/19D510.c.o(.bss);
        TightropeTreachery_BSS_END = .;
        TightropeTreachery_BSS_SIZE = ABSOLUTE(TightropeTreachery_BSS_END - TightropeTreachery_BSS_START);
    }
    __romPos += SIZEOF(.TightropeTreachery);
    __romPos = ALIGN(__romPos, 16);
    TightropeTreachery_ROM_END = __romPos;
    TightropeTreachery_VRAM_END = .;

    _19FAF0_ROM_START = __romPos;
    _19FAF0_VRAM = ADDR(._19FAF0);
    ._19FAF0 : AT(_19FAF0_ROM_START) SUBALIGN(16)
    {
        _19FAF0_DATA_START = .;
        _19FAF0_bin = .;
        build/assets/19FAF0.bin.o(.data);
        _19FAF0_DATA_END = .;
        _19FAF0_DATA_SIZE = ABSOLUTE(_19FAF0_DATA_END - _19FAF0_DATA_START);
    }
    __romPos += SIZEOF(._19FAF0);
    _19FAF0_ROM_END = __romPos;
    _19FAF0_VRAM_END = .;

    KnockBlockTower_ROM_START = __romPos;
    KnockBlockTower_VRAM = ADDR(.KnockBlockTower);
    .KnockBlockTower 0x800F65E0 : AT(KnockBlockTower_ROM_START) SUBALIGN(16)
    {
        KnockBlockTower_TEXT_START = .;
        build/src/ovl_20_KnockBlockTower/19FEE0.c.o(.text);
        build/src/ovl_20_KnockBlockTower/1A2E40.c.o(.text);
        build/src/ovl_20_KnockBlockTower/1A42B0.c.o(.text);
        KnockBlockTower_TEXT_END = .;
        KnockBlockTower_TEXT_SIZE = ABSOLUTE(KnockBlockTower_TEXT_END - KnockBlockTower_TEXT_START);
        KnockBlockTower_DATA_START = .;
        ovl_20_KnockBlockTower_19FEE0_c = .;
        build/src/ovl_20_KnockBlockTower/19FEE0.c.o(.data);
        ovl_20_KnockBlockTower_1A2E40_c = .;
        build/src/ovl_20_KnockBlockTower/1A2E40.c.o(.data);
        ovl_20_KnockBlockTower_1A42B0_c = .;
        build/src/ovl_20_KnockBlockTower/1A42B0.c.o(.data);
        KnockBlockTower_DATA_END = .;
        KnockBlockTower_DATA_SIZE = ABSOLUTE(KnockBlockTower_DATA_END - KnockBlockTower_DATA_START);
        KnockBlockTower_RODATA_START = .;
        build/src/ovl_20_KnockBlockTower/19FEE0.c.o(.rodata);
        build/src/ovl_20_KnockBlockTower/1A2E40.c.o(.rodata);
        build/src/ovl_20_KnockBlockTower/1A42B0.c.o(.rodata);
        KnockBlockTower_RODATA_END = .;
        KnockBlockTower_RODATA_SIZE = ABSOLUTE(KnockBlockTower_RODATA_END - KnockBlockTower_RODATA_START);
    }
    KnockBlockTower_bss_VRAM = ADDR(.KnockBlockTower_bss);
    .KnockBlockTower_bss (NOLOAD) : SUBALIGN(16)
    {
        KnockBlockTower_BSS_START = .;
        build/src/ovl_20_KnockBlockTower/19FEE0.c.o(.bss);
        build/src/ovl_20_KnockBlockTower/1A2E40.c.o(.bss);
        build/src/ovl_20_KnockBlockTower/1A42B0.c.o(.bss);
        KnockBlockTower_BSS_END = .;
        KnockBlockTower_BSS_SIZE = ABSOLUTE(KnockBlockTower_BSS_END - KnockBlockTower_BSS_START);
    }
    __romPos += SIZEOF(.KnockBlockTower);
    __romPos = ALIGN(__romPos, 16);
    KnockBlockTower_ROM_END = __romPos;
    KnockBlockTower_VRAM_END = .;

    _1A4E00_ROM_START = __romPos;
    _1A4E00_VRAM = ADDR(._1A4E00);
    ._1A4E00 : AT(_1A4E00_ROM_START) SUBALIGN(16)
    {
        _1A4E00_DATA_START = .;
        _1A4E00_bin = .;
        build/assets/1A4E00.bin.o(.data);
        _1A4E00_DATA_END = .;
        _1A4E00_DATA_SIZE = ABSOLUTE(_1A4E00_DATA_END - _1A4E00_DATA_START);
    }
    __romPos += SIZEOF(._1A4E00);
    _1A4E00_ROM_END = __romPos;
    _1A4E00_VRAM_END = .;

    TipsyTourney_ROM_START = __romPos;
    TipsyTourney_VRAM = ADDR(.TipsyTourney);
    .TipsyTourney 0x800F65E0 : AT(TipsyTourney_ROM_START) SUBALIGN(16)
    {
        TipsyTourney_TEXT_START = .;
        build/src/ovl_21_TipsyTourney/1A4EB0.c.o(.text);
        TipsyTourney_TEXT_END = .;
        TipsyTourney_TEXT_SIZE = ABSOLUTE(TipsyTourney_TEXT_END - TipsyTourney_TEXT_START);
        TipsyTourney_DATA_START = .;
        ovl_21_TipsyTourney_1A4EB0_c = .;
        build/src/ovl_21_TipsyTourney/1A4EB0.c.o(.data);
        TipsyTourney_DATA_END = .;
        TipsyTourney_DATA_SIZE = ABSOLUTE(TipsyTourney_DATA_END - TipsyTourney_DATA_START);
        TipsyTourney_RODATA_START = .;
        build/src/ovl_21_TipsyTourney/1A4EB0.c.o(.rodata);
        TipsyTourney_RODATA_END = .;
        TipsyTourney_RODATA_SIZE = ABSOLUTE(TipsyTourney_RODATA_END - TipsyTourney_RODATA_START);
    }
    TipsyTourney_bss_VRAM = ADDR(.TipsyTourney_bss);
    .TipsyTourney_bss (NOLOAD) : SUBALIGN(16)
    {
        TipsyTourney_BSS_START = .;
        build/src/ovl_21_TipsyTourney/1A4EB0.c.o(.bss);
        TipsyTourney_BSS_END = .;
        TipsyTourney_BSS_SIZE = ABSOLUTE(TipsyTourney_BSS_END - TipsyTourney_BSS_START);
    }
    __romPos += SIZEOF(.TipsyTourney);
    __romPos = ALIGN(__romPos, 16);
    TipsyTourney_ROM_END = __romPos;
    TipsyTourney_VRAM_END = .;

    _1AA080_ROM_START = __romPos;
    _1AA080_VRAM = ADDR(._1AA080);
    ._1AA080 : AT(_1AA080_ROM_START) SUBALIGN(16)
    {
        _1AA080_DATA_START = .;
        _1AA080_bin = .;
        build/assets/1AA080.bin.o(.data);
        _1AA080_DATA_END = .;
        _1AA080_DATA_SIZE = ABSOLUTE(_1AA080_DATA_END - _1AA080_DATA_START);
    }
    __romPos += SIZEOF(._1AA080);
    _1AA080_ROM_END = __romPos;
    _1AA080_VRAM_END = .;

    BombsAway_ROM_START = __romPos;
    BombsAway_VRAM = ADDR(.BombsAway);
    .BombsAway 0x800F65E0 : AT(BombsAway_ROM_START) SUBALIGN(16)
    {
        BombsAway_TEXT_START = .;
        build/src/ovl_22_BombsAway/1AA2A0.c.o(.text);
        build/src/ovl_22_BombsAway/1AF980.c.o(.text);
        build/src/ovl_22_BombsAway/1B02A0.c.o(.text);
        BombsAway_TEXT_END = .;
        BombsAway_TEXT_SIZE = ABSOLUTE(BombsAway_TEXT_END - BombsAway_TEXT_START);
        BombsAway_DATA_START = .;
        ovl_22_BombsAway_1AA2A0_c = .;
        build/src/ovl_22_BombsAway/1AA2A0.c.o(.data);
        ovl_22_BombsAway_1AF980_c = .;
        build/src/ovl_22_BombsAway/1AF980.c.o(.data);
        ovl_22_BombsAway_1B02A0_c = .;
        build/src/ovl_22_BombsAway/1B02A0.c.o(.data);
        BombsAway_DATA_END = .;
        BombsAway_DATA_SIZE = ABSOLUTE(BombsAway_DATA_END - BombsAway_DATA_START);
        BombsAway_RODATA_START = .;
        build/src/ovl_22_BombsAway/1AA2A0.c.o(.rodata);
        build/src/ovl_22_BombsAway/1AF980.c.o(.rodata);
        build/src/ovl_22_BombsAway/1B02A0.c.o(.rodata);
        BombsAway_RODATA_END = .;
        BombsAway_RODATA_SIZE = ABSOLUTE(BombsAway_RODATA_END - BombsAway_RODATA_START);
    }
    BombsAway_bss_VRAM = ADDR(.BombsAway_bss);
    .BombsAway_bss (NOLOAD) : SUBALIGN(16)
    {
        BombsAway_BSS_START = .;
        build/src/ovl_22_BombsAway/1AA2A0.c.o(.bss);
        build/src/ovl_22_BombsAway/1AF980.c.o(.bss);
        build/src/ovl_22_BombsAway/1B02A0.c.o(.bss);
        BombsAway_BSS_END = .;
        BombsAway_BSS_SIZE = ABSOLUTE(BombsAway_BSS_END - BombsAway_BSS_START);
    }
    __romPos += SIZEOF(.BombsAway);
    __romPos = ALIGN(__romPos, 16);
    BombsAway_ROM_END = __romPos;
    BombsAway_VRAM_END = .;

    _1B3730_ROM_START = __romPos;
    _1B3730_VRAM = ADDR(._1B3730);
    ._1B3730 : AT(_1B3730_ROM_START) SUBALIGN(16)
    {
        _1B3730_DATA_START = .;
        _1B3730_bin = .;
        build/assets/1B3730.bin.o(.data);
        _1B3730_DATA_END = .;
        _1B3730_DATA_SIZE = ABSOLUTE(_1B3730_DATA_END - _1B3730_DATA_START);
    }
    __romPos += SIZEOF(._1B3730);
    _1B3730_ROM_END = __romPos;
    _1B3730_VRAM_END = .;

    CraneGame_ROM_START = __romPos;
    CraneGame_VRAM = ADDR(.CraneGame);
    .CraneGame 0x800F65E0 : AT(CraneGame_ROM_START) SUBALIGN(16)
    {
        CraneGame_TEXT_START = .;
        build/src/ovl_23_CraneGame/1B3E00.c.o(.text);
        build/src/ovl_23_CraneGame/1B9050.c.o(.text);
        build/src/ovl_23_CraneGame/1BAA60.c.o(.text);
        CraneGame_TEXT_END = .;
        CraneGame_TEXT_SIZE = ABSOLUTE(CraneGame_TEXT_END - CraneGame_TEXT_START);
        CraneGame_DATA_START = .;
        ovl_23_CraneGame_1B3E00_c = .;
        build/src/ovl_23_CraneGame/1B3E00.c.o(.data);
        ovl_23_CraneGame_1B9050_c = .;
        build/src/ovl_23_CraneGame/1B9050.c.o(.data);
        ovl_23_CraneGame_1BAA60_c = .;
        build/src/ovl_23_CraneGame/1BAA60.c.o(.data);
        CraneGame_DATA_END = .;
        CraneGame_DATA_SIZE = ABSOLUTE(CraneGame_DATA_END - CraneGame_DATA_START);
        CraneGame_RODATA_START = .;
        build/src/ovl_23_CraneGame/1B3E00.c.o(.rodata);
        build/src/ovl_23_CraneGame/1B9050.c.o(.rodata);
        build/src/ovl_23_CraneGame/1BAA60.c.o(.rodata);
        CraneGame_RODATA_END = .;
        CraneGame_RODATA_SIZE = ABSOLUTE(CraneGame_RODATA_END - CraneGame_RODATA_START);
    }
    CraneGame_bss_VRAM = ADDR(.CraneGame_bss);
    .CraneGame_bss (NOLOAD) : SUBALIGN(16)
    {
        CraneGame_BSS_START = .;
        build/src/ovl_23_CraneGame/1B3E00.c.o(.bss);
        build/src/ovl_23_CraneGame/1B9050.c.o(.bss);
        build/src/ovl_23_CraneGame/1BAA60.c.o(.bss);
        CraneGame_BSS_END = .;
        CraneGame_BSS_SIZE = ABSOLUTE(CraneGame_BSS_END - CraneGame_BSS_START);
    }
    __romPos += SIZEOF(.CraneGame);
    __romPos = ALIGN(__romPos, 16);
    CraneGame_ROM_END = __romPos;
    CraneGame_VRAM_END = .;

    _1BCD20_ROM_START = __romPos;
    _1BCD20_VRAM = ADDR(._1BCD20);
    ._1BCD20 : AT(_1BCD20_ROM_START) SUBALIGN(16)
    {
        _1BCD20_DATA_START = .;
        _1BCD20_bin = .;
        build/assets/1BCD20.bin.o(.data);
        _1BCD20_DATA_END = .;
        _1BCD20_DATA_SIZE = ABSOLUTE(_1BCD20_DATA_END - _1BCD20_DATA_START);
    }
    __romPos += SIZEOF(._1BCD20);
    _1BCD20_ROM_END = __romPos;
    _1BCD20_VRAM_END = .;

    FlowerShower_ROM_START = __romPos;
    FlowerShower_VRAM = ADDR(.FlowerShower);
    .FlowerShower 0x800F65E0 : AT(FlowerShower_ROM_START) SUBALIGN(16)
    {
        FlowerShower_TEXT_START = .;
        build/src/ovl_24_FlowerShower/1BD640.c.o(.text);
        FlowerShower_TEXT_END = .;
        FlowerShower_TEXT_SIZE = ABSOLUTE(FlowerShower_TEXT_END - FlowerShower_TEXT_START);
        FlowerShower_DATA_START = .;
        ovl_24_FlowerShower_1BD640_c = .;
        build/src/ovl_24_FlowerShower/1BD640.c.o(.data);
        FlowerShower_DATA_END = .;
        FlowerShower_DATA_SIZE = ABSOLUTE(FlowerShower_DATA_END - FlowerShower_DATA_START);
        FlowerShower_RODATA_START = .;
        build/src/ovl_24_FlowerShower/1BD640.c.o(.rodata);
        FlowerShower_RODATA_END = .;
        FlowerShower_RODATA_SIZE = ABSOLUTE(FlowerShower_RODATA_END - FlowerShower_RODATA_START);
    }
    FlowerShower_bss_VRAM = ADDR(.FlowerShower_bss);
    .FlowerShower_bss (NOLOAD) : SUBALIGN(16)
    {
        FlowerShower_BSS_START = .;
        build/src/ovl_24_FlowerShower/1BD640.c.o(.bss);
        FlowerShower_BSS_END = .;
        FlowerShower_BSS_SIZE = ABSOLUTE(FlowerShower_BSS_END - FlowerShower_BSS_START);
    }
    __romPos += SIZEOF(.FlowerShower);
    __romPos = ALIGN(__romPos, 16);
    FlowerShower_ROM_END = __romPos;
    FlowerShower_VRAM_END = .;

    _1C1D90_ROM_START = __romPos;
    _1C1D90_VRAM = ADDR(._1C1D90);
    ._1C1D90 : AT(_1C1D90_ROM_START) SUBALIGN(16)
    {
        _1C1D90_DATA_START = .;
        _1C1D90_bin = .;
        build/assets/1C1D90.bin.o(.data);
        _1C1D90_DATA_END = .;
        _1C1D90_DATA_SIZE = ABSOLUTE(_1C1D90_DATA_END - _1C1D90_DATA_START);
    }
    __romPos += SIZEOF(._1C1D90);
    _1C1D90_ROM_END = __romPos;
    _1C1D90_VRAM_END = .;

    SlotCarDerby_ROM_START = __romPos;
    SlotCarDerby_VRAM = ADDR(.SlotCarDerby);
    .SlotCarDerby 0x800F65E0 : AT(SlotCarDerby_ROM_START) SUBALIGN(16)
    {
        SlotCarDerby_TEXT_START = .;
        build/src/ovl_25_SlotCarDerby/1C1EB0.c.o(.text);
        SlotCarDerby_TEXT_END = .;
        SlotCarDerby_TEXT_SIZE = ABSOLUTE(SlotCarDerby_TEXT_END - SlotCarDerby_TEXT_START);
        SlotCarDerby_DATA_START = .;
        ovl_25_SlotCarDerby_1C1EB0_c = .;
        build/src/ovl_25_SlotCarDerby/1C1EB0.c.o(.data);
        SlotCarDerby_DATA_END = .;
        SlotCarDerby_DATA_SIZE = ABSOLUTE(SlotCarDerby_DATA_END - SlotCarDerby_DATA_START);
        SlotCarDerby_RODATA_START = .;
        build/src/ovl_25_SlotCarDerby/1C1EB0.c.o(.rodata);
        SlotCarDerby_RODATA_END = .;
        SlotCarDerby_RODATA_SIZE = ABSOLUTE(SlotCarDerby_RODATA_END - SlotCarDerby_RODATA_START);
    }
    SlotCarDerby_bss_VRAM = ADDR(.SlotCarDerby_bss);
    .SlotCarDerby_bss (NOLOAD) : SUBALIGN(16)
    {
        SlotCarDerby_BSS_START = .;
        build/src/ovl_25_SlotCarDerby/1C1EB0.c.o(.bss);
        SlotCarDerby_BSS_END = .;
        SlotCarDerby_BSS_SIZE = ABSOLUTE(SlotCarDerby_BSS_END - SlotCarDerby_BSS_START);
    }
    __romPos += SIZEOF(.SlotCarDerby);
    __romPos = ALIGN(__romPos, 16);
    SlotCarDerby_ROM_END = __romPos;
    SlotCarDerby_VRAM_END = .;

    _1CBB80_ROM_START = __romPos;
    _1CBB80_VRAM = ADDR(._1CBB80);
    ._1CBB80 : AT(_1CBB80_ROM_START) SUBALIGN(16)
    {
        _1CBB80_DATA_START = .;
        _1CBB80_bin = .;
        build/assets/1CBB80.bin.o(.data);
        _1CBB80_DATA_END = .;
        _1CBB80_DATA_SIZE = ABSOLUTE(_1CBB80_DATA_END - _1CBB80_DATA_START);
    }
    __romPos += SIZEOF(._1CBB80);
    _1CBB80_ROM_END = __romPos;
    _1CBB80_VRAM_END = .;

    MarioBandstand_ROM_START = __romPos;
    MarioBandstand_VRAM = ADDR(.MarioBandstand);
    .MarioBandstand 0x800F65E0 : AT(MarioBandstand_ROM_START) SUBALIGN(16)
    {
        MarioBandstand_TEXT_START = .;
        build/src/ovl_26_MarioBandstand/1CCCF0.c.o(.text);
        build/src/ovl_26_MarioBandstand/1CD680.c.o(.text);
        build/src/ovl_26_MarioBandstand/1D3040.c.o(.text);
        MarioBandstand_TEXT_END = .;
        MarioBandstand_TEXT_SIZE = ABSOLUTE(MarioBandstand_TEXT_END - MarioBandstand_TEXT_START);
        MarioBandstand_DATA_START = .;
        ovl_26_MarioBandstand_1CCCF0_c = .;
        build/src/ovl_26_MarioBandstand/1CCCF0.c.o(.data);
        ovl_26_MarioBandstand_1CD680_c = .;
        build/src/ovl_26_MarioBandstand/1CD680.c.o(.data);
        ovl_26_MarioBandstand_1D3040_c = .;
        build/src/ovl_26_MarioBandstand/1D3040.c.o(.data);
        MarioBandstand_DATA_END = .;
        MarioBandstand_DATA_SIZE = ABSOLUTE(MarioBandstand_DATA_END - MarioBandstand_DATA_START);
        MarioBandstand_RODATA_START = .;
        build/src/ovl_26_MarioBandstand/1CCCF0.c.o(.rodata);
        build/src/ovl_26_MarioBandstand/1CD680.c.o(.rodata);
        build/src/ovl_26_MarioBandstand/1D3040.c.o(.rodata);
        MarioBandstand_RODATA_END = .;
        MarioBandstand_RODATA_SIZE = ABSOLUTE(MarioBandstand_RODATA_END - MarioBandstand_RODATA_START);
    }
    MarioBandstand_bss_VRAM = ADDR(.MarioBandstand_bss);
    .MarioBandstand_bss (NOLOAD) : SUBALIGN(16)
    {
        MarioBandstand_BSS_START = .;
        build/src/ovl_26_MarioBandstand/1CCCF0.c.o(.bss);
        build/src/ovl_26_MarioBandstand/1CD680.c.o(.bss);
        build/src/ovl_26_MarioBandstand/1D3040.c.o(.bss);
        MarioBandstand_BSS_END = .;
        MarioBandstand_BSS_SIZE = ABSOLUTE(MarioBandstand_BSS_END - MarioBandstand_BSS_START);
    }
    __romPos += SIZEOF(.MarioBandstand);
    __romPos = ALIGN(__romPos, 16);
    MarioBandstand_ROM_END = __romPos;
    MarioBandstand_VRAM_END = .;

    _1D3300_ROM_START = __romPos;
    _1D3300_VRAM = ADDR(._1D3300);
    ._1D3300 : AT(_1D3300_ROM_START) SUBALIGN(16)
    {
        _1D3300_DATA_START = .;
        _1D3300_bin = .;
        build/assets/1D3300.bin.o(.data);
        _1D3300_DATA_END = .;
        _1D3300_DATA_SIZE = ABSOLUTE(_1D3300_DATA_END - _1D3300_DATA_START);
    }
    __romPos += SIZEOF(._1D3300);
    _1D3300_ROM_END = __romPos;
    _1D3300_VRAM_END = .;

    DesertDash_ROM_START = __romPos;
    DesertDash_VRAM = ADDR(.DesertDash);
    .DesertDash 0x800F65E0 : AT(DesertDash_ROM_START) SUBALIGN(16)
    {
        DesertDash_TEXT_START = .;
        build/src/ovl_27_DesertDash/1D3990.c.o(.text);
        build/src/ovl_27_DesertDash/1D6E30.c.o(.text);
        DesertDash_TEXT_END = .;
        DesertDash_TEXT_SIZE = ABSOLUTE(DesertDash_TEXT_END - DesertDash_TEXT_START);
        DesertDash_DATA_START = .;
        ovl_27_DesertDash_1D3990_c = .;
        build/src/ovl_27_DesertDash/1D3990.c.o(.data);
        ovl_27_DesertDash_1D6E30_c = .;
        build/src/ovl_27_DesertDash/1D6E30.c.o(.data);
        DesertDash_DATA_END = .;
        DesertDash_DATA_SIZE = ABSOLUTE(DesertDash_DATA_END - DesertDash_DATA_START);
        DesertDash_RODATA_START = .;
        build/src/ovl_27_DesertDash/1D3990.c.o(.rodata);
        build/src/ovl_27_DesertDash/1D6E30.c.o(.rodata);
        DesertDash_RODATA_END = .;
        DesertDash_RODATA_SIZE = ABSOLUTE(DesertDash_RODATA_END - DesertDash_RODATA_START);
    }
    DesertDash_bss_VRAM = ADDR(.DesertDash_bss);
    .DesertDash_bss (NOLOAD) : SUBALIGN(16)
    {
        DesertDash_BSS_START = .;
        build/src/ovl_27_DesertDash/1D3990.c.o(.bss);
        build/src/ovl_27_DesertDash/1D6E30.c.o(.bss);
        DesertDash_BSS_END = .;
        DesertDash_BSS_SIZE = ABSOLUTE(DesertDash_BSS_END - DesertDash_BSS_START);
    }
    __romPos += SIZEOF(.DesertDash);
    __romPos = ALIGN(__romPos, 16);
    DesertDash_ROM_END = __romPos;
    DesertDash_VRAM_END = .;

    _1D93B0_ROM_START = __romPos;
    _1D93B0_VRAM = ADDR(._1D93B0);
    ._1D93B0 : AT(_1D93B0_ROM_START) SUBALIGN(16)
    {
        _1D93B0_DATA_START = .;
        _1D93B0_bin = .;
        build/assets/1D93B0.bin.o(.data);
        _1D93B0_DATA_END = .;
        _1D93B0_DATA_SIZE = ABSOLUTE(_1D93B0_DATA_END - _1D93B0_DATA_START);
    }
    __romPos += SIZEOF(._1D93B0);
    _1D93B0_ROM_END = __romPos;
    _1D93B0_VRAM_END = .;

    ShyGuySays_ROM_START = __romPos;
    ShyGuySays_VRAM = ADDR(.ShyGuySays);
    .ShyGuySays 0x800F65E0 : AT(ShyGuySays_ROM_START) SUBALIGN(16)
    {
        ShyGuySays_TEXT_START = .;
        build/src/ovl_28_ShyGuySays/1D9690.c.o(.text);
        ShyGuySays_TEXT_END = .;
        ShyGuySays_TEXT_SIZE = ABSOLUTE(ShyGuySays_TEXT_END - ShyGuySays_TEXT_START);
        ShyGuySays_DATA_START = .;
        ovl_28_ShyGuySays_1D9690_c = .;
        build/src/ovl_28_ShyGuySays/1D9690.c.o(.data);
        ShyGuySays_DATA_END = .;
        ShyGuySays_DATA_SIZE = ABSOLUTE(ShyGuySays_DATA_END - ShyGuySays_DATA_START);
        ShyGuySays_RODATA_START = .;
        build/src/ovl_28_ShyGuySays/1D9690.c.o(.rodata);
        ShyGuySays_RODATA_END = .;
        ShyGuySays_RODATA_SIZE = ABSOLUTE(ShyGuySays_RODATA_END - ShyGuySays_RODATA_START);
    }
    ShyGuySays_bss_VRAM = ADDR(.ShyGuySays_bss);
    .ShyGuySays_bss (NOLOAD) : SUBALIGN(16)
    {
        ShyGuySays_BSS_START = .;
        build/src/ovl_28_ShyGuySays/1D9690.c.o(.bss);
        ShyGuySays_BSS_END = .;
        ShyGuySays_BSS_SIZE = ABSOLUTE(ShyGuySays_BSS_END - ShyGuySays_BSS_START);
    }
    __romPos += SIZEOF(.ShyGuySays);
    __romPos = ALIGN(__romPos, 16);
    ShyGuySays_ROM_END = __romPos;
    ShyGuySays_VRAM_END = .;

    _1E0670_ROM_START = __romPos;
    _1E0670_VRAM = ADDR(._1E0670);
    ._1E0670 : AT(_1E0670_ROM_START) SUBALIGN(16)
    {
        _1E0670_DATA_START = .;
        _1E0670_bin = .;
        build/assets/1E0670.bin.o(.data);
        _1E0670_DATA_END = .;
        _1E0670_DATA_SIZE = ABSOLUTE(_1E0670_DATA_END - _1E0670_DATA_START);
    }
    __romPos += SIZEOF(._1E0670);
    _1E0670_ROM_END = __romPos;
    _1E0670_VRAM_END = .;

    LimboDance_ROM_START = __romPos;
    LimboDance_VRAM = ADDR(.LimboDance);
    .LimboDance 0x800F65E0 : AT(LimboDance_ROM_START) SUBALIGN(16)
    {
        LimboDance_TEXT_START = .;
        build/src/ovl_29_LimboDance/1E0A30.c.o(.text);
        build/src/ovl_29_LimboDance/1E4480.c.o(.text);
        LimboDance_TEXT_END = .;
        LimboDance_TEXT_SIZE = ABSOLUTE(LimboDance_TEXT_END - LimboDance_TEXT_START);
        LimboDance_DATA_START = .;
        ovl_29_LimboDance_1E0A30_c = .;
        build/src/ovl_29_LimboDance/1E0A30.c.o(.data);
        ovl_29_LimboDance_1E4480_c = .;
        build/src/ovl_29_LimboDance/1E4480.c.o(.data);
        LimboDance_DATA_END = .;
        LimboDance_DATA_SIZE = ABSOLUTE(LimboDance_DATA_END - LimboDance_DATA_START);
        LimboDance_RODATA_START = .;
        build/src/ovl_29_LimboDance/1E0A30.c.o(.rodata);
        build/src/ovl_29_LimboDance/1E4480.c.o(.rodata);
        LimboDance_RODATA_END = .;
        LimboDance_RODATA_SIZE = ABSOLUTE(LimboDance_RODATA_END - LimboDance_RODATA_START);
    }
    LimboDance_bss_VRAM = ADDR(.LimboDance_bss);
    .LimboDance_bss (NOLOAD) : SUBALIGN(16)
    {
        LimboDance_BSS_START = .;
        build/src/ovl_29_LimboDance/1E0A30.c.o(.bss);
        build/src/ovl_29_LimboDance/1E4480.c.o(.bss);
        LimboDance_BSS_END = .;
        LimboDance_BSS_SIZE = ABSOLUTE(LimboDance_BSS_END - LimboDance_BSS_START);
    }
    __romPos += SIZEOF(.LimboDance);
    __romPos = ALIGN(__romPos, 16);
    LimboDance_ROM_END = __romPos;
    LimboDance_VRAM_END = .;

    _1E8DD0_ROM_START = __romPos;
    _1E8DD0_VRAM = ADDR(._1E8DD0);
    ._1E8DD0 : AT(_1E8DD0_ROM_START) SUBALIGN(16)
    {
        _1E8DD0_DATA_START = .;
        _1E8DD0_bin = .;
        build/assets/1E8DD0.bin.o(.data);
        _1E8DD0_DATA_END = .;
        _1E8DD0_DATA_SIZE = ABSOLUTE(_1E8DD0_DATA_END - _1E8DD0_DATA_START);
    }
    __romPos += SIZEOF(._1E8DD0);
    _1E8DD0_ROM_END = __romPos;
    _1E8DD0_VRAM_END = .;

    name_2A_ROM_START = __romPos;
    name_2A_VRAM = ADDR(.name_2A);
    .name_2A 0x800F65E0 : AT(name_2A_ROM_START) SUBALIGN(16)
    {
        name_2A_TEXT_START = .;
        build/src/ovl_2A/1E9440.c.o(.text);
        name_2A_TEXT_END = .;
        name_2A_TEXT_SIZE = ABSOLUTE(name_2A_TEXT_END - name_2A_TEXT_START);
        name_2A_DATA_START = .;
        ovl_2A_1E9440_c = .;
        build/src/ovl_2A/1E9440.c.o(.data);
        name_2A_DATA_END = .;
        name_2A_DATA_SIZE = ABSOLUTE(name_2A_DATA_END - name_2A_DATA_START);
        name_2A_RODATA_START = .;
        build/src/ovl_2A/1E9440.c.o(.rodata);
        name_2A_RODATA_END = .;
        name_2A_RODATA_SIZE = ABSOLUTE(name_2A_RODATA_END - name_2A_RODATA_START);
    }
    name_2A_bss_VRAM = ADDR(.name_2A_bss);
    .name_2A_bss (NOLOAD) : SUBALIGN(16)
    {
        name_2A_BSS_START = .;
        build/src/ovl_2A/1E9440.c.o(.bss);
        name_2A_BSS_END = .;
        name_2A_BSS_SIZE = ABSOLUTE(name_2A_BSS_END - name_2A_BSS_START);
    }
    __romPos += SIZEOF(.name_2A);
    __romPos = ALIGN(__romPos, 16);
    name_2A_ROM_END = __romPos;
    name_2A_VRAM_END = .;

    _1F0BB0_ROM_START = __romPos;
    _1F0BB0_VRAM = ADDR(._1F0BB0);
    ._1F0BB0 : AT(_1F0BB0_ROM_START) SUBALIGN(16)
    {
        _1F0BB0_DATA_START = .;
        _1F0BB0_bin = .;
        build/assets/1F0BB0.bin.o(.data);
        _1F0BB0_DATA_END = .;
        _1F0BB0_DATA_SIZE = ABSOLUTE(_1F0BB0_DATA_END - _1F0BB0_DATA_START);
    }
    __romPos += SIZEOF(._1F0BB0);
    _1F0BB0_ROM_END = __romPos;
    _1F0BB0_VRAM_END = .;

    CastAways_ROM_START = __romPos;
    CastAways_VRAM = ADDR(.CastAways);
    .CastAways 0x800F65E0 : AT(CastAways_ROM_START) SUBALIGN(16)
    {
        CastAways_TEXT_START = .;
        build/src/ovl_2B_CastAways/1F0DA0.c.o(.text);
        build/src/ovl_2B_CastAways/1F5700.c.o(.text);
        CastAways_TEXT_END = .;
        CastAways_TEXT_SIZE = ABSOLUTE(CastAways_TEXT_END - CastAways_TEXT_START);
        CastAways_DATA_START = .;
        ovl_2B_CastAways_1F0DA0_c = .;
        build/src/ovl_2B_CastAways/1F0DA0.c.o(.data);
        ovl_2B_CastAways_1F5700_c = .;
        build/src/ovl_2B_CastAways/1F5700.c.o(.data);
        CastAways_DATA_END = .;
        CastAways_DATA_SIZE = ABSOLUTE(CastAways_DATA_END - CastAways_DATA_START);
        CastAways_RODATA_START = .;
        build/src/ovl_2B_CastAways/1F0DA0.c.o(.rodata);
        build/src/ovl_2B_CastAways/1F5700.c.o(.rodata);
        CastAways_RODATA_END = .;
        CastAways_RODATA_SIZE = ABSOLUTE(CastAways_RODATA_END - CastAways_RODATA_START);
    }
    CastAways_bss_VRAM = ADDR(.CastAways_bss);
    .CastAways_bss (NOLOAD) : SUBALIGN(16)
    {
        CastAways_BSS_START = .;
        build/src/ovl_2B_CastAways/1F0DA0.c.o(.bss);
        build/src/ovl_2B_CastAways/1F5700.c.o(.bss);
        CastAways_BSS_END = .;
        CastAways_BSS_SIZE = ABSOLUTE(CastAways_BSS_END - CastAways_BSS_START);
    }
    __romPos += SIZEOF(.CastAways);
    __romPos = ALIGN(__romPos, 16);
    CastAways_ROM_END = __romPos;
    CastAways_VRAM_END = .;

    _1F60F0_ROM_START = __romPos;
    _1F60F0_VRAM = ADDR(._1F60F0);
    ._1F60F0 : AT(_1F60F0_ROM_START) SUBALIGN(16)
    {
        _1F60F0_DATA_START = .;
        _1F60F0_bin = .;
        build/assets/1F60F0.bin.o(.data);
        _1F60F0_DATA_END = .;
        _1F60F0_DATA_SIZE = ABSOLUTE(_1F60F0_DATA_END - _1F60F0_DATA_START);
    }
    __romPos += SIZEOF(._1F60F0);
    _1F60F0_ROM_END = __romPos;
    _1F60F0_VRAM_END = .;

    name_2C_ROM_START = __romPos;
    name_2C_VRAM = ADDR(.name_2C);
    .name_2C 0x800F65E0 : AT(name_2C_ROM_START) SUBALIGN(16)
    {
        name_2C_TEXT_START = .;
        build/src/ovl_2C_KeyPaWay/1F62C0.c.o(.text);
        build/src/ovl_2C_KeyPaWay/1FDF10.c.o(.text);
        name_2C_TEXT_END = .;
        name_2C_TEXT_SIZE = ABSOLUTE(name_2C_TEXT_END - name_2C_TEXT_START);
        name_2C_DATA_START = .;
        ovl_2C_KeyPaWay_1F62C0_c = .;
        build/src/ovl_2C_KeyPaWay/1F62C0.c.o(.data);
        ovl_2C_KeyPaWay_1FDF10_c = .;
        build/src/ovl_2C_KeyPaWay/1FDF10.c.o(.data);
        name_2C_DATA_END = .;
        name_2C_DATA_SIZE = ABSOLUTE(name_2C_DATA_END - name_2C_DATA_START);
        name_2C_RODATA_START = .;
        build/src/ovl_2C_KeyPaWay/1F62C0.c.o(.rodata);
        build/src/ovl_2C_KeyPaWay/1FDF10.c.o(.rodata);
        name_2C_RODATA_END = .;
        name_2C_RODATA_SIZE = ABSOLUTE(name_2C_RODATA_END - name_2C_RODATA_START);
    }
    name_2C_bss_VRAM = ADDR(.name_2C_bss);
    .name_2C_bss (NOLOAD) : SUBALIGN(16)
    {
        name_2C_BSS_START = .;
        build/src/ovl_2C_KeyPaWay/1F62C0.c.o(.bss);
        build/src/ovl_2C_KeyPaWay/1FDF10.c.o(.bss);
        name_2C_BSS_END = .;
        name_2C_BSS_SIZE = ABSOLUTE(name_2C_BSS_END - name_2C_BSS_START);
    }
    __romPos += SIZEOF(.name_2C);
    __romPos = ALIGN(__romPos, 16);
    name_2C_ROM_END = __romPos;
    name_2C_VRAM_END = .;

    _1FEF50_ROM_START = __romPos;
    _1FEF50_VRAM = ADDR(._1FEF50);
    ._1FEF50 : AT(_1FEF50_ROM_START) SUBALIGN(16)
    {
        _1FEF50_DATA_START = .;
        _1FEF50_bin = .;
        build/assets/1FEF50.bin.o(.data);
        _1FEF50_DATA_END = .;
        _1FEF50_DATA_SIZE = ABSOLUTE(_1FEF50_DATA_END - _1FEF50_DATA_START);
    }
    __romPos += SIZEOF(._1FEF50);
    _1FEF50_ROM_END = __romPos;
    _1FEF50_VRAM_END = .;

    RunningOfTheBulb_ROM_START = __romPos;
    RunningOfTheBulb_VRAM = ADDR(.RunningOfTheBulb);
    .RunningOfTheBulb 0x800F65E0 : AT(RunningOfTheBulb_ROM_START) SUBALIGN(16)
    {
        RunningOfTheBulb_TEXT_START = .;
        build/src/ovl_2D_RunningOfTheBulb/1FF1E0.c.o(.text);
        build/src/ovl_2D_RunningOfTheBulb/206C90.c.o(.text);
        RunningOfTheBulb_TEXT_END = .;
        RunningOfTheBulb_TEXT_SIZE = ABSOLUTE(RunningOfTheBulb_TEXT_END - RunningOfTheBulb_TEXT_START);
        RunningOfTheBulb_DATA_START = .;
        ovl_2D_RunningOfTheBulb_1FF1E0_c = .;
        build/src/ovl_2D_RunningOfTheBulb/1FF1E0.c.o(.data);
        ovl_2D_RunningOfTheBulb_206C90_c = .;
        build/src/ovl_2D_RunningOfTheBulb/206C90.c.o(.data);
        RunningOfTheBulb_DATA_END = .;
        RunningOfTheBulb_DATA_SIZE = ABSOLUTE(RunningOfTheBulb_DATA_END - RunningOfTheBulb_DATA_START);
        RunningOfTheBulb_RODATA_START = .;
        build/src/ovl_2D_RunningOfTheBulb/1FF1E0.c.o(.rodata);
        build/src/ovl_2D_RunningOfTheBulb/206C90.c.o(.rodata);
        RunningOfTheBulb_RODATA_END = .;
        RunningOfTheBulb_RODATA_SIZE = ABSOLUTE(RunningOfTheBulb_RODATA_END - RunningOfTheBulb_RODATA_START);
    }
    RunningOfTheBulb_bss_VRAM = ADDR(.RunningOfTheBulb_bss);
    .RunningOfTheBulb_bss (NOLOAD) : SUBALIGN(16)
    {
        RunningOfTheBulb_BSS_START = .;
        build/src/ovl_2D_RunningOfTheBulb/1FF1E0.c.o(.bss);
        build/src/ovl_2D_RunningOfTheBulb/206C90.c.o(.bss);
        RunningOfTheBulb_BSS_END = .;
        RunningOfTheBulb_BSS_SIZE = ABSOLUTE(RunningOfTheBulb_BSS_END - RunningOfTheBulb_BSS_START);
    }
    __romPos += SIZEOF(.RunningOfTheBulb);
    __romPos = ALIGN(__romPos, 16);
    RunningOfTheBulb_ROM_END = __romPos;
    RunningOfTheBulb_VRAM_END = .;

    _206E40_ROM_START = __romPos;
    _206E40_VRAM = ADDR(._206E40);
    ._206E40 : AT(_206E40_ROM_START) SUBALIGN(16)
    {
        _206E40_DATA_START = .;
        _206E40_bin = .;
        build/assets/206E40.bin.o(.data);
        _206E40_DATA_END = .;
        _206E40_DATA_SIZE = ABSOLUTE(_206E40_DATA_END - _206E40_DATA_START);
    }
    __romPos += SIZEOF(._206E40);
    _206E40_ROM_END = __romPos;
    _206E40_VRAM_END = .;

    HotRopeJump_ROM_START = __romPos;
    HotRopeJump_VRAM = ADDR(.HotRopeJump);
    .HotRopeJump 0x800F65E0 : AT(HotRopeJump_ROM_START) SUBALIGN(16)
    {
        HotRopeJump_TEXT_START = .;
        build/src/ovl_2E_HotRopeJump/207040.c.o(.text);
        HotRopeJump_TEXT_END = .;
        HotRopeJump_TEXT_SIZE = ABSOLUTE(HotRopeJump_TEXT_END - HotRopeJump_TEXT_START);
        HotRopeJump_DATA_START = .;
        ovl_2E_HotRopeJump_207040_c = .;
        build/src/ovl_2E_HotRopeJump/207040.c.o(.data);
        HotRopeJump_DATA_END = .;
        HotRopeJump_DATA_SIZE = ABSOLUTE(HotRopeJump_DATA_END - HotRopeJump_DATA_START);
        HotRopeJump_RODATA_START = .;
        build/src/ovl_2E_HotRopeJump/207040.c.o(.rodata);
        HotRopeJump_RODATA_END = .;
        HotRopeJump_RODATA_SIZE = ABSOLUTE(HotRopeJump_RODATA_END - HotRopeJump_RODATA_START);
    }
    HotRopeJump_bss_VRAM = ADDR(.HotRopeJump_bss);
    .HotRopeJump_bss (NOLOAD) : SUBALIGN(16)
    {
        HotRopeJump_BSS_START = .;
        build/src/ovl_2E_HotRopeJump/207040.c.o(.bss);
        HotRopeJump_BSS_END = .;
        HotRopeJump_BSS_SIZE = ABSOLUTE(HotRopeJump_BSS_END - HotRopeJump_BSS_START);
    }
    __romPos += SIZEOF(.HotRopeJump);
    __romPos = ALIGN(__romPos, 16);
    HotRopeJump_ROM_END = __romPos;
    HotRopeJump_VRAM_END = .;

    _20EEB0_ROM_START = __romPos;
    _20EEB0_VRAM = ADDR(._20EEB0);
    ._20EEB0 : AT(_20EEB0_ROM_START) SUBALIGN(16)
    {
        _20EEB0_DATA_START = .;
        _20EEB0_bin = .;
        build/assets/20EEB0.bin.o(.data);
        _20EEB0_DATA_END = .;
        _20EEB0_DATA_SIZE = ABSOLUTE(_20EEB0_DATA_END - _20EEB0_DATA_START);
    }
    __romPos += SIZEOF(._20EEB0);
    _20EEB0_ROM_END = __romPos;
    _20EEB0_VRAM_END = .;

    HandcarHavoc_ROM_START = __romPos;
    HandcarHavoc_VRAM = ADDR(.HandcarHavoc);
    .HandcarHavoc 0x800F65E0 : AT(HandcarHavoc_ROM_START) SUBALIGN(16)
    {
        HandcarHavoc_TEXT_START = .;
        build/src/ovl_2F_HandcarHavoc/20F570.c.o(.text);
        build/src/ovl_2F_HandcarHavoc/216140.c.o(.text);
        HandcarHavoc_TEXT_END = .;
        HandcarHavoc_TEXT_SIZE = ABSOLUTE(HandcarHavoc_TEXT_END - HandcarHavoc_TEXT_START);
        HandcarHavoc_DATA_START = .;
        ovl_2F_HandcarHavoc_20F570_c = .;
        build/src/ovl_2F_HandcarHavoc/20F570.c.o(.data);
        ovl_2F_HandcarHavoc_216140_c = .;
        build/src/ovl_2F_HandcarHavoc/216140.c.o(.data);
        HandcarHavoc_DATA_END = .;
        HandcarHavoc_DATA_SIZE = ABSOLUTE(HandcarHavoc_DATA_END - HandcarHavoc_DATA_START);
        HandcarHavoc_RODATA_START = .;
        build/src/ovl_2F_HandcarHavoc/20F570.c.o(.rodata);
        build/src/ovl_2F_HandcarHavoc/216140.c.o(.rodata);
        HandcarHavoc_RODATA_END = .;
        HandcarHavoc_RODATA_SIZE = ABSOLUTE(HandcarHavoc_RODATA_END - HandcarHavoc_RODATA_START);
    }
    HandcarHavoc_bss_VRAM = ADDR(.HandcarHavoc_bss);
    .HandcarHavoc_bss (NOLOAD) : SUBALIGN(16)
    {
        HandcarHavoc_BSS_START = .;
        build/src/ovl_2F_HandcarHavoc/20F570.c.o(.bss);
        build/src/ovl_2F_HandcarHavoc/216140.c.o(.bss);
        HandcarHavoc_BSS_END = .;
        HandcarHavoc_BSS_SIZE = ABSOLUTE(HandcarHavoc_BSS_END - HandcarHavoc_BSS_START);
    }
    __romPos += SIZEOF(.HandcarHavoc);
    __romPos = ALIGN(__romPos, 16);
    HandcarHavoc_ROM_END = __romPos;
    HandcarHavoc_VRAM_END = .;

    _218330_ROM_START = __romPos;
    _218330_VRAM = ADDR(._218330);
    ._218330 : AT(_218330_ROM_START) SUBALIGN(16)
    {
        _218330_DATA_START = .;
        _218330_bin = .;
        build/assets/218330.bin.o(.data);
        _218330_DATA_END = .;
        _218330_DATA_SIZE = ABSOLUTE(_218330_DATA_END - _218330_DATA_START);
    }
    __romPos += SIZEOF(._218330);
    _218330_ROM_END = __romPos;
    _218330_VRAM_END = .;

    DeepSeaDivers_ROM_START = __romPos;
    DeepSeaDivers_VRAM = ADDR(.DeepSeaDivers);
    .DeepSeaDivers 0x800F65E0 : AT(DeepSeaDivers_ROM_START) SUBALIGN(16)
    {
        DeepSeaDivers_TEXT_START = .;
        build/src/ovl_30_DeepSeaDivers/218510.c.o(.text);
        build/src/ovl_30_DeepSeaDivers/21FAD0.c.o(.text);
        DeepSeaDivers_TEXT_END = .;
        DeepSeaDivers_TEXT_SIZE = ABSOLUTE(DeepSeaDivers_TEXT_END - DeepSeaDivers_TEXT_START);
        DeepSeaDivers_DATA_START = .;
        ovl_30_DeepSeaDivers_218510_c = .;
        build/src/ovl_30_DeepSeaDivers/218510.c.o(.data);
        ovl_30_DeepSeaDivers_21FAD0_c = .;
        build/src/ovl_30_DeepSeaDivers/21FAD0.c.o(.data);
        DeepSeaDivers_DATA_END = .;
        DeepSeaDivers_DATA_SIZE = ABSOLUTE(DeepSeaDivers_DATA_END - DeepSeaDivers_DATA_START);
        DeepSeaDivers_RODATA_START = .;
        build/src/ovl_30_DeepSeaDivers/218510.c.o(.rodata);
        build/src/ovl_30_DeepSeaDivers/21FAD0.c.o(.rodata);
        DeepSeaDivers_RODATA_END = .;
        DeepSeaDivers_RODATA_SIZE = ABSOLUTE(DeepSeaDivers_RODATA_END - DeepSeaDivers_RODATA_START);
    }
    DeepSeaDivers_bss_VRAM = ADDR(.DeepSeaDivers_bss);
    .DeepSeaDivers_bss (NOLOAD) : SUBALIGN(16)
    {
        DeepSeaDivers_BSS_START = .;
        build/src/ovl_30_DeepSeaDivers/218510.c.o(.bss);
        build/src/ovl_30_DeepSeaDivers/21FAD0.c.o(.bss);
        DeepSeaDivers_BSS_END = .;
        DeepSeaDivers_BSS_SIZE = ABSOLUTE(DeepSeaDivers_BSS_END - DeepSeaDivers_BSS_START);
    }
    __romPos += SIZEOF(.DeepSeaDivers);
    __romPos = ALIGN(__romPos, 16);
    DeepSeaDivers_ROM_END = __romPos;
    DeepSeaDivers_VRAM_END = .;

    _221890_ROM_START = __romPos;
    _221890_VRAM = ADDR(._221890);
    ._221890 : AT(_221890_ROM_START) SUBALIGN(16)
    {
        _221890_DATA_START = .;
        _221890_bin = .;
        build/assets/221890.bin.o(.data);
        _221890_DATA_END = .;
        _221890_DATA_SIZE = ABSOLUTE(_221890_DATA_END - _221890_DATA_START);
    }
    __romPos += SIZEOF(._221890);
    _221890_ROM_END = __romPos;
    _221890_VRAM_END = .;

    PiranhasPursuit_ROM_START = __romPos;
    PiranhasPursuit_VRAM = ADDR(.PiranhasPursuit);
    .PiranhasPursuit 0x800F65E0 : AT(PiranhasPursuit_ROM_START) SUBALIGN(16)
    {
        PiranhasPursuit_TEXT_START = .;
        build/src/ovl_31_PiranhasPursuit/222320.c.o(.text);
        build/src/ovl_31_PiranhasPursuit/225DF0.c.o(.text);
        PiranhasPursuit_TEXT_END = .;
        PiranhasPursuit_TEXT_SIZE = ABSOLUTE(PiranhasPursuit_TEXT_END - PiranhasPursuit_TEXT_START);
        PiranhasPursuit_DATA_START = .;
        ovl_31_PiranhasPursuit_222320_c = .;
        build/src/ovl_31_PiranhasPursuit/222320.c.o(.data);
        ovl_31_PiranhasPursuit_225DF0_c = .;
        build/src/ovl_31_PiranhasPursuit/225DF0.c.o(.data);
        PiranhasPursuit_DATA_END = .;
        PiranhasPursuit_DATA_SIZE = ABSOLUTE(PiranhasPursuit_DATA_END - PiranhasPursuit_DATA_START);
        PiranhasPursuit_RODATA_START = .;
        build/src/ovl_31_PiranhasPursuit/222320.c.o(.rodata);
        build/src/ovl_31_PiranhasPursuit/225DF0.c.o(.rodata);
        PiranhasPursuit_RODATA_END = .;
        PiranhasPursuit_RODATA_SIZE = ABSOLUTE(PiranhasPursuit_RODATA_END - PiranhasPursuit_RODATA_START);
    }
    PiranhasPursuit_bss_VRAM = ADDR(.PiranhasPursuit_bss);
    .PiranhasPursuit_bss (NOLOAD) : SUBALIGN(16)
    {
        PiranhasPursuit_BSS_START = .;
        build/src/ovl_31_PiranhasPursuit/222320.c.o(.bss);
        build/src/ovl_31_PiranhasPursuit/225DF0.c.o(.bss);
        PiranhasPursuit_BSS_END = .;
        PiranhasPursuit_BSS_SIZE = ABSOLUTE(PiranhasPursuit_BSS_END - PiranhasPursuit_BSS_START);
    }
    __romPos += SIZEOF(.PiranhasPursuit);
    __romPos = ALIGN(__romPos, 16);
    PiranhasPursuit_ROM_END = __romPos;
    PiranhasPursuit_VRAM_END = .;

    _22BF30_ROM_START = __romPos;
    _22BF30_VRAM = ADDR(._22BF30);
    ._22BF30 : AT(_22BF30_ROM_START) SUBALIGN(16)
    {
        _22BF30_DATA_START = .;
        _22BF30_bin = .;
        build/assets/22BF30.bin.o(.data);
        _22BF30_DATA_END = .;
        _22BF30_DATA_SIZE = ABSOLUTE(_22BF30_DATA_END - _22BF30_DATA_START);
    }
    __romPos += SIZEOF(._22BF30);
    _22BF30_ROM_END = __romPos;
    _22BF30_VRAM_END = .;

    TugOWar_ROM_START = __romPos;
    TugOWar_VRAM = ADDR(.TugOWar);
    .TugOWar 0x800F65E0 : AT(TugOWar_ROM_START) SUBALIGN(16)
    {
        TugOWar_TEXT_START = .;
        build/src/ovl_32_TugOWar/22C9E0.c.o(.text);
        build/src/ovl_32_TugOWar/22D5F0.c.o(.text);
        build/src/ovl_32_TugOWar/231180.c.o(.text);
        build/src/ovl_32_TugOWar/231D40.c.o(.text);
        TugOWar_TEXT_END = .;
        TugOWar_TEXT_SIZE = ABSOLUTE(TugOWar_TEXT_END - TugOWar_TEXT_START);
        TugOWar_DATA_START = .;
        ovl_32_TugOWar_22C9E0_c = .;
        build/src/ovl_32_TugOWar/22C9E0.c.o(.data);
        ovl_32_TugOWar_22D5F0_c = .;
        build/src/ovl_32_TugOWar/22D5F0.c.o(.data);
        ovl_32_TugOWar_231180_c = .;
        build/src/ovl_32_TugOWar/231180.c.o(.data);
        ovl_32_TugOWar_231D40_c = .;
        build/src/ovl_32_TugOWar/231D40.c.o(.data);
        TugOWar_DATA_END = .;
        TugOWar_DATA_SIZE = ABSOLUTE(TugOWar_DATA_END - TugOWar_DATA_START);
        TugOWar_RODATA_START = .;
        build/src/ovl_32_TugOWar/22C9E0.c.o(.rodata);
        build/src/ovl_32_TugOWar/22D5F0.c.o(.rodata);
        build/src/ovl_32_TugOWar/231180.c.o(.rodata);
        build/src/ovl_32_TugOWar/231D40.c.o(.rodata);
        TugOWar_RODATA_END = .;
        TugOWar_RODATA_SIZE = ABSOLUTE(TugOWar_RODATA_END - TugOWar_RODATA_START);
    }
    TugOWar_bss_VRAM = ADDR(.TugOWar_bss);
    .TugOWar_bss (NOLOAD) : SUBALIGN(16)
    {
        TugOWar_BSS_START = .;
        build/src/ovl_32_TugOWar/22C9E0.c.o(.bss);
        build/src/ovl_32_TugOWar/22D5F0.c.o(.bss);
        build/src/ovl_32_TugOWar/231180.c.o(.bss);
        build/src/ovl_32_TugOWar/231D40.c.o(.bss);
        TugOWar_BSS_END = .;
        TugOWar_BSS_SIZE = ABSOLUTE(TugOWar_BSS_END - TugOWar_BSS_START);
    }
    __romPos += SIZEOF(.TugOWar);
    __romPos = ALIGN(__romPos, 16);
    TugOWar_ROM_END = __romPos;
    TugOWar_VRAM_END = .;

    _233EE0_ROM_START = __romPos;
    _233EE0_VRAM = ADDR(._233EE0);
    ._233EE0 : AT(_233EE0_ROM_START) SUBALIGN(16)
    {
        _233EE0_DATA_START = .;
        _233EE0_bin = .;
        build/assets/233EE0.bin.o(.data);
        _233EE0_DATA_END = .;
        _233EE0_DATA_SIZE = ABSOLUTE(_233EE0_DATA_END - _233EE0_DATA_START);
    }
    __romPos += SIZEOF(._233EE0);
    _233EE0_ROM_END = __romPos;
    _233EE0_VRAM_END = .;

    PaddleBattle_ROM_START = __romPos;
    PaddleBattle_VRAM = ADDR(.PaddleBattle);
    .PaddleBattle 0x800F65E0 : AT(PaddleBattle_ROM_START) SUBALIGN(16)
    {
        PaddleBattle_TEXT_START = .;
        build/src/ovl_33_PaddleBattle/2341E0.c.o(.text);
        build/src/ovl_33_PaddleBattle/234F80.c.o(.text);
        PaddleBattle_TEXT_END = .;
        PaddleBattle_TEXT_SIZE = ABSOLUTE(PaddleBattle_TEXT_END - PaddleBattle_TEXT_START);
        PaddleBattle_DATA_START = .;
        ovl_33_PaddleBattle_2341E0_c = .;
        build/src/ovl_33_PaddleBattle/2341E0.c.o(.data);
        ovl_33_PaddleBattle_234F80_c = .;
        build/src/ovl_33_PaddleBattle/234F80.c.o(.data);
        PaddleBattle_DATA_END = .;
        PaddleBattle_DATA_SIZE = ABSOLUTE(PaddleBattle_DATA_END - PaddleBattle_DATA_START);
        PaddleBattle_RODATA_START = .;
        build/src/ovl_33_PaddleBattle/2341E0.c.o(.rodata);
        build/src/ovl_33_PaddleBattle/234F80.c.o(.rodata);
        PaddleBattle_RODATA_END = .;
        PaddleBattle_RODATA_SIZE = ABSOLUTE(PaddleBattle_RODATA_END - PaddleBattle_RODATA_START);
    }
    PaddleBattle_bss_VRAM = ADDR(.PaddleBattle_bss);
    .PaddleBattle_bss (NOLOAD) : SUBALIGN(16)
    {
        PaddleBattle_BSS_START = .;
        build/src/ovl_33_PaddleBattle/2341E0.c.o(.bss);
        build/src/ovl_33_PaddleBattle/234F80.c.o(.bss);
        PaddleBattle_BSS_END = .;
        PaddleBattle_BSS_SIZE = ABSOLUTE(PaddleBattle_BSS_END - PaddleBattle_BSS_START);
    }
    __romPos += SIZEOF(.PaddleBattle);
    __romPos = ALIGN(__romPos, 16);
    PaddleBattle_ROM_END = __romPos;
    PaddleBattle_VRAM_END = .;

    _23BDF0_ROM_START = __romPos;
    _23BDF0_VRAM = ADDR(._23BDF0);
    ._23BDF0 : AT(_23BDF0_ROM_START) SUBALIGN(16)
    {
        _23BDF0_DATA_START = .;
        _23BDF0_bin = .;
        build/assets/23BDF0.bin.o(.data);
        _23BDF0_DATA_END = .;
        _23BDF0_DATA_SIZE = ABSOLUTE(_23BDF0_DATA_END - _23BDF0_DATA_START);
    }
    __romPos += SIZEOF(._23BDF0);
    _23BDF0_ROM_END = __romPos;
    _23BDF0_VRAM_END = .;

    BumperBallMaze_ROM_START = __romPos;
    BumperBallMaze_VRAM = ADDR(.BumperBallMaze);
    .BumperBallMaze 0x800F65E0 : AT(BumperBallMaze_ROM_START) SUBALIGN(16)
    {
        BumperBallMaze_TEXT_START = .;
        build/src/ovl_34_BumperBallMaze/23CF40.c.o(.text);
        build/src/ovl_34_BumperBallMaze/240010.c.o(.text);
        BumperBallMaze_TEXT_END = .;
        BumperBallMaze_TEXT_SIZE = ABSOLUTE(BumperBallMaze_TEXT_END - BumperBallMaze_TEXT_START);
        BumperBallMaze_DATA_START = .;
        ovl_34_BumperBallMaze_23CF40_c = .;
        build/src/ovl_34_BumperBallMaze/23CF40.c.o(.data);
        ovl_34_BumperBallMaze_240010_c = .;
        build/src/ovl_34_BumperBallMaze/240010.c.o(.data);
        BumperBallMaze_DATA_END = .;
        BumperBallMaze_DATA_SIZE = ABSOLUTE(BumperBallMaze_DATA_END - BumperBallMaze_DATA_START);
        BumperBallMaze_RODATA_START = .;
        build/src/ovl_34_BumperBallMaze/23CF40.c.o(.rodata);
        build/src/ovl_34_BumperBallMaze/240010.c.o(.rodata);
        BumperBallMaze_RODATA_END = .;
        BumperBallMaze_RODATA_SIZE = ABSOLUTE(BumperBallMaze_RODATA_END - BumperBallMaze_RODATA_START);
    }
    BumperBallMaze_bss_VRAM = ADDR(.BumperBallMaze_bss);
    .BumperBallMaze_bss (NOLOAD) : SUBALIGN(16)
    {
        BumperBallMaze_BSS_START = .;
        build/src/ovl_34_BumperBallMaze/23CF40.c.o(.bss);
        build/src/ovl_34_BumperBallMaze/240010.c.o(.bss);
        BumperBallMaze_BSS_END = .;
        BumperBallMaze_BSS_SIZE = ABSOLUTE(BumperBallMaze_BSS_END - BumperBallMaze_BSS_START);
    }
    __romPos += SIZEOF(.BumperBallMaze);
    __romPos = ALIGN(__romPos, 16);
    BumperBallMaze_ROM_END = __romPos;
    BumperBallMaze_VRAM_END = .;

    _241460_ROM_START = __romPos;
    _241460_VRAM = ADDR(._241460);
    ._241460 : AT(_241460_ROM_START) SUBALIGN(16)
    {
        _241460_DATA_START = .;
        _241460_bin = .;
        build/assets/241460.bin.o(.data);
        _241460_DATA_END = .;
        _241460_DATA_SIZE = ABSOLUTE(_241460_DATA_END - _241460_DATA_START);
    }
    __romPos += SIZEOF(._241460);
    _241460_ROM_END = __romPos;
    _241460_VRAM_END = .;

    name_35_ROM_START = __romPos;
    name_35_VRAM = ADDR(.name_35);
    .name_35 0x800F65E0 : AT(name_35_ROM_START) SUBALIGN(16)
    {
        name_35_TEXT_START = .;
        build/src/ovl_35/241740.c.o(.text);
        build/src/ovl_35/241770.c.o(.text);
        name_35_TEXT_END = .;
        name_35_TEXT_SIZE = ABSOLUTE(name_35_TEXT_END - name_35_TEXT_START);
        name_35_DATA_START = .;
        ovl_35_241740_c = .;
        build/src/ovl_35/241740.c.o(.data);
        ovl_35_241770_c = .;
        build/src/ovl_35/241770.c.o(.data);
        name_35_DATA_END = .;
        name_35_DATA_SIZE = ABSOLUTE(name_35_DATA_END - name_35_DATA_START);
        name_35_RODATA_START = .;
        build/src/ovl_35/241740.c.o(.rodata);
        build/src/ovl_35/241770.c.o(.rodata);
        name_35_RODATA_END = .;
        name_35_RODATA_SIZE = ABSOLUTE(name_35_RODATA_END - name_35_RODATA_START);
    }
    name_35_bss_VRAM = ADDR(.name_35_bss);
    .name_35_bss (NOLOAD) : SUBALIGN(16)
    {
        name_35_BSS_START = .;
        build/src/ovl_35/241740.c.o(.bss);
        build/src/ovl_35/241770.c.o(.bss);
        name_35_BSS_END = .;
        name_35_BSS_SIZE = ABSOLUTE(name_35_BSS_END - name_35_BSS_START);
    }
    __romPos += SIZEOF(.name_35);
    __romPos = ALIGN(__romPos, 16);
    name_35_ROM_END = __romPos;
    name_35_VRAM_END = .;

    _241880_ROM_START = __romPos;
    _241880_VRAM = ADDR(._241880);
    ._241880 : AT(_241880_ROM_START) SUBALIGN(16)
    {
        _241880_DATA_START = .;
        _241880_bin = .;
        build/assets/241880.bin.o(.data);
        _241880_DATA_END = .;
        _241880_DATA_SIZE = ABSOLUTE(_241880_DATA_END - _241880_DATA_START);
    }
    __romPos += SIZEOF(._241880);
    _241880_ROM_END = __romPos;
    _241880_VRAM_END = .;

    DKsJungleAdventure_ROM_START = __romPos;
    DKsJungleAdventure_VRAM = ADDR(.DKsJungleAdventure);
    .DKsJungleAdventure 0x800F65E0 : AT(DKsJungleAdventure_ROM_START) SUBALIGN(16)
    {
        DKsJungleAdventure_TEXT_START = .;
        build/src/ovl_36_DKsJungleAdventure/2418A0.c.o(.text);
        build/src/ovl_36_DKsJungleAdventure/2418D0.c.o(.text);
        DKsJungleAdventure_TEXT_END = .;
        DKsJungleAdventure_TEXT_SIZE = ABSOLUTE(DKsJungleAdventure_TEXT_END - DKsJungleAdventure_TEXT_START);
        DKsJungleAdventure_DATA_START = .;
        ovl_36_DKsJungleAdventure_2418A0_c = .;
        build/src/ovl_36_DKsJungleAdventure/2418A0.c.o(.data);
        ovl_36_DKsJungleAdventure_2418D0_c = .;
        build/src/ovl_36_DKsJungleAdventure/2418D0.c.o(.data);
        DKsJungleAdventure_DATA_END = .;
        DKsJungleAdventure_DATA_SIZE = ABSOLUTE(DKsJungleAdventure_DATA_END - DKsJungleAdventure_DATA_START);
        DKsJungleAdventure_RODATA_START = .;
        build/src/ovl_36_DKsJungleAdventure/2418A0.c.o(.rodata);
        build/src/ovl_36_DKsJungleAdventure/2418D0.c.o(.rodata);
        DKsJungleAdventure_RODATA_END = .;
        DKsJungleAdventure_RODATA_SIZE = ABSOLUTE(DKsJungleAdventure_RODATA_END - DKsJungleAdventure_RODATA_START);
    }
    DKsJungleAdventure_bss_VRAM = ADDR(.DKsJungleAdventure_bss);
    .DKsJungleAdventure_bss (NOLOAD) : SUBALIGN(16)
    {
        DKsJungleAdventure_BSS_START = .;
        build/src/ovl_36_DKsJungleAdventure/2418A0.c.o(.bss);
        build/src/ovl_36_DKsJungleAdventure/2418D0.c.o(.bss);
        DKsJungleAdventure_BSS_END = .;
        DKsJungleAdventure_BSS_SIZE = ABSOLUTE(DKsJungleAdventure_BSS_END - DKsJungleAdventure_BSS_START);
    }
    __romPos += SIZEOF(.DKsJungleAdventure);
    __romPos = ALIGN(__romPos, 16);
    DKsJungleAdventure_ROM_END = __romPos;
    DKsJungleAdventure_VRAM_END = .;

    _244B50_ROM_START = __romPos;
    _244B50_VRAM = ADDR(._244B50);
    ._244B50 : AT(_244B50_ROM_START) SUBALIGN(16)
    {
        _244B50_DATA_START = .;
        _244B50_bin = .;
        build/assets/244B50.bin.o(.data);
        _244B50_DATA_END = .;
        _244B50_DATA_SIZE = ABSOLUTE(_244B50_DATA_END - _244B50_DATA_START);
    }
    __romPos += SIZEOF(._244B50);
    _244B50_ROM_END = __romPos;
    _244B50_VRAM_END = .;

    PeachsBirthdayCake_ROM_START = __romPos;
    PeachsBirthdayCake_VRAM = ADDR(.PeachsBirthdayCake);
    .PeachsBirthdayCake 0x800F65E0 : AT(PeachsBirthdayCake_ROM_START) SUBALIGN(16)
    {
        PeachsBirthdayCake_TEXT_START = .;
        build/src/ovl_37_PeachsBirthdayCake/2455C0.c.o(.text);
        build/src/ovl_37_PeachsBirthdayCake/2455F0.c.o(.text);
        PeachsBirthdayCake_TEXT_END = .;
        PeachsBirthdayCake_TEXT_SIZE = ABSOLUTE(PeachsBirthdayCake_TEXT_END - PeachsBirthdayCake_TEXT_START);
        PeachsBirthdayCake_DATA_START = .;
        ovl_37_PeachsBirthdayCake_2455C0_c = .;
        build/src/ovl_37_PeachsBirthdayCake/2455C0.c.o(.data);
        ovl_37_PeachsBirthdayCake_2455F0_c = .;
        build/src/ovl_37_PeachsBirthdayCake/2455F0.c.o(.data);
        PeachsBirthdayCake_DATA_END = .;
        PeachsBirthdayCake_DATA_SIZE = ABSOLUTE(PeachsBirthdayCake_DATA_END - PeachsBirthdayCake_DATA_START);
        PeachsBirthdayCake_RODATA_START = .;
        build/src/ovl_37_PeachsBirthdayCake/2455C0.c.o(.rodata);
        build/src/ovl_37_PeachsBirthdayCake/2455F0.c.o(.rodata);
        PeachsBirthdayCake_RODATA_END = .;
        PeachsBirthdayCake_RODATA_SIZE = ABSOLUTE(PeachsBirthdayCake_RODATA_END - PeachsBirthdayCake_RODATA_START);
    }
    PeachsBirthdayCake_bss_VRAM = ADDR(.PeachsBirthdayCake_bss);
    .PeachsBirthdayCake_bss (NOLOAD) : SUBALIGN(16)
    {
        PeachsBirthdayCake_BSS_START = .;
        build/src/ovl_37_PeachsBirthdayCake/2455C0.c.o(.bss);
        build/src/ovl_37_PeachsBirthdayCake/2455F0.c.o(.bss);
        PeachsBirthdayCake_BSS_END = .;
        PeachsBirthdayCake_BSS_SIZE = ABSOLUTE(PeachsBirthdayCake_BSS_END - PeachsBirthdayCake_BSS_START);
    }
    __romPos += SIZEOF(.PeachsBirthdayCake);
    __romPos = ALIGN(__romPos, 16);
    PeachsBirthdayCake_ROM_END = __romPos;
    PeachsBirthdayCake_VRAM_END = .;

    _246A60_ROM_START = __romPos;
    _246A60_VRAM = ADDR(._246A60);
    ._246A60 : AT(_246A60_ROM_START) SUBALIGN(16)
    {
        _246A60_DATA_START = .;
        _246A60_bin = .;
        build/assets/246A60.bin.o(.data);
        _246A60_DATA_END = .;
        _246A60_DATA_SIZE = ABSOLUTE(_246A60_DATA_END - _246A60_DATA_START);
    }
    __romPos += SIZEOF(._246A60);
    _246A60_ROM_END = __romPos;
    _246A60_VRAM_END = .;

    YoshisTropicalIsland_ROM_START = __romPos;
    YoshisTropicalIsland_VRAM = ADDR(.YoshisTropicalIsland);
    .YoshisTropicalIsland 0x800F65E0 : AT(YoshisTropicalIsland_ROM_START) SUBALIGN(16)
    {
        YoshisTropicalIsland_TEXT_START = .;
        build/src/ovl_38_YoshisTropicalIsland/246DF0.c.o(.text);
        build/src/ovl_38_YoshisTropicalIsland/246E20.c.o(.text);
        YoshisTropicalIsland_TEXT_END = .;
        YoshisTropicalIsland_TEXT_SIZE = ABSOLUTE(YoshisTropicalIsland_TEXT_END - YoshisTropicalIsland_TEXT_START);
        YoshisTropicalIsland_DATA_START = .;
        ovl_38_YoshisTropicalIsland_246DF0_c = .;
        build/src/ovl_38_YoshisTropicalIsland/246DF0.c.o(.data);
        ovl_38_YoshisTropicalIsland_246E20_c = .;
        build/src/ovl_38_YoshisTropicalIsland/246E20.c.o(.data);
        YoshisTropicalIsland_DATA_END = .;
        YoshisTropicalIsland_DATA_SIZE = ABSOLUTE(YoshisTropicalIsland_DATA_END - YoshisTropicalIsland_DATA_START);
        YoshisTropicalIsland_RODATA_START = .;
        build/src/ovl_38_YoshisTropicalIsland/246DF0.c.o(.rodata);
        build/src/ovl_38_YoshisTropicalIsland/246E20.c.o(.rodata);
        YoshisTropicalIsland_RODATA_END = .;
        YoshisTropicalIsland_RODATA_SIZE = ABSOLUTE(YoshisTropicalIsland_RODATA_END - YoshisTropicalIsland_RODATA_START);
    }
    YoshisTropicalIsland_bss_VRAM = ADDR(.YoshisTropicalIsland_bss);
    .YoshisTropicalIsland_bss (NOLOAD) : SUBALIGN(16)
    {
        YoshisTropicalIsland_BSS_START = .;
        build/src/ovl_38_YoshisTropicalIsland/246DF0.c.o(.bss);
        build/src/ovl_38_YoshisTropicalIsland/246E20.c.o(.bss);
        YoshisTropicalIsland_BSS_END = .;
        YoshisTropicalIsland_BSS_SIZE = ABSOLUTE(YoshisTropicalIsland_BSS_END - YoshisTropicalIsland_BSS_START);
    }
    __romPos += SIZEOF(.YoshisTropicalIsland);
    __romPos = ALIGN(__romPos, 16);
    YoshisTropicalIsland_ROM_END = __romPos;
    YoshisTropicalIsland_VRAM_END = .;

    _248820_ROM_START = __romPos;
    _248820_VRAM = ADDR(._248820);
    ._248820 : AT(_248820_ROM_START) SUBALIGN(16)
    {
        _248820_DATA_START = .;
        _248820_bin = .;
        build/assets/248820.bin.o(.data);
        _248820_DATA_END = .;
        _248820_DATA_SIZE = ABSOLUTE(_248820_DATA_END - _248820_DATA_START);
    }
    __romPos += SIZEOF(._248820);
    _248820_ROM_END = __romPos;
    _248820_VRAM_END = .;

    WariosBattleCanyon_ROM_START = __romPos;
    WariosBattleCanyon_VRAM = ADDR(.WariosBattleCanyon);
    .WariosBattleCanyon 0x800F65E0 : AT(WariosBattleCanyon_ROM_START) SUBALIGN(16)
    {
        WariosBattleCanyon_TEXT_START = .;
        build/src/ovl_39_WariosBattleCanyon/248F00.c.o(.text);
        build/src/ovl_39_WariosBattleCanyon/248F30.c.o(.text);
        WariosBattleCanyon_TEXT_END = .;
        WariosBattleCanyon_TEXT_SIZE = ABSOLUTE(WariosBattleCanyon_TEXT_END - WariosBattleCanyon_TEXT_START);
        WariosBattleCanyon_DATA_START = .;
        ovl_39_WariosBattleCanyon_248F00_c = .;
        build/src/ovl_39_WariosBattleCanyon/248F00.c.o(.data);
        ovl_39_WariosBattleCanyon_248F30_c = .;
        build/src/ovl_39_WariosBattleCanyon/248F30.c.o(.data);
        WariosBattleCanyon_DATA_END = .;
        WariosBattleCanyon_DATA_SIZE = ABSOLUTE(WariosBattleCanyon_DATA_END - WariosBattleCanyon_DATA_START);
        WariosBattleCanyon_RODATA_START = .;
        build/src/ovl_39_WariosBattleCanyon/248F00.c.o(.rodata);
        build/src/ovl_39_WariosBattleCanyon/248F30.c.o(.rodata);
        WariosBattleCanyon_RODATA_END = .;
        WariosBattleCanyon_RODATA_SIZE = ABSOLUTE(WariosBattleCanyon_RODATA_END - WariosBattleCanyon_RODATA_START);
    }
    WariosBattleCanyon_bss_VRAM = ADDR(.WariosBattleCanyon_bss);
    .WariosBattleCanyon_bss (NOLOAD) : SUBALIGN(16)
    {
        WariosBattleCanyon_BSS_START = .;
        build/src/ovl_39_WariosBattleCanyon/248F00.c.o(.bss);
        build/src/ovl_39_WariosBattleCanyon/248F30.c.o(.bss);
        WariosBattleCanyon_BSS_END = .;
        WariosBattleCanyon_BSS_SIZE = ABSOLUTE(WariosBattleCanyon_BSS_END - WariosBattleCanyon_BSS_START);
    }
    __romPos += SIZEOF(.WariosBattleCanyon);
    __romPos = ALIGN(__romPos, 16);
    WariosBattleCanyon_ROM_END = __romPos;
    WariosBattleCanyon_VRAM_END = .;

    _24C0D0_ROM_START = __romPos;
    _24C0D0_VRAM = ADDR(._24C0D0);
    ._24C0D0 : AT(_24C0D0_ROM_START) SUBALIGN(16)
    {
        _24C0D0_DATA_START = .;
        _24C0D0_bin = .;
        build/assets/24C0D0.bin.o(.data);
        _24C0D0_DATA_END = .;
        _24C0D0_DATA_SIZE = ABSOLUTE(_24C0D0_DATA_END - _24C0D0_DATA_START);
    }
    __romPos += SIZEOF(._24C0D0);
    _24C0D0_ROM_END = __romPos;
    _24C0D0_VRAM_END = .;

    LuigisEngineRoom_ROM_START = __romPos;
    LuigisEngineRoom_VRAM = ADDR(.LuigisEngineRoom);
    .LuigisEngineRoom 0x800F65E0 : AT(LuigisEngineRoom_ROM_START) SUBALIGN(16)
    {
        LuigisEngineRoom_TEXT_START = .;
        build/src/ovl_3A_LuigisEngineRoom/24C390.c.o(.text);
        build/src/ovl_3A_LuigisEngineRoom/24C3C0.c.o(.text);
        LuigisEngineRoom_TEXT_END = .;
        LuigisEngineRoom_TEXT_SIZE = ABSOLUTE(LuigisEngineRoom_TEXT_END - LuigisEngineRoom_TEXT_START);
        LuigisEngineRoom_DATA_START = .;
        ovl_3A_LuigisEngineRoom_24C390_c = .;
        build/src/ovl_3A_LuigisEngineRoom/24C390.c.o(.data);
        ovl_3A_LuigisEngineRoom_24C3C0_c = .;
        build/src/ovl_3A_LuigisEngineRoom/24C3C0.c.o(.data);
        LuigisEngineRoom_DATA_END = .;
        LuigisEngineRoom_DATA_SIZE = ABSOLUTE(LuigisEngineRoom_DATA_END - LuigisEngineRoom_DATA_START);
        LuigisEngineRoom_RODATA_START = .;
        build/src/ovl_3A_LuigisEngineRoom/24C390.c.o(.rodata);
        build/src/ovl_3A_LuigisEngineRoom/24C3C0.c.o(.rodata);
        LuigisEngineRoom_RODATA_END = .;
        LuigisEngineRoom_RODATA_SIZE = ABSOLUTE(LuigisEngineRoom_RODATA_END - LuigisEngineRoom_RODATA_START);
    }
    LuigisEngineRoom_bss_VRAM = ADDR(.LuigisEngineRoom_bss);
    .LuigisEngineRoom_bss (NOLOAD) : SUBALIGN(16)
    {
        LuigisEngineRoom_BSS_START = .;
        build/src/ovl_3A_LuigisEngineRoom/24C390.c.o(.bss);
        build/src/ovl_3A_LuigisEngineRoom/24C3C0.c.o(.bss);
        LuigisEngineRoom_BSS_END = .;
        LuigisEngineRoom_BSS_SIZE = ABSOLUTE(LuigisEngineRoom_BSS_END - LuigisEngineRoom_BSS_START);
    }
    __romPos += SIZEOF(.LuigisEngineRoom);
    __romPos = ALIGN(__romPos, 16);
    LuigisEngineRoom_ROM_END = __romPos;
    LuigisEngineRoom_VRAM_END = .;

    _24F280_ROM_START = __romPos;
    _24F280_VRAM = ADDR(._24F280);
    ._24F280 : AT(_24F280_ROM_START) SUBALIGN(16)
    {
        _24F280_DATA_START = .;
        _24F280_bin = .;
        build/assets/24F280.bin.o(.data);
        _24F280_DATA_END = .;
        _24F280_DATA_SIZE = ABSOLUTE(_24F280_DATA_END - _24F280_DATA_START);
    }
    __romPos += SIZEOF(._24F280);
    _24F280_ROM_END = __romPos;
    _24F280_VRAM_END = .;

    MariosRainbowCastle_ROM_START = __romPos;
    MariosRainbowCastle_VRAM = ADDR(.MariosRainbowCastle);
    .MariosRainbowCastle 0x800F65E0 : AT(MariosRainbowCastle_ROM_START) SUBALIGN(16)
    {
        MariosRainbowCastle_TEXT_START = .;
        build/src/ovl_3B_MariosRainbowCastle/24FA80.c.o(.text);
        build/src/ovl_3B_MariosRainbowCastle/24FAB0.c.o(.text);
        MariosRainbowCastle_TEXT_END = .;
        MariosRainbowCastle_TEXT_SIZE = ABSOLUTE(MariosRainbowCastle_TEXT_END - MariosRainbowCastle_TEXT_START);
        MariosRainbowCastle_DATA_START = .;
        ovl_3B_MariosRainbowCastle_24FA80_c = .;
        build/src/ovl_3B_MariosRainbowCastle/24FA80.c.o(.data);
        ovl_3B_MariosRainbowCastle_24FAB0_c = .;
        build/src/ovl_3B_MariosRainbowCastle/24FAB0.c.o(.data);
        MariosRainbowCastle_DATA_END = .;
        MariosRainbowCastle_DATA_SIZE = ABSOLUTE(MariosRainbowCastle_DATA_END - MariosRainbowCastle_DATA_START);
        MariosRainbowCastle_RODATA_START = .;
        build/src/ovl_3B_MariosRainbowCastle/24FA80.c.o(.rodata);
        build/src/ovl_3B_MariosRainbowCastle/24FAB0.c.o(.rodata);
        MariosRainbowCastle_RODATA_END = .;
        MariosRainbowCastle_RODATA_SIZE = ABSOLUTE(MariosRainbowCastle_RODATA_END - MariosRainbowCastle_RODATA_START);
    }
    MariosRainbowCastle_bss_VRAM = ADDR(.MariosRainbowCastle_bss);
    .MariosRainbowCastle_bss (NOLOAD) : SUBALIGN(16)
    {
        MariosRainbowCastle_BSS_START = .;
        build/src/ovl_3B_MariosRainbowCastle/24FA80.c.o(.bss);
        build/src/ovl_3B_MariosRainbowCastle/24FAB0.c.o(.bss);
        MariosRainbowCastle_BSS_END = .;
        MariosRainbowCastle_BSS_SIZE = ABSOLUTE(MariosRainbowCastle_BSS_END - MariosRainbowCastle_BSS_START);
    }
    __romPos += SIZEOF(.MariosRainbowCastle);
    __romPos = ALIGN(__romPos, 16);
    MariosRainbowCastle_ROM_END = __romPos;
    MariosRainbowCastle_VRAM_END = .;

    _251400_ROM_START = __romPos;
    _251400_VRAM = ADDR(._251400);
    ._251400 : AT(_251400_ROM_START) SUBALIGN(16)
    {
        _251400_DATA_START = .;
        _251400_bin = .;
        build/assets/251400.bin.o(.data);
        _251400_DATA_END = .;
        _251400_DATA_SIZE = ABSOLUTE(_251400_DATA_END - _251400_DATA_START);
    }
    __romPos += SIZEOF(._251400);
    _251400_ROM_END = __romPos;
    _251400_VRAM_END = .;

    BowsersMagmaMountain_ROM_START = __romPos;
    BowsersMagmaMountain_VRAM = ADDR(.BowsersMagmaMountain);
    .BowsersMagmaMountain 0x800F65E0 : AT(BowsersMagmaMountain_ROM_START) SUBALIGN(16)
    {
        BowsersMagmaMountain_TEXT_START = .;
        build/src/ovl_3C_BowsersMagmaMountain/2518D0.c.o(.text);
        build/src/ovl_3C_BowsersMagmaMountain/251900.c.o(.text);
        BowsersMagmaMountain_TEXT_END = .;
        BowsersMagmaMountain_TEXT_SIZE = ABSOLUTE(BowsersMagmaMountain_TEXT_END - BowsersMagmaMountain_TEXT_START);
        BowsersMagmaMountain_DATA_START = .;
        ovl_3C_BowsersMagmaMountain_2518D0_c = .;
        build/src/ovl_3C_BowsersMagmaMountain/2518D0.c.o(.data);
        ovl_3C_BowsersMagmaMountain_251900_c = .;
        build/src/ovl_3C_BowsersMagmaMountain/251900.c.o(.data);
        BowsersMagmaMountain_DATA_END = .;
        BowsersMagmaMountain_DATA_SIZE = ABSOLUTE(BowsersMagmaMountain_DATA_END - BowsersMagmaMountain_DATA_START);
        BowsersMagmaMountain_RODATA_START = .;
        build/src/ovl_3C_BowsersMagmaMountain/2518D0.c.o(.rodata);
        build/src/ovl_3C_BowsersMagmaMountain/251900.c.o(.rodata);
        BowsersMagmaMountain_RODATA_END = .;
        BowsersMagmaMountain_RODATA_SIZE = ABSOLUTE(BowsersMagmaMountain_RODATA_END - BowsersMagmaMountain_RODATA_START);
    }
    BowsersMagmaMountain_bss_VRAM = ADDR(.BowsersMagmaMountain_bss);
    .BowsersMagmaMountain_bss (NOLOAD) : SUBALIGN(16)
    {
        BowsersMagmaMountain_BSS_START = .;
        build/src/ovl_3C_BowsersMagmaMountain/2518D0.c.o(.bss);
        build/src/ovl_3C_BowsersMagmaMountain/251900.c.o(.bss);
        BowsersMagmaMountain_BSS_END = .;
        BowsersMagmaMountain_BSS_SIZE = ABSOLUTE(BowsersMagmaMountain_BSS_END - BowsersMagmaMountain_BSS_START);
    }
    __romPos += SIZEOF(.BowsersMagmaMountain);
    __romPos = ALIGN(__romPos, 16);
    BowsersMagmaMountain_ROM_END = __romPos;
    BowsersMagmaMountain_VRAM_END = .;

    _253A50_ROM_START = __romPos;
    _253A50_VRAM = ADDR(._253A50);
    ._253A50 : AT(_253A50_ROM_START) SUBALIGN(16)
    {
        _253A50_DATA_START = .;
        _253A50_bin = .;
        build/assets/253A50.bin.o(.data);
        _253A50_DATA_END = .;
        _253A50_DATA_SIZE = ABSOLUTE(_253A50_DATA_END - _253A50_DATA_START);
    }
    __romPos += SIZEOF(._253A50);
    _253A50_ROM_END = __romPos;
    _253A50_VRAM_END = .;

    EternalStar_ROM_START = __romPos;
    EternalStar_VRAM = ADDR(.EternalStar);
    .EternalStar 0x800F65E0 : AT(EternalStar_ROM_START) SUBALIGN(16)
    {
        EternalStar_TEXT_START = .;
        build/src/ovl_3D_EternalStar/254450.c.o(.text);
        build/src/ovl_3D_EternalStar/254480.c.o(.text);
        EternalStar_TEXT_END = .;
        EternalStar_TEXT_SIZE = ABSOLUTE(EternalStar_TEXT_END - EternalStar_TEXT_START);
        EternalStar_RODATA_START = .;
        build/src/ovl_3D_EternalStar/254450.c.o(.rodata);
        build/src/ovl_3D_EternalStar/254480.c.o(.rodata);
        EternalStar_RODATA_END = .;
        EternalStar_RODATA_SIZE = ABSOLUTE(EternalStar_RODATA_END - EternalStar_RODATA_START);
        EternalStar_DATA_START = .;
        ovl_3D_EternalStar_254450_c = .;
        build/src/ovl_3D_EternalStar/254450.c.o(.data);
        ovl_3D_EternalStar_254480_c = .;
        build/src/ovl_3D_EternalStar/254480.c.o(.data);
        EternalStar_DATA_END = .;
        EternalStar_DATA_SIZE = ABSOLUTE(EternalStar_DATA_END - EternalStar_DATA_START);
    }
    EternalStar_bss_VRAM = ADDR(.EternalStar_bss);
    .EternalStar_bss (NOLOAD) : SUBALIGN(16)
    {
        EternalStar_BSS_START = .;
        build/src/ovl_3D_EternalStar/254450.c.o(.bss);
        build/src/ovl_3D_EternalStar/254480.c.o(.bss);
        EternalStar_BSS_END = .;
        EternalStar_BSS_SIZE = ABSOLUTE(EternalStar_BSS_END - EternalStar_BSS_START);
    }
    __romPos += SIZEOF(.EternalStar);
    __romPos = ALIGN(__romPos, 16);
    EternalStar_ROM_END = __romPos;
    EternalStar_VRAM_END = .;

    FirstMap_ROM_START = __romPos;
    FirstMap_VRAM = ADDR(.FirstMap);
    .FirstMap 0x800F65E0 : AT(FirstMap_ROM_START) SUBALIGN(16)
    {
        FirstMap_TEXT_START = .;
        build/src/ovl_3E_FirstMap/256FF0.c.o(.text);
        build/src/ovl_3E_FirstMap/257020.c.o(.text);
        FirstMap_TEXT_END = .;
        FirstMap_TEXT_SIZE = ABSOLUTE(FirstMap_TEXT_END - FirstMap_TEXT_START);
        FirstMap_DATA_START = .;
        ovl_3E_FirstMap_256FF0_c = .;
        build/src/ovl_3E_FirstMap/256FF0.c.o(.data);
        ovl_3E_FirstMap_257020_c = .;
        build/src/ovl_3E_FirstMap/257020.c.o(.data);
        FirstMap_DATA_END = .;
        FirstMap_DATA_SIZE = ABSOLUTE(FirstMap_DATA_END - FirstMap_DATA_START);
        FirstMap_RODATA_START = .;
        build/src/ovl_3E_FirstMap/256FF0.c.o(.rodata);
        build/src/ovl_3E_FirstMap/257020.c.o(.rodata);
        FirstMap_RODATA_END = .;
        FirstMap_RODATA_SIZE = ABSOLUTE(FirstMap_RODATA_END - FirstMap_RODATA_START);
    }
    FirstMap_bss_VRAM = ADDR(.FirstMap_bss);
    .FirstMap_bss (NOLOAD) : SUBALIGN(16)
    {
        FirstMap_BSS_START = .;
        build/src/ovl_3E_FirstMap/256FF0.c.o(.bss);
        build/src/ovl_3E_FirstMap/257020.c.o(.bss);
        FirstMap_BSS_END = .;
        FirstMap_BSS_SIZE = ABSOLUTE(FirstMap_BSS_END - FirstMap_BSS_START);
    }
    __romPos += SIZEOF(.FirstMap);
    __romPos = ALIGN(__romPos, 16);
    FirstMap_ROM_END = __romPos;
    FirstMap_VRAM_END = .;

    _259140_ROM_START = __romPos;
    _259140_VRAM = ADDR(._259140);
    ._259140 : AT(_259140_ROM_START) SUBALIGN(16)
    {
        _259140_DATA_START = .;
        _259140_bin = .;
        build/assets/259140.bin.o(.data);
        _259140_DATA_END = .;
        _259140_DATA_SIZE = ABSOLUTE(_259140_DATA_END - _259140_DATA_START);
    }
    __romPos += SIZEOF(._259140);
    _259140_ROM_END = __romPos;
    _259140_VRAM_END = .;

    Last5Turns_ROM_START = __romPos;
    Last5Turns_VRAM = ADDR(.Last5Turns);
    .Last5Turns 0x800F65E0 : AT(Last5Turns_ROM_START) SUBALIGN(16)
    {
        Last5Turns_TEXT_START = .;
        build/src/ovl_3F_Last5Turns/2592A0.c.o(.text);
        Last5Turns_TEXT_END = .;
        Last5Turns_TEXT_SIZE = ABSOLUTE(Last5Turns_TEXT_END - Last5Turns_TEXT_START);
        Last5Turns_DATA_START = .;
        ovl_3F_Last5Turns_259DD0_data__s = .;
        build/asm/data/ovl_3F_Last5Turns/259DD0.data.s.o(.data);
        Last5Turns_DATA_END = .;
        Last5Turns_DATA_SIZE = ABSOLUTE(Last5Turns_DATA_END - Last5Turns_DATA_START);
        Last5Turns_RODATA_START = .;
        build/asm/data/ovl_3F_Last5Turns/259E90.rodata.s.o(.rodata);
        Last5Turns_RODATA_END = .;
        Last5Turns_RODATA_SIZE = ABSOLUTE(Last5Turns_RODATA_END - Last5Turns_RODATA_START);
    }
    Last5Turns_bss_VRAM = ADDR(.Last5Turns_bss);
    .Last5Turns_bss (NOLOAD) : SUBALIGN(16)
    {
        Last5Turns_BSS_START = .;
        build/src/ovl_3F_Last5Turns/2592A0.c.o(.bss);
        Last5Turns_BSS_END = .;
        Last5Turns_BSS_SIZE = ABSOLUTE(Last5Turns_BSS_END - Last5Turns_BSS_START);
    }
    __romPos += SIZEOF(.Last5Turns);
    __romPos = ALIGN(__romPos, 16);
    Last5Turns_ROM_END = __romPos;
    Last5Turns_VRAM_END = .;

    ResultsScene_ROM_START = __romPos;
    ResultsScene_VRAM = ADDR(.ResultsScene);
    .ResultsScene 0x800F65E0 : AT(ResultsScene_ROM_START) SUBALIGN(16)
    {
        ResultsScene_TEXT_START = .;
        build/src/ovl_40_ResultsScene/259EB0.c.o(.text);
        ResultsScene_TEXT_END = .;
        ResultsScene_TEXT_SIZE = ABSOLUTE(ResultsScene_TEXT_END - ResultsScene_TEXT_START);
        ResultsScene_DATA_START = .;
        ovl_40_ResultsScene_259EB0_c = .;
        build/src/ovl_40_ResultsScene/259EB0.c.o(.data);
        ResultsScene_DATA_END = .;
        ResultsScene_DATA_SIZE = ABSOLUTE(ResultsScene_DATA_END - ResultsScene_DATA_START);
        ResultsScene_RODATA_START = .;
        build/src/ovl_40_ResultsScene/259EB0.c.o(.rodata);
        ResultsScene_RODATA_END = .;
        ResultsScene_RODATA_SIZE = ABSOLUTE(ResultsScene_RODATA_END - ResultsScene_RODATA_START);
    }
    ResultsScene_bss_VRAM = ADDR(.ResultsScene_bss);
    .ResultsScene_bss (NOLOAD) : SUBALIGN(16)
    {
        ResultsScene_BSS_START = .;
        build/src/ovl_40_ResultsScene/259EB0.c.o(.bss);
        ResultsScene_BSS_END = .;
        ResultsScene_BSS_SIZE = ABSOLUTE(ResultsScene_BSS_END - ResultsScene_BSS_START);
    }
    __romPos += SIZEOF(.ResultsScene);
    __romPos = ALIGN(__romPos, 16);
    ResultsScene_ROM_END = __romPos;
    ResultsScene_VRAM_END = .;

    _25F920_ROM_START = __romPos;
    _25F920_VRAM = ADDR(._25F920);
    ._25F920 : AT(_25F920_ROM_START) SUBALIGN(16)
    {
        _25F920_DATA_START = .;
        _25F920_bin = .;
        build/assets/25F920.bin.o(.data);
        _25F920_DATA_END = .;
        _25F920_DATA_SIZE = ABSOLUTE(_25F920_DATA_END - _25F920_DATA_START);
    }
    __romPos += SIZEOF(._25F920);
    _25F920_ROM_END = __romPos;
    _25F920_VRAM_END = .;

    YoshisTropicalIslandEndingScene_ROM_START = __romPos;
    YoshisTropicalIslandEndingScene_VRAM = ADDR(.YoshisTropicalIslandEndingScene);
    .YoshisTropicalIslandEndingScene 0x800F65E0 : AT(YoshisTropicalIslandEndingScene_ROM_START) SUBALIGN(16)
    {
        YoshisTropicalIslandEndingScene_TEXT_START = .;
        build/src/ovl_41_YoshisTropicalIslandEndingScene/25FC70.c.o(.text);
        build/src/ovl_41_YoshisTropicalIslandEndingScene/2603D0.c.o(.text);
        build/src/ovl_41_YoshisTropicalIslandEndingScene/262590.c.o(.text);
        build/src/ovl_41_YoshisTropicalIslandEndingScene/2643A0.c.o(.text);
        build/src/ovl_41_YoshisTropicalIslandEndingScene/266C80.c.o(.text);
        build/src/ovl_41_YoshisTropicalIslandEndingScene/26BA10.c.o(.text);
        build/src/ovl_41_YoshisTropicalIslandEndingScene/26E620.c.o(.text);
        build/src/ovl_41_YoshisTropicalIslandEndingScene/2721F0.c.o(.text);
        build/src/ovl_41_YoshisTropicalIslandEndingScene/275330.c.o(.text);
        YoshisTropicalIslandEndingScene_TEXT_END = .;
        YoshisTropicalIslandEndingScene_TEXT_SIZE = ABSOLUTE(YoshisTropicalIslandEndingScene_TEXT_END - YoshisTropicalIslandEndingScene_TEXT_START);
        YoshisTropicalIslandEndingScene_DATA_START = .;
        ovl_41_YoshisTropicalIslandEndingScene_25FC70_c = .;
        build/src/ovl_41_YoshisTropicalIslandEndingScene/25FC70.c.o(.data);
        ovl_41_YoshisTropicalIslandEndingScene_2603D0_c = .;
        build/src/ovl_41_YoshisTropicalIslandEndingScene/2603D0.c.o(.data);
        ovl_41_YoshisTropicalIslandEndingScene_262590_c = .;
        build/src/ovl_41_YoshisTropicalIslandEndingScene/262590.c.o(.data);
        ovl_41_YoshisTropicalIslandEndingScene_2643A0_c = .;
        build/src/ovl_41_YoshisTropicalIslandEndingScene/2643A0.c.o(.data);
        ovl_41_YoshisTropicalIslandEndingScene_266C80_c = .;
        build/src/ovl_41_YoshisTropicalIslandEndingScene/266C80.c.o(.data);
        ovl_41_YoshisTropicalIslandEndingScene_26BA10_c = .;
        build/src/ovl_41_YoshisTropicalIslandEndingScene/26BA10.c.o(.data);
        ovl_41_YoshisTropicalIslandEndingScene_26E620_c = .;
        build/src/ovl_41_YoshisTropicalIslandEndingScene/26E620.c.o(.data);
        ovl_41_YoshisTropicalIslandEndingScene_2721F0_c = .;
        build/src/ovl_41_YoshisTropicalIslandEndingScene/2721F0.c.o(.data);
        ovl_41_YoshisTropicalIslandEndingScene_275330_c = .;
        build/src/ovl_41_YoshisTropicalIslandEndingScene/275330.c.o(.data);
        YoshisTropicalIslandEndingScene_DATA_END = .;
        YoshisTropicalIslandEndingScene_DATA_SIZE = ABSOLUTE(YoshisTropicalIslandEndingScene_DATA_END - YoshisTropicalIslandEndingScene_DATA_START);
        YoshisTropicalIslandEndingScene_RODATA_START = .;
        build/src/ovl_41_YoshisTropicalIslandEndingScene/25FC70.c.o(.rodata);
        build/src/ovl_41_YoshisTropicalIslandEndingScene/2603D0.c.o(.rodata);
        build/src/ovl_41_YoshisTropicalIslandEndingScene/262590.c.o(.rodata);
        build/src/ovl_41_YoshisTropicalIslandEndingScene/2643A0.c.o(.rodata);
        build/src/ovl_41_YoshisTropicalIslandEndingScene/266C80.c.o(.rodata);
        build/src/ovl_41_YoshisTropicalIslandEndingScene/26BA10.c.o(.rodata);
        build/src/ovl_41_YoshisTropicalIslandEndingScene/26E620.c.o(.rodata);
        build/src/ovl_41_YoshisTropicalIslandEndingScene/2721F0.c.o(.rodata);
        build/src/ovl_41_YoshisTropicalIslandEndingScene/275330.c.o(.rodata);
        YoshisTropicalIslandEndingScene_RODATA_END = .;
        YoshisTropicalIslandEndingScene_RODATA_SIZE = ABSOLUTE(YoshisTropicalIslandEndingScene_RODATA_END - YoshisTropicalIslandEndingScene_RODATA_START);
    }
    YoshisTropicalIslandEndingScene_bss_VRAM = ADDR(.YoshisTropicalIslandEndingScene_bss);
    .YoshisTropicalIslandEndingScene_bss (NOLOAD) : SUBALIGN(16)
    {
        YoshisTropicalIslandEndingScene_BSS_START = .;
        build/src/ovl_41_YoshisTropicalIslandEndingScene/25FC70.c.o(.bss);
        build/src/ovl_41_YoshisTropicalIslandEndingScene/2603D0.c.o(.bss);
        build/src/ovl_41_YoshisTropicalIslandEndingScene/262590.c.o(.bss);
        build/src/ovl_41_YoshisTropicalIslandEndingScene/2643A0.c.o(.bss);
        build/src/ovl_41_YoshisTropicalIslandEndingScene/266C80.c.o(.bss);
        build/src/ovl_41_YoshisTropicalIslandEndingScene/26BA10.c.o(.bss);
        build/src/ovl_41_YoshisTropicalIslandEndingScene/26E620.c.o(.bss);
        build/src/ovl_41_YoshisTropicalIslandEndingScene/2721F0.c.o(.bss);
        build/src/ovl_41_YoshisTropicalIslandEndingScene/275330.c.o(.bss);
        YoshisTropicalIslandEndingScene_BSS_END = .;
        YoshisTropicalIslandEndingScene_BSS_SIZE = ABSOLUTE(YoshisTropicalIslandEndingScene_BSS_END - YoshisTropicalIslandEndingScene_BSS_START);
    }
    __romPos += SIZEOF(.YoshisTropicalIslandEndingScene);
    __romPos = ALIGN(__romPos, 16);
    YoshisTropicalIslandEndingScene_ROM_END = __romPos;
    YoshisTropicalIslandEndingScene_VRAM_END = .;

    _277320_ROM_START = __romPos;
    _277320_VRAM = ADDR(._277320);
    ._277320 : AT(_277320_ROM_START) SUBALIGN(16)
    {
        _277320_DATA_START = .;
        _277320_bin = .;
        build/assets/277320.bin.o(.data);
        _277320_DATA_END = .;
        _277320_DATA_SIZE = ABSOLUTE(_277320_DATA_END - _277320_DATA_START);
    }
    __romPos += SIZEOF(._277320);
    _277320_ROM_END = __romPos;
    _277320_VRAM_END = .;

    UnknownEndGameBonuses0_ROM_START = __romPos;
    UnknownEndGameBonuses0_VRAM = ADDR(.UnknownEndGameBonuses0);
    .UnknownEndGameBonuses0 0x800F65E0 : AT(UnknownEndGameBonuses0_ROM_START) SUBALIGN(16)
    {
        UnknownEndGameBonuses0_TEXT_START = .;
        build/src/ovl_42_UnknownEndGameBonuses0/278ED0.c.o(.text);
        UnknownEndGameBonuses0_TEXT_END = .;
        UnknownEndGameBonuses0_TEXT_SIZE = ABSOLUTE(UnknownEndGameBonuses0_TEXT_END - UnknownEndGameBonuses0_TEXT_START);
        UnknownEndGameBonuses0_DATA_START = .;
        ovl_42_UnknownEndGameBonuses0_278ED0_c = .;
        build/src/ovl_42_UnknownEndGameBonuses0/278ED0.c.o(.data);
        UnknownEndGameBonuses0_DATA_END = .;
        UnknownEndGameBonuses0_DATA_SIZE = ABSOLUTE(UnknownEndGameBonuses0_DATA_END - UnknownEndGameBonuses0_DATA_START);
        UnknownEndGameBonuses0_RODATA_START = .;
        build/src/ovl_42_UnknownEndGameBonuses0/278ED0.c.o(.rodata);
        UnknownEndGameBonuses0_RODATA_END = .;
        UnknownEndGameBonuses0_RODATA_SIZE = ABSOLUTE(UnknownEndGameBonuses0_RODATA_END - UnknownEndGameBonuses0_RODATA_START);
    }
    UnknownEndGameBonuses0_bss_VRAM = ADDR(.UnknownEndGameBonuses0_bss);
    .UnknownEndGameBonuses0_bss (NOLOAD) : SUBALIGN(16)
    {
        UnknownEndGameBonuses0_BSS_START = .;
        build/src/ovl_42_UnknownEndGameBonuses0/278ED0.c.o(.bss);
        UnknownEndGameBonuses0_BSS_END = .;
        UnknownEndGameBonuses0_BSS_SIZE = ABSOLUTE(UnknownEndGameBonuses0_BSS_END - UnknownEndGameBonuses0_BSS_START);
    }
    __romPos += SIZEOF(.UnknownEndGameBonuses0);
    __romPos = ALIGN(__romPos, 16);
    UnknownEndGameBonuses0_ROM_END = __romPos;
    UnknownEndGameBonuses0_VRAM_END = .;

    _27C7C0_ROM_START = __romPos;
    _27C7C0_VRAM = ADDR(._27C7C0);
    ._27C7C0 : AT(_27C7C0_ROM_START) SUBALIGN(16)
    {
        _27C7C0_DATA_START = .;
        _27C7C0_bin = .;
        build/assets/27C7C0.bin.o(.data);
        _27C7C0_DATA_END = .;
        _27C7C0_DATA_SIZE = ABSOLUTE(_27C7C0_DATA_END - _27C7C0_DATA_START);
    }
    __romPos += SIZEOF(._27C7C0);
    _27C7C0_ROM_END = __romPos;
    _27C7C0_VRAM_END = .;

    UnknownEndGameBonuses1_ROM_START = __romPos;
    UnknownEndGameBonuses1_VRAM = ADDR(.UnknownEndGameBonuses1);
    .UnknownEndGameBonuses1 0x800F65E0 : AT(UnknownEndGameBonuses1_ROM_START) SUBALIGN(16)
    {
        UnknownEndGameBonuses1_TEXT_START = .;
        build/src/ovl_43_UnknownEndGameBonuses1/27CB30.c.o(.text);
        UnknownEndGameBonuses1_TEXT_END = .;
        UnknownEndGameBonuses1_TEXT_SIZE = ABSOLUTE(UnknownEndGameBonuses1_TEXT_END - UnknownEndGameBonuses1_TEXT_START);
        UnknownEndGameBonuses1_DATA_START = .;
        ovl_43_UnknownEndGameBonuses1_27CB30_c = .;
        build/src/ovl_43_UnknownEndGameBonuses1/27CB30.c.o(.data);
        UnknownEndGameBonuses1_DATA_END = .;
        UnknownEndGameBonuses1_DATA_SIZE = ABSOLUTE(UnknownEndGameBonuses1_DATA_END - UnknownEndGameBonuses1_DATA_START);
        UnknownEndGameBonuses1_RODATA_START = .;
        build/src/ovl_43_UnknownEndGameBonuses1/27CB30.c.o(.rodata);
        UnknownEndGameBonuses1_RODATA_END = .;
        UnknownEndGameBonuses1_RODATA_SIZE = ABSOLUTE(UnknownEndGameBonuses1_RODATA_END - UnknownEndGameBonuses1_RODATA_START);
    }
    UnknownEndGameBonuses1_bss_VRAM = ADDR(.UnknownEndGameBonuses1_bss);
    .UnknownEndGameBonuses1_bss (NOLOAD) : SUBALIGN(16)
    {
        UnknownEndGameBonuses1_BSS_START = .;
        build/src/ovl_43_UnknownEndGameBonuses1/27CB30.c.o(.bss);
        UnknownEndGameBonuses1_BSS_END = .;
        UnknownEndGameBonuses1_BSS_SIZE = ABSOLUTE(UnknownEndGameBonuses1_BSS_END - UnknownEndGameBonuses1_BSS_START);
    }
    __romPos += SIZEOF(.UnknownEndGameBonuses1);
    __romPos = ALIGN(__romPos, 16);
    UnknownEndGameBonuses1_ROM_END = __romPos;
    UnknownEndGameBonuses1_VRAM_END = .;

    _2809F0_ROM_START = __romPos;
    _2809F0_VRAM = ADDR(._2809F0);
    ._2809F0 : AT(_2809F0_ROM_START) SUBALIGN(16)
    {
        _2809F0_DATA_START = .;
        _2809F0_bin = .;
        build/assets/2809F0.bin.o(.data);
        _2809F0_DATA_END = .;
        _2809F0_DATA_SIZE = ABSOLUTE(_2809F0_DATA_END - _2809F0_DATA_START);
    }
    __romPos += SIZEOF(._2809F0);
    _2809F0_ROM_END = __romPos;
    _2809F0_VRAM_END = .;

    UnknownStarPurchaseScene0_ROM_START = __romPos;
    UnknownStarPurchaseScene0_VRAM = ADDR(.UnknownStarPurchaseScene0);
    .UnknownStarPurchaseScene0 0x800F65E0 : AT(UnknownStarPurchaseScene0_ROM_START) SUBALIGN(16)
    {
        UnknownStarPurchaseScene0_TEXT_START = .;
        build/src/ovl_44_UnknownStarPurchaseScene0/280C80.c.o(.text);
        UnknownStarPurchaseScene0_TEXT_END = .;
        UnknownStarPurchaseScene0_TEXT_SIZE = ABSOLUTE(UnknownStarPurchaseScene0_TEXT_END - UnknownStarPurchaseScene0_TEXT_START);
        UnknownStarPurchaseScene0_DATA_START = .;
        ovl_44_UnknownStarPurchaseScene0_280C80_c = .;
        build/src/ovl_44_UnknownStarPurchaseScene0/280C80.c.o(.data);
        UnknownStarPurchaseScene0_DATA_END = .;
        UnknownStarPurchaseScene0_DATA_SIZE = ABSOLUTE(UnknownStarPurchaseScene0_DATA_END - UnknownStarPurchaseScene0_DATA_START);
        UnknownStarPurchaseScene0_RODATA_START = .;
        build/src/ovl_44_UnknownStarPurchaseScene0/280C80.c.o(.rodata);
        UnknownStarPurchaseScene0_RODATA_END = .;
        UnknownStarPurchaseScene0_RODATA_SIZE = ABSOLUTE(UnknownStarPurchaseScene0_RODATA_END - UnknownStarPurchaseScene0_RODATA_START);
    }
    UnknownStarPurchaseScene0_bss_VRAM = ADDR(.UnknownStarPurchaseScene0_bss);
    .UnknownStarPurchaseScene0_bss (NOLOAD) : SUBALIGN(16)
    {
        UnknownStarPurchaseScene0_BSS_START = .;
        build/src/ovl_44_UnknownStarPurchaseScene0/280C80.c.o(.bss);
        UnknownStarPurchaseScene0_BSS_END = .;
        UnknownStarPurchaseScene0_BSS_SIZE = ABSOLUTE(UnknownStarPurchaseScene0_BSS_END - UnknownStarPurchaseScene0_BSS_START);
    }
    __romPos += SIZEOF(.UnknownStarPurchaseScene0);
    __romPos = ALIGN(__romPos, 16);
    UnknownStarPurchaseScene0_ROM_END = __romPos;
    UnknownStarPurchaseScene0_VRAM_END = .;

    _281BA0_ROM_START = __romPos;
    _281BA0_VRAM = ADDR(._281BA0);
    ._281BA0 : AT(_281BA0_ROM_START) SUBALIGN(16)
    {
        _281BA0_DATA_START = .;
        _281BA0_bin = .;
        build/assets/281BA0.bin.o(.data);
        _281BA0_DATA_END = .;
        _281BA0_DATA_SIZE = ABSOLUTE(_281BA0_DATA_END - _281BA0_DATA_START);
    }
    __romPos += SIZEOF(._281BA0);
    _281BA0_ROM_END = __romPos;
    _281BA0_VRAM_END = .;

    UnknownBowserScene0_ROM_START = __romPos;
    UnknownBowserScene0_VRAM = ADDR(.UnknownBowserScene0);
    .UnknownBowserScene0 0x800F65E0 : AT(UnknownBowserScene0_ROM_START) SUBALIGN(16)
    {
        UnknownBowserScene0_TEXT_START = .;
        build/src/ovl_45_UnknownBowserScene0/281D40.c.o(.text);
        UnknownBowserScene0_TEXT_END = .;
        UnknownBowserScene0_TEXT_SIZE = ABSOLUTE(UnknownBowserScene0_TEXT_END - UnknownBowserScene0_TEXT_START);
        UnknownBowserScene0_DATA_START = .;
        ovl_45_UnknownBowserScene0_281D40_c = .;
        build/src/ovl_45_UnknownBowserScene0/281D40.c.o(.data);
        UnknownBowserScene0_DATA_END = .;
        UnknownBowserScene0_DATA_SIZE = ABSOLUTE(UnknownBowserScene0_DATA_END - UnknownBowserScene0_DATA_START);
        UnknownBowserScene0_RODATA_START = .;
        build/src/ovl_45_UnknownBowserScene0/281D40.c.o(.rodata);
        UnknownBowserScene0_RODATA_END = .;
        UnknownBowserScene0_RODATA_SIZE = ABSOLUTE(UnknownBowserScene0_RODATA_END - UnknownBowserScene0_RODATA_START);
    }
    UnknownBowserScene0_bss_VRAM = ADDR(.UnknownBowserScene0_bss);
    .UnknownBowserScene0_bss (NOLOAD) : SUBALIGN(16)
    {
        UnknownBowserScene0_BSS_START = .;
        build/src/ovl_45_UnknownBowserScene0/281D40.c.o(.bss);
        UnknownBowserScene0_BSS_END = .;
        UnknownBowserScene0_BSS_SIZE = ABSOLUTE(UnknownBowserScene0_BSS_END - UnknownBowserScene0_BSS_START);
    }
    __romPos += SIZEOF(.UnknownBowserScene0);
    __romPos = ALIGN(__romPos, 16);
    UnknownBowserScene0_ROM_END = __romPos;
    UnknownBowserScene0_VRAM_END = .;

    _2826F0_ROM_START = __romPos;
    _2826F0_VRAM = ADDR(._2826F0);
    ._2826F0 : AT(_2826F0_ROM_START) SUBALIGN(16)
    {
        _2826F0_DATA_START = .;
        _2826F0_bin = .;
        build/assets/2826F0.bin.o(.data);
        _2826F0_DATA_END = .;
        _2826F0_DATA_SIZE = ABSOLUTE(_2826F0_DATA_END - _2826F0_DATA_START);
    }
    __romPos += SIZEOF(._2826F0);
    _2826F0_ROM_END = __romPos;
    _2826F0_VRAM_END = .;

    BowserSpaceEvent_ROM_START = __romPos;
    BowserSpaceEvent_VRAM = ADDR(.BowserSpaceEvent);
    .BowserSpaceEvent 0x800F65E0 : AT(BowserSpaceEvent_ROM_START) SUBALIGN(16)
    {
        BowserSpaceEvent_TEXT_START = .;
        build/src/ovl_46_BowserSpaceEvent/282820.c.o(.text);
        BowserSpaceEvent_TEXT_END = .;
        BowserSpaceEvent_TEXT_SIZE = ABSOLUTE(BowserSpaceEvent_TEXT_END - BowserSpaceEvent_TEXT_START);
        BowserSpaceEvent_DATA_START = .;
        ovl_46_BowserSpaceEvent_282820_c = .;
        build/src/ovl_46_BowserSpaceEvent/282820.c.o(.data);
        BowserSpaceEvent_DATA_END = .;
        BowserSpaceEvent_DATA_SIZE = ABSOLUTE(BowserSpaceEvent_DATA_END - BowserSpaceEvent_DATA_START);
        BowserSpaceEvent_RODATA_START = .;
        build/src/ovl_46_BowserSpaceEvent/282820.c.o(.rodata);
        BowserSpaceEvent_RODATA_END = .;
        BowserSpaceEvent_RODATA_SIZE = ABSOLUTE(BowserSpaceEvent_RODATA_END - BowserSpaceEvent_RODATA_START);
    }
    BowserSpaceEvent_bss_VRAM = ADDR(.BowserSpaceEvent_bss);
    .BowserSpaceEvent_bss (NOLOAD) : SUBALIGN(16)
    {
        BowserSpaceEvent_BSS_START = .;
        build/src/ovl_46_BowserSpaceEvent/282820.c.o(.bss);
        BowserSpaceEvent_BSS_END = .;
        BowserSpaceEvent_BSS_SIZE = ABSOLUTE(BowserSpaceEvent_BSS_END - BowserSpaceEvent_BSS_START);
    }
    __romPos += SIZEOF(.BowserSpaceEvent);
    __romPos = ALIGN(__romPos, 16);
    BowserSpaceEvent_ROM_END = __romPos;
    BowserSpaceEvent_VRAM_END = .;

    name_47_ROM_START = __romPos;
    name_47_VRAM = ADDR(.name_47);
    .name_47 0x800F65E0 : AT(name_47_ROM_START) SUBALIGN(16)
    {
        name_47_TEXT_START = .;
        build/src/ovl_47/285230.c.o(.text);
        name_47_TEXT_END = .;
        name_47_TEXT_SIZE = ABSOLUTE(name_47_TEXT_END - name_47_TEXT_START);
        name_47_DATA_START = .;
        ovl_47_285230_c = .;
        build/src/ovl_47/285230.c.o(.data);
        name_47_DATA_END = .;
        name_47_DATA_SIZE = ABSOLUTE(name_47_DATA_END - name_47_DATA_START);
        name_47_RODATA_START = .;
        build/src/ovl_47/285230.c.o(.rodata);
        name_47_RODATA_END = .;
        name_47_RODATA_SIZE = ABSOLUTE(name_47_RODATA_END - name_47_RODATA_START);
    }
    name_47_bss_VRAM = ADDR(.name_47_bss);
    .name_47_bss (NOLOAD) : SUBALIGN(16)
    {
        name_47_BSS_START = .;
        build/src/ovl_47/285230.c.o(.bss);
        name_47_BSS_END = .;
        name_47_BSS_SIZE = ABSOLUTE(name_47_BSS_END - name_47_BSS_START);
    }
    __romPos += SIZEOF(.name_47);
    __romPos = ALIGN(__romPos, 16);
    name_47_ROM_END = __romPos;
    name_47_VRAM_END = .;

    _285B30_ROM_START = __romPos;
    _285B30_VRAM = ADDR(._285B30);
    ._285B30 : AT(_285B30_ROM_START) SUBALIGN(16)
    {
        _285B30_DATA_START = .;
        _285B30_bin = .;
        build/assets/285B30.bin.o(.data);
        _285B30_DATA_END = .;
        _285B30_DATA_SIZE = ABSOLUTE(_285B30_DATA_END - _285B30_DATA_START);
    }
    __romPos += SIZEOF(._285B30);
    _285B30_ROM_END = __romPos;
    _285B30_VRAM_END = .;

    BowserVisitDKBoard_ROM_START = __romPos;
    BowserVisitDKBoard_VRAM = ADDR(.BowserVisitDKBoard);
    .BowserVisitDKBoard 0x800F65E0 : AT(BowserVisitDKBoard_ROM_START) SUBALIGN(16)
    {
        BowserVisitDKBoard_TEXT_START = .;
        build/src/ovl_48_BowserVisitDKBoard/285B70.c.o(.text);
        BowserVisitDKBoard_TEXT_END = .;
        BowserVisitDKBoard_TEXT_SIZE = ABSOLUTE(BowserVisitDKBoard_TEXT_END - BowserVisitDKBoard_TEXT_START);
        BowserVisitDKBoard_DATA_START = .;
        ovl_48_BowserVisitDKBoard_285B70_c = .;
        build/src/ovl_48_BowserVisitDKBoard/285B70.c.o(.data);
        BowserVisitDKBoard_DATA_END = .;
        BowserVisitDKBoard_DATA_SIZE = ABSOLUTE(BowserVisitDKBoard_DATA_END - BowserVisitDKBoard_DATA_START);
        BowserVisitDKBoard_RODATA_START = .;
        build/src/ovl_48_BowserVisitDKBoard/285B70.c.o(.rodata);
        BowserVisitDKBoard_RODATA_END = .;
        BowserVisitDKBoard_RODATA_SIZE = ABSOLUTE(BowserVisitDKBoard_RODATA_END - BowserVisitDKBoard_RODATA_START);
    }
    BowserVisitDKBoard_bss_VRAM = ADDR(.BowserVisitDKBoard_bss);
    .BowserVisitDKBoard_bss (NOLOAD) : SUBALIGN(16)
    {
        BowserVisitDKBoard_BSS_START = .;
        build/src/ovl_48_BowserVisitDKBoard/285B70.c.o(.bss);
        BowserVisitDKBoard_BSS_END = .;
        BowserVisitDKBoard_BSS_SIZE = ABSOLUTE(BowserVisitDKBoard_BSS_END - BowserVisitDKBoard_BSS_START);
    }
    __romPos += SIZEOF(.BowserVisitDKBoard);
    __romPos = ALIGN(__romPos, 16);
    BowserVisitDKBoard_ROM_END = __romPos;
    BowserVisitDKBoard_VRAM_END = .;

    BowserVisitPeachBoard_ROM_START = __romPos;
    BowserVisitPeachBoard_VRAM = ADDR(.BowserVisitPeachBoard);
    .BowserVisitPeachBoard 0x800F65E0 : AT(BowserVisitPeachBoard_ROM_START) SUBALIGN(16)
    {
        BowserVisitPeachBoard_TEXT_START = .;
        build/src/ovl_49_BowserVisitPeachBoard/286700.c.o(.text);
        BowserVisitPeachBoard_TEXT_END = .;
        BowserVisitPeachBoard_TEXT_SIZE = ABSOLUTE(BowserVisitPeachBoard_TEXT_END - BowserVisitPeachBoard_TEXT_START);
        BowserVisitPeachBoard_DATA_START = .;
        ovl_49_BowserVisitPeachBoard_286700_c = .;
        build/src/ovl_49_BowserVisitPeachBoard/286700.c.o(.data);
        BowserVisitPeachBoard_DATA_END = .;
        BowserVisitPeachBoard_DATA_SIZE = ABSOLUTE(BowserVisitPeachBoard_DATA_END - BowserVisitPeachBoard_DATA_START);
        BowserVisitPeachBoard_RODATA_START = .;
        build/src/ovl_49_BowserVisitPeachBoard/286700.c.o(.rodata);
        BowserVisitPeachBoard_RODATA_END = .;
        BowserVisitPeachBoard_RODATA_SIZE = ABSOLUTE(BowserVisitPeachBoard_RODATA_END - BowserVisitPeachBoard_RODATA_START);
    }
    BowserVisitPeachBoard_bss_VRAM = ADDR(.BowserVisitPeachBoard_bss);
    .BowserVisitPeachBoard_bss (NOLOAD) : SUBALIGN(16)
    {
        BowserVisitPeachBoard_BSS_START = .;
        build/src/ovl_49_BowserVisitPeachBoard/286700.c.o(.bss);
        BowserVisitPeachBoard_BSS_END = .;
        BowserVisitPeachBoard_BSS_SIZE = ABSOLUTE(BowserVisitPeachBoard_BSS_END - BowserVisitPeachBoard_BSS_START);
    }
    __romPos += SIZEOF(.BowserVisitPeachBoard);
    __romPos = ALIGN(__romPos, 16);
    BowserVisitPeachBoard_ROM_END = __romPos;
    BowserVisitPeachBoard_VRAM_END = .;

    GoombaCoinStealPeachBoard_ROM_START = __romPos;
    GoombaCoinStealPeachBoard_VRAM = ADDR(.GoombaCoinStealPeachBoard);
    .GoombaCoinStealPeachBoard 0x800F65E0 : AT(GoombaCoinStealPeachBoard_ROM_START) SUBALIGN(16)
    {
        GoombaCoinStealPeachBoard_TEXT_START = .;
        build/src/ovl_4A_GoombaCoinStealPeachBoard/2872A0.c.o(.text);
        GoombaCoinStealPeachBoard_TEXT_END = .;
        GoombaCoinStealPeachBoard_TEXT_SIZE = ABSOLUTE(GoombaCoinStealPeachBoard_TEXT_END - GoombaCoinStealPeachBoard_TEXT_START);
        GoombaCoinStealPeachBoard_DATA_START = .;
        ovl_4A_GoombaCoinStealPeachBoard_2872A0_c = .;
        build/src/ovl_4A_GoombaCoinStealPeachBoard/2872A0.c.o(.data);
        GoombaCoinStealPeachBoard_DATA_END = .;
        GoombaCoinStealPeachBoard_DATA_SIZE = ABSOLUTE(GoombaCoinStealPeachBoard_DATA_END - GoombaCoinStealPeachBoard_DATA_START);
        GoombaCoinStealPeachBoard_RODATA_START = .;
        build/src/ovl_4A_GoombaCoinStealPeachBoard/2872A0.c.o(.rodata);
        GoombaCoinStealPeachBoard_RODATA_END = .;
        GoombaCoinStealPeachBoard_RODATA_SIZE = ABSOLUTE(GoombaCoinStealPeachBoard_RODATA_END - GoombaCoinStealPeachBoard_RODATA_START);
    }
    GoombaCoinStealPeachBoard_bss_VRAM = ADDR(.GoombaCoinStealPeachBoard_bss);
    .GoombaCoinStealPeachBoard_bss (NOLOAD) : SUBALIGN(16)
    {
        GoombaCoinStealPeachBoard_BSS_START = .;
        build/src/ovl_4A_GoombaCoinStealPeachBoard/2872A0.c.o(.bss);
        GoombaCoinStealPeachBoard_BSS_END = .;
        GoombaCoinStealPeachBoard_BSS_SIZE = ABSOLUTE(GoombaCoinStealPeachBoard_BSS_END - GoombaCoinStealPeachBoard_BSS_START);
    }
    __romPos += SIZEOF(.GoombaCoinStealPeachBoard);
    __romPos = ALIGN(__romPos, 16);
    GoombaCoinStealPeachBoard_ROM_END = __romPos;
    GoombaCoinStealPeachBoard_VRAM_END = .;

    _2887A0_ROM_START = __romPos;
    _2887A0_VRAM = ADDR(._2887A0);
    ._2887A0 : AT(_2887A0_ROM_START) SUBALIGN(16)
    {
        _2887A0_DATA_START = .;
        _2887A0_bin = .;
        build/assets/2887A0.bin.o(.data);
        _2887A0_DATA_END = .;
        _2887A0_DATA_SIZE = ABSOLUTE(_2887A0_DATA_END - _2887A0_DATA_START);
    }
    __romPos += SIZEOF(._2887A0);
    _2887A0_ROM_END = __romPos;
    _2887A0_VRAM_END = .;

    FlowerLotteryPeachBoard_ROM_START = __romPos;
    FlowerLotteryPeachBoard_VRAM = ADDR(.FlowerLotteryPeachBoard);
    .FlowerLotteryPeachBoard 0x800F65E0 : AT(FlowerLotteryPeachBoard_ROM_START) SUBALIGN(16)
    {
        FlowerLotteryPeachBoard_TEXT_START = .;
        build/src/ovl_4B_FlowerLotteryPeachBoard/2888A0.c.o(.text);
        FlowerLotteryPeachBoard_TEXT_END = .;
        FlowerLotteryPeachBoard_TEXT_SIZE = ABSOLUTE(FlowerLotteryPeachBoard_TEXT_END - FlowerLotteryPeachBoard_TEXT_START);
        FlowerLotteryPeachBoard_DATA_START = .;
        ovl_4B_FlowerLotteryPeachBoard_2888A0_c = .;
        build/src/ovl_4B_FlowerLotteryPeachBoard/2888A0.c.o(.data);
        FlowerLotteryPeachBoard_DATA_END = .;
        FlowerLotteryPeachBoard_DATA_SIZE = ABSOLUTE(FlowerLotteryPeachBoard_DATA_END - FlowerLotteryPeachBoard_DATA_START);
        FlowerLotteryPeachBoard_RODATA_START = .;
        build/src/ovl_4B_FlowerLotteryPeachBoard/2888A0.c.o(.rodata);
        FlowerLotteryPeachBoard_RODATA_END = .;
        FlowerLotteryPeachBoard_RODATA_SIZE = ABSOLUTE(FlowerLotteryPeachBoard_RODATA_END - FlowerLotteryPeachBoard_RODATA_START);
    }
    FlowerLotteryPeachBoard_bss_VRAM = ADDR(.FlowerLotteryPeachBoard_bss);
    .FlowerLotteryPeachBoard_bss (NOLOAD) : SUBALIGN(16)
    {
        FlowerLotteryPeachBoard_BSS_START = .;
        build/src/ovl_4B_FlowerLotteryPeachBoard/2888A0.c.o(.bss);
        FlowerLotteryPeachBoard_BSS_END = .;
        FlowerLotteryPeachBoard_BSS_SIZE = ABSOLUTE(FlowerLotteryPeachBoard_BSS_END - FlowerLotteryPeachBoard_BSS_START);
    }
    __romPos += SIZEOF(.FlowerLotteryPeachBoard);
    __romPos = ALIGN(__romPos, 16);
    FlowerLotteryPeachBoard_ROM_END = __romPos;
    FlowerLotteryPeachBoard_VRAM_END = .;

    _289A80_ROM_START = __romPos;
    _289A80_VRAM = ADDR(._289A80);
    ._289A80 : AT(_289A80_ROM_START) SUBALIGN(16)
    {
        _289A80_DATA_START = .;
        _289A80_bin = .;
        build/assets/289A80.bin.o(.data);
        _289A80_DATA_END = .;
        _289A80_DATA_SIZE = ABSOLUTE(_289A80_DATA_END - _289A80_DATA_START);
    }
    __romPos += SIZEOF(._289A80);
    _289A80_ROM_END = __romPos;
    _289A80_VRAM_END = .;

    PiranhaPlantStarStealPeachBoard_ROM_START = __romPos;
    PiranhaPlantStarStealPeachBoard_VRAM = ADDR(.PiranhaPlantStarStealPeachBoard);
    .PiranhaPlantStarStealPeachBoard 0x800F65E0 : AT(PiranhaPlantStarStealPeachBoard_ROM_START) SUBALIGN(16)
    {
        PiranhaPlantStarStealPeachBoard_TEXT_START = .;
        build/src/ovl_4C_PiranhaPlantStarStealPeachBoard/289BA0.c.o(.text);
        PiranhaPlantStarStealPeachBoard_TEXT_END = .;
        PiranhaPlantStarStealPeachBoard_TEXT_SIZE = ABSOLUTE(PiranhaPlantStarStealPeachBoard_TEXT_END - PiranhaPlantStarStealPeachBoard_TEXT_START);
        PiranhaPlantStarStealPeachBoard_DATA_START = .;
        ovl_4C_PiranhaPlantStarStealPeachBoard_289BA0_c = .;
        build/src/ovl_4C_PiranhaPlantStarStealPeachBoard/289BA0.c.o(.data);
        PiranhaPlantStarStealPeachBoard_DATA_END = .;
        PiranhaPlantStarStealPeachBoard_DATA_SIZE = ABSOLUTE(PiranhaPlantStarStealPeachBoard_DATA_END - PiranhaPlantStarStealPeachBoard_DATA_START);
        PiranhaPlantStarStealPeachBoard_RODATA_START = .;
        build/src/ovl_4C_PiranhaPlantStarStealPeachBoard/289BA0.c.o(.rodata);
        PiranhaPlantStarStealPeachBoard_RODATA_END = .;
        PiranhaPlantStarStealPeachBoard_RODATA_SIZE = ABSOLUTE(PiranhaPlantStarStealPeachBoard_RODATA_END - PiranhaPlantStarStealPeachBoard_RODATA_START);
    }
    PiranhaPlantStarStealPeachBoard_bss_VRAM = ADDR(.PiranhaPlantStarStealPeachBoard_bss);
    .PiranhaPlantStarStealPeachBoard_bss (NOLOAD) : SUBALIGN(16)
    {
        PiranhaPlantStarStealPeachBoard_BSS_START = .;
        build/src/ovl_4C_PiranhaPlantStarStealPeachBoard/289BA0.c.o(.bss);
        PiranhaPlantStarStealPeachBoard_BSS_END = .;
        PiranhaPlantStarStealPeachBoard_BSS_SIZE = ABSOLUTE(PiranhaPlantStarStealPeachBoard_BSS_END - PiranhaPlantStarStealPeachBoard_BSS_START);
    }
    __romPos += SIZEOF(.PiranhaPlantStarStealPeachBoard);
    __romPos = ALIGN(__romPos, 16);
    PiranhaPlantStarStealPeachBoard_ROM_END = __romPos;
    PiranhaPlantStarStealPeachBoard_VRAM_END = .;

    ThowmpTollYoshiBoard_ROM_START = __romPos;
    ThowmpTollYoshiBoard_VRAM = ADDR(.ThowmpTollYoshiBoard);
    .ThowmpTollYoshiBoard 0x800F65E0 : AT(ThowmpTollYoshiBoard_ROM_START) SUBALIGN(16)
    {
        ThowmpTollYoshiBoard_TEXT_START = .;
        build/src/ovl_4D_ThowmpTollYoshiBoard/28ABA0.c.o(.text);
        ThowmpTollYoshiBoard_TEXT_END = .;
        ThowmpTollYoshiBoard_TEXT_SIZE = ABSOLUTE(ThowmpTollYoshiBoard_TEXT_END - ThowmpTollYoshiBoard_TEXT_START);
        ThowmpTollYoshiBoard_DATA_START = .;
        ovl_4D_ThowmpTollYoshiBoard_28ABA0_c = .;
        build/src/ovl_4D_ThowmpTollYoshiBoard/28ABA0.c.o(.data);
        ThowmpTollYoshiBoard_DATA_END = .;
        ThowmpTollYoshiBoard_DATA_SIZE = ABSOLUTE(ThowmpTollYoshiBoard_DATA_END - ThowmpTollYoshiBoard_DATA_START);
        ThowmpTollYoshiBoard_RODATA_START = .;
        build/src/ovl_4D_ThowmpTollYoshiBoard/28ABA0.c.o(.rodata);
        ThowmpTollYoshiBoard_RODATA_END = .;
        ThowmpTollYoshiBoard_RODATA_SIZE = ABSOLUTE(ThowmpTollYoshiBoard_RODATA_END - ThowmpTollYoshiBoard_RODATA_START);
    }
    ThowmpTollYoshiBoard_bss_VRAM = ADDR(.ThowmpTollYoshiBoard_bss);
    .ThowmpTollYoshiBoard_bss (NOLOAD) : SUBALIGN(16)
    {
        ThowmpTollYoshiBoard_BSS_START = .;
        build/src/ovl_4D_ThowmpTollYoshiBoard/28ABA0.c.o(.bss);
        ThowmpTollYoshiBoard_BSS_END = .;
        ThowmpTollYoshiBoard_BSS_SIZE = ABSOLUTE(ThowmpTollYoshiBoard_BSS_END - ThowmpTollYoshiBoard_BSS_START);
    }
    __romPos += SIZEOF(.ThowmpTollYoshiBoard);
    __romPos = ALIGN(__romPos, 16);
    ThowmpTollYoshiBoard_ROM_END = __romPos;
    ThowmpTollYoshiBoard_VRAM_END = .;

    _28BBE0_ROM_START = __romPos;
    _28BBE0_VRAM = ADDR(._28BBE0);
    ._28BBE0 : AT(_28BBE0_ROM_START) SUBALIGN(16)
    {
        _28BBE0_DATA_START = .;
        _28BBE0_bin = .;
        build/assets/28BBE0.bin.o(.data);
        _28BBE0_DATA_END = .;
        _28BBE0_DATA_SIZE = ABSOLUTE(_28BBE0_DATA_END - _28BBE0_DATA_START);
    }
    __romPos += SIZEOF(._28BBE0);
    _28BBE0_ROM_END = __romPos;
    _28BBE0_VRAM_END = .;

    BowserToadSwapPlacesYoshiBoard_ROM_START = __romPos;
    BowserToadSwapPlacesYoshiBoard_VRAM = ADDR(.BowserToadSwapPlacesYoshiBoard);
    .BowserToadSwapPlacesYoshiBoard 0x800F65E0 : AT(BowserToadSwapPlacesYoshiBoard_ROM_START) SUBALIGN(16)
    {
        BowserToadSwapPlacesYoshiBoard_TEXT_START = .;
        build/src/ovl_4E_BowserToadSwapPlacesYoshiBoard/28BC70.c.o(.text);
        BowserToadSwapPlacesYoshiBoard_TEXT_END = .;
        BowserToadSwapPlacesYoshiBoard_TEXT_SIZE = ABSOLUTE(BowserToadSwapPlacesYoshiBoard_TEXT_END - BowserToadSwapPlacesYoshiBoard_TEXT_START);
        BowserToadSwapPlacesYoshiBoard_DATA_START = .;
        ovl_4E_BowserToadSwapPlacesYoshiBoard_28BC70_c = .;
        build/src/ovl_4E_BowserToadSwapPlacesYoshiBoard/28BC70.c.o(.data);
        BowserToadSwapPlacesYoshiBoard_DATA_END = .;
        BowserToadSwapPlacesYoshiBoard_DATA_SIZE = ABSOLUTE(BowserToadSwapPlacesYoshiBoard_DATA_END - BowserToadSwapPlacesYoshiBoard_DATA_START);
        BowserToadSwapPlacesYoshiBoard_RODATA_START = .;
        build/src/ovl_4E_BowserToadSwapPlacesYoshiBoard/28BC70.c.o(.rodata);
        BowserToadSwapPlacesYoshiBoard_RODATA_END = .;
        BowserToadSwapPlacesYoshiBoard_RODATA_SIZE = ABSOLUTE(BowserToadSwapPlacesYoshiBoard_RODATA_END - BowserToadSwapPlacesYoshiBoard_RODATA_START);
    }
    BowserToadSwapPlacesYoshiBoard_bss_VRAM = ADDR(.BowserToadSwapPlacesYoshiBoard_bss);
    .BowserToadSwapPlacesYoshiBoard_bss (NOLOAD) : SUBALIGN(16)
    {
        BowserToadSwapPlacesYoshiBoard_BSS_START = .;
        build/src/ovl_4E_BowserToadSwapPlacesYoshiBoard/28BC70.c.o(.bss);
        BowserToadSwapPlacesYoshiBoard_BSS_END = .;
        BowserToadSwapPlacesYoshiBoard_BSS_SIZE = ABSOLUTE(BowserToadSwapPlacesYoshiBoard_BSS_END - BowserToadSwapPlacesYoshiBoard_BSS_START);
    }
    __romPos += SIZEOF(.BowserToadSwapPlacesYoshiBoard);
    __romPos = ALIGN(__romPos, 16);
    BowserToadSwapPlacesYoshiBoard_ROM_END = __romPos;
    BowserToadSwapPlacesYoshiBoard_VRAM_END = .;

    BowserVisitYoshiBoard_ROM_START = __romPos;
    BowserVisitYoshiBoard_VRAM = ADDR(.BowserVisitYoshiBoard);
    .BowserVisitYoshiBoard 0x800F65E0 : AT(BowserVisitYoshiBoard_ROM_START) SUBALIGN(16)
    {
        BowserVisitYoshiBoard_TEXT_START = .;
        build/src/ovl_4F_BowserVisitYoshiBoard/28CFF0.c.o(.text);
        BowserVisitYoshiBoard_TEXT_END = .;
        BowserVisitYoshiBoard_TEXT_SIZE = ABSOLUTE(BowserVisitYoshiBoard_TEXT_END - BowserVisitYoshiBoard_TEXT_START);
        BowserVisitYoshiBoard_DATA_START = .;
        ovl_4F_BowserVisitYoshiBoard_28CFF0_c = .;
        build/src/ovl_4F_BowserVisitYoshiBoard/28CFF0.c.o(.data);
        BowserVisitYoshiBoard_DATA_END = .;
        BowserVisitYoshiBoard_DATA_SIZE = ABSOLUTE(BowserVisitYoshiBoard_DATA_END - BowserVisitYoshiBoard_DATA_START);
        BowserVisitYoshiBoard_RODATA_START = .;
        build/src/ovl_4F_BowserVisitYoshiBoard/28CFF0.c.o(.rodata);
        BowserVisitYoshiBoard_RODATA_END = .;
        BowserVisitYoshiBoard_RODATA_SIZE = ABSOLUTE(BowserVisitYoshiBoard_RODATA_END - BowserVisitYoshiBoard_RODATA_START);
    }
    BowserVisitYoshiBoard_bss_VRAM = ADDR(.BowserVisitYoshiBoard_bss);
    .BowserVisitYoshiBoard_bss (NOLOAD) : SUBALIGN(16)
    {
        BowserVisitYoshiBoard_BSS_START = .;
        build/src/ovl_4F_BowserVisitYoshiBoard/28CFF0.c.o(.bss);
        BowserVisitYoshiBoard_BSS_END = .;
        BowserVisitYoshiBoard_BSS_SIZE = ABSOLUTE(BowserVisitYoshiBoard_BSS_END - BowserVisitYoshiBoard_BSS_START);
    }
    __romPos += SIZEOF(.BowserVisitYoshiBoard);
    __romPos = ALIGN(__romPos, 16);
    BowserVisitYoshiBoard_ROM_END = __romPos;
    BowserVisitYoshiBoard_VRAM_END = .;

    _28DF40_ROM_START = __romPos;
    _28DF40_VRAM = ADDR(._28DF40);
    ._28DF40 : AT(_28DF40_ROM_START) SUBALIGN(16)
    {
        _28DF40_DATA_START = .;
        _28DF40_bin = .;
        build/assets/28DF40.bin.o(.data);
        _28DF40_DATA_END = .;
        _28DF40_DATA_SIZE = ABSOLUTE(_28DF40_DATA_END - _28DF40_DATA_START);
    }
    __romPos += SIZEOF(._28DF40);
    _28DF40_ROM_END = __romPos;
    _28DF40_VRAM_END = .;

    LoadCannonWarioBoard_ROM_START = __romPos;
    LoadCannonWarioBoard_VRAM = ADDR(.LoadCannonWarioBoard);
    .LoadCannonWarioBoard 0x800F65E0 : AT(LoadCannonWarioBoard_ROM_START) SUBALIGN(16)
    {
        LoadCannonWarioBoard_TEXT_START = .;
        build/src/ovl_50_LoadCannonWarioBoard/28E030.c.o(.text);
        LoadCannonWarioBoard_TEXT_END = .;
        LoadCannonWarioBoard_TEXT_SIZE = ABSOLUTE(LoadCannonWarioBoard_TEXT_END - LoadCannonWarioBoard_TEXT_START);
        LoadCannonWarioBoard_DATA_START = .;
        ovl_50_LoadCannonWarioBoard_28E030_c = .;
        build/src/ovl_50_LoadCannonWarioBoard/28E030.c.o(.data);
        LoadCannonWarioBoard_DATA_END = .;
        LoadCannonWarioBoard_DATA_SIZE = ABSOLUTE(LoadCannonWarioBoard_DATA_END - LoadCannonWarioBoard_DATA_START);
        LoadCannonWarioBoard_RODATA_START = .;
        build/src/ovl_50_LoadCannonWarioBoard/28E030.c.o(.rodata);
        LoadCannonWarioBoard_RODATA_END = .;
        LoadCannonWarioBoard_RODATA_SIZE = ABSOLUTE(LoadCannonWarioBoard_RODATA_END - LoadCannonWarioBoard_RODATA_START);
    }
    LoadCannonWarioBoard_bss_VRAM = ADDR(.LoadCannonWarioBoard_bss);
    .LoadCannonWarioBoard_bss (NOLOAD) : SUBALIGN(16)
    {
        LoadCannonWarioBoard_BSS_START = .;
        build/src/ovl_50_LoadCannonWarioBoard/28E030.c.o(.bss);
        LoadCannonWarioBoard_BSS_END = .;
        LoadCannonWarioBoard_BSS_SIZE = ABSOLUTE(LoadCannonWarioBoard_BSS_END - LoadCannonWarioBoard_BSS_START);
    }
    __romPos += SIZEOF(.LoadCannonWarioBoard);
    __romPos = ALIGN(__romPos, 16);
    LoadCannonWarioBoard_ROM_END = __romPos;
    LoadCannonWarioBoard_VRAM_END = .;

    ChangeCannonTargetWarioBoard_ROM_START = __romPos;
    ChangeCannonTargetWarioBoard_VRAM = ADDR(.ChangeCannonTargetWarioBoard);
    .ChangeCannonTargetWarioBoard 0x800F65E0 : AT(ChangeCannonTargetWarioBoard_ROM_START) SUBALIGN(16)
    {
        ChangeCannonTargetWarioBoard_TEXT_START = .;
        build/src/ovl_51_ChangeCannonTargetWarioBoard/28E630.c.o(.text);
        ChangeCannonTargetWarioBoard_TEXT_END = .;
        ChangeCannonTargetWarioBoard_TEXT_SIZE = ABSOLUTE(ChangeCannonTargetWarioBoard_TEXT_END - ChangeCannonTargetWarioBoard_TEXT_START);
        ChangeCannonTargetWarioBoard_DATA_START = .;
        ovl_51_ChangeCannonTargetWarioBoard_28E630_c = .;
        build/src/ovl_51_ChangeCannonTargetWarioBoard/28E630.c.o(.data);
        ChangeCannonTargetWarioBoard_DATA_END = .;
        ChangeCannonTargetWarioBoard_DATA_SIZE = ABSOLUTE(ChangeCannonTargetWarioBoard_DATA_END - ChangeCannonTargetWarioBoard_DATA_START);
        ChangeCannonTargetWarioBoard_RODATA_START = .;
        build/src/ovl_51_ChangeCannonTargetWarioBoard/28E630.c.o(.rodata);
        ChangeCannonTargetWarioBoard_RODATA_END = .;
        ChangeCannonTargetWarioBoard_RODATA_SIZE = ABSOLUTE(ChangeCannonTargetWarioBoard_RODATA_END - ChangeCannonTargetWarioBoard_RODATA_START);
    }
    ChangeCannonTargetWarioBoard_bss_VRAM = ADDR(.ChangeCannonTargetWarioBoard_bss);
    .ChangeCannonTargetWarioBoard_bss (NOLOAD) : SUBALIGN(16)
    {
        ChangeCannonTargetWarioBoard_BSS_START = .;
        build/src/ovl_51_ChangeCannonTargetWarioBoard/28E630.c.o(.bss);
        ChangeCannonTargetWarioBoard_BSS_END = .;
        ChangeCannonTargetWarioBoard_BSS_SIZE = ABSOLUTE(ChangeCannonTargetWarioBoard_BSS_END - ChangeCannonTargetWarioBoard_BSS_START);
    }
    __romPos += SIZEOF(.ChangeCannonTargetWarioBoard);
    __romPos = ALIGN(__romPos, 16);
    ChangeCannonTargetWarioBoard_ROM_END = __romPos;
    ChangeCannonTargetWarioBoard_VRAM_END = .;

    _28EC50_ROM_START = __romPos;
    _28EC50_VRAM = ADDR(._28EC50);
    ._28EC50 : AT(_28EC50_ROM_START) SUBALIGN(16)
    {
        _28EC50_DATA_START = .;
        _28EC50_bin = .;
        build/assets/28EC50.bin.o(.data);
        _28EC50_DATA_END = .;
        _28EC50_DATA_SIZE = ABSOLUTE(_28EC50_DATA_END - _28EC50_DATA_START);
    }
    __romPos += SIZEOF(._28EC50);
    _28EC50_ROM_END = __romPos;
    _28EC50_VRAM_END = .;

    FlyGuyWarioBoard_ROM_START = __romPos;
    FlyGuyWarioBoard_VRAM = ADDR(.FlyGuyWarioBoard);
    .FlyGuyWarioBoard 0x800F65E0 : AT(FlyGuyWarioBoard_ROM_START) SUBALIGN(16)
    {
        FlyGuyWarioBoard_TEXT_START = .;
        build/src/ovl_52_FlyGuyWarioBoard/28ECA0.c.o(.text);
        FlyGuyWarioBoard_TEXT_END = .;
        FlyGuyWarioBoard_TEXT_SIZE = ABSOLUTE(FlyGuyWarioBoard_TEXT_END - FlyGuyWarioBoard_TEXT_START);
        FlyGuyWarioBoard_DATA_START = .;
        ovl_52_FlyGuyWarioBoard_28ECA0_c = .;
        build/src/ovl_52_FlyGuyWarioBoard/28ECA0.c.o(.data);
        FlyGuyWarioBoard_DATA_END = .;
        FlyGuyWarioBoard_DATA_SIZE = ABSOLUTE(FlyGuyWarioBoard_DATA_END - FlyGuyWarioBoard_DATA_START);
        FlyGuyWarioBoard_RODATA_START = .;
        build/src/ovl_52_FlyGuyWarioBoard/28ECA0.c.o(.rodata);
        FlyGuyWarioBoard_RODATA_END = .;
        FlyGuyWarioBoard_RODATA_SIZE = ABSOLUTE(FlyGuyWarioBoard_RODATA_END - FlyGuyWarioBoard_RODATA_START);
    }
    FlyGuyWarioBoard_bss_VRAM = ADDR(.FlyGuyWarioBoard_bss);
    .FlyGuyWarioBoard_bss (NOLOAD) : SUBALIGN(16)
    {
        FlyGuyWarioBoard_BSS_START = .;
        build/src/ovl_52_FlyGuyWarioBoard/28ECA0.c.o(.bss);
        FlyGuyWarioBoard_BSS_END = .;
        FlyGuyWarioBoard_BSS_SIZE = ABSOLUTE(FlyGuyWarioBoard_BSS_END - FlyGuyWarioBoard_BSS_START);
    }
    __romPos += SIZEOF(.FlyGuyWarioBoard);
    __romPos = ALIGN(__romPos, 16);
    FlyGuyWarioBoard_ROM_END = __romPos;
    FlyGuyWarioBoard_VRAM_END = .;

    _290730_ROM_START = __romPos;
    _290730_VRAM = ADDR(._290730);
    ._290730 : AT(_290730_ROM_START) SUBALIGN(16)
    {
        _290730_DATA_START = .;
        _290730_bin = .;
        build/assets/290730.bin.o(.data);
        _290730_DATA_END = .;
        _290730_DATA_SIZE = ABSOLUTE(_290730_DATA_END - _290730_DATA_START);
    }
    __romPos += SIZEOF(._290730);
    _290730_ROM_END = __romPos;
    _290730_VRAM_END = .;

    BowserVisitWarioBoard_ROM_START = __romPos;
    BowserVisitWarioBoard_VRAM = ADDR(.BowserVisitWarioBoard);
    .BowserVisitWarioBoard 0x800F65E0 : AT(BowserVisitWarioBoard_ROM_START) SUBALIGN(16)
    {
        BowserVisitWarioBoard_TEXT_START = .;
        build/src/ovl_53_BowserVisitWarioBoard/2908F0.c.o(.text);
        BowserVisitWarioBoard_TEXT_END = .;
        BowserVisitWarioBoard_TEXT_SIZE = ABSOLUTE(BowserVisitWarioBoard_TEXT_END - BowserVisitWarioBoard_TEXT_START);
        BowserVisitWarioBoard_DATA_START = .;
        ovl_53_BowserVisitWarioBoard_2908F0_c = .;
        build/src/ovl_53_BowserVisitWarioBoard/2908F0.c.o(.data);
        BowserVisitWarioBoard_DATA_END = .;
        BowserVisitWarioBoard_DATA_SIZE = ABSOLUTE(BowserVisitWarioBoard_DATA_END - BowserVisitWarioBoard_DATA_START);
        BowserVisitWarioBoard_RODATA_START = .;
        build/src/ovl_53_BowserVisitWarioBoard/2908F0.c.o(.rodata);
        BowserVisitWarioBoard_RODATA_END = .;
        BowserVisitWarioBoard_RODATA_SIZE = ABSOLUTE(BowserVisitWarioBoard_RODATA_END - BowserVisitWarioBoard_RODATA_START);
    }
    BowserVisitWarioBoard_bss_VRAM = ADDR(.BowserVisitWarioBoard_bss);
    .BowserVisitWarioBoard_bss (NOLOAD) : SUBALIGN(16)
    {
        BowserVisitWarioBoard_BSS_START = .;
        build/src/ovl_53_BowserVisitWarioBoard/2908F0.c.o(.bss);
        BowserVisitWarioBoard_BSS_END = .;
        BowserVisitWarioBoard_BSS_SIZE = ABSOLUTE(BowserVisitWarioBoard_BSS_END - BowserVisitWarioBoard_BSS_START);
    }
    __romPos += SIZEOF(.BowserVisitWarioBoard);
    __romPos = ALIGN(__romPos, 16);
    BowserVisitWarioBoard_ROM_END = __romPos;
    BowserVisitWarioBoard_VRAM_END = .;

    BowserVisitLuigiBoard_ROM_START = __romPos;
    BowserVisitLuigiBoard_VRAM = ADDR(.BowserVisitLuigiBoard);
    .BowserVisitLuigiBoard 0x800F65E0 : AT(BowserVisitLuigiBoard_ROM_START) SUBALIGN(16)
    {
        BowserVisitLuigiBoard_TEXT_START = .;
        build/src/ovl_54_BowserVisitLuigiBoard/291360.c.o(.text);
        BowserVisitLuigiBoard_TEXT_END = .;
        BowserVisitLuigiBoard_TEXT_SIZE = ABSOLUTE(BowserVisitLuigiBoard_TEXT_END - BowserVisitLuigiBoard_TEXT_START);
        BowserVisitLuigiBoard_DATA_START = .;
        ovl_54_BowserVisitLuigiBoard_291360_c = .;
        build/src/ovl_54_BowserVisitLuigiBoard/291360.c.o(.data);
        BowserVisitLuigiBoard_DATA_END = .;
        BowserVisitLuigiBoard_DATA_SIZE = ABSOLUTE(BowserVisitLuigiBoard_DATA_END - BowserVisitLuigiBoard_DATA_START);
        BowserVisitLuigiBoard_RODATA_START = .;
        build/src/ovl_54_BowserVisitLuigiBoard/291360.c.o(.rodata);
        BowserVisitLuigiBoard_RODATA_END = .;
        BowserVisitLuigiBoard_RODATA_SIZE = ABSOLUTE(BowserVisitLuigiBoard_RODATA_END - BowserVisitLuigiBoard_RODATA_START);
    }
    BowserVisitLuigiBoard_bss_VRAM = ADDR(.BowserVisitLuigiBoard_bss);
    .BowserVisitLuigiBoard_bss (NOLOAD) : SUBALIGN(16)
    {
        BowserVisitLuigiBoard_BSS_START = .;
        build/src/ovl_54_BowserVisitLuigiBoard/291360.c.o(.bss);
        BowserVisitLuigiBoard_BSS_END = .;
        BowserVisitLuigiBoard_BSS_SIZE = ABSOLUTE(BowserVisitLuigiBoard_BSS_END - BowserVisitLuigiBoard_BSS_START);
    }
    __romPos += SIZEOF(.BowserVisitLuigiBoard);
    __romPos = ALIGN(__romPos, 16);
    BowserVisitLuigiBoard_ROM_END = __romPos;
    BowserVisitLuigiBoard_VRAM_END = .;

    _291F10_ROM_START = __romPos;
    _291F10_VRAM = ADDR(._291F10);
    ._291F10 : AT(_291F10_ROM_START) SUBALIGN(16)
    {
        _291F10_DATA_START = .;
        _291F10_bin = .;
        build/assets/291F10.bin.o(.data);
        _291F10_DATA_END = .;
        _291F10_DATA_SIZE = ABSOLUTE(_291F10_DATA_END - _291F10_DATA_START);
    }
    __romPos += SIZEOF(._291F10);
    _291F10_ROM_END = __romPos;
    _291F10_VRAM_END = .;

    MoveDoorsLuigiBoard_ROM_START = __romPos;
    MoveDoorsLuigiBoard_VRAM = ADDR(.MoveDoorsLuigiBoard);
    .MoveDoorsLuigiBoard 0x800F65E0 : AT(MoveDoorsLuigiBoard_ROM_START) SUBALIGN(16)
    {
        MoveDoorsLuigiBoard_TEXT_START = .;
        build/src/ovl_55_MoveDoorsLuigiBoard/292020.c.o(.text);
        MoveDoorsLuigiBoard_TEXT_END = .;
        MoveDoorsLuigiBoard_TEXT_SIZE = ABSOLUTE(MoveDoorsLuigiBoard_TEXT_END - MoveDoorsLuigiBoard_TEXT_START);
        MoveDoorsLuigiBoard_DATA_START = .;
        ovl_55_MoveDoorsLuigiBoard_292020_c = .;
        build/src/ovl_55_MoveDoorsLuigiBoard/292020.c.o(.data);
        MoveDoorsLuigiBoard_DATA_END = .;
        MoveDoorsLuigiBoard_DATA_SIZE = ABSOLUTE(MoveDoorsLuigiBoard_DATA_END - MoveDoorsLuigiBoard_DATA_START);
        MoveDoorsLuigiBoard_RODATA_START = .;
        build/src/ovl_55_MoveDoorsLuigiBoard/292020.c.o(.rodata);
        MoveDoorsLuigiBoard_RODATA_END = .;
        MoveDoorsLuigiBoard_RODATA_SIZE = ABSOLUTE(MoveDoorsLuigiBoard_RODATA_END - MoveDoorsLuigiBoard_RODATA_START);
    }
    MoveDoorsLuigiBoard_bss_VRAM = ADDR(.MoveDoorsLuigiBoard_bss);
    .MoveDoorsLuigiBoard_bss (NOLOAD) : SUBALIGN(16)
    {
        MoveDoorsLuigiBoard_BSS_START = .;
        build/src/ovl_55_MoveDoorsLuigiBoard/292020.c.o(.bss);
        MoveDoorsLuigiBoard_BSS_END = .;
        MoveDoorsLuigiBoard_BSS_SIZE = ABSOLUTE(MoveDoorsLuigiBoard_BSS_END - MoveDoorsLuigiBoard_BSS_START);
    }
    __romPos += SIZEOF(.MoveDoorsLuigiBoard);
    __romPos = ALIGN(__romPos, 16);
    MoveDoorsLuigiBoard_ROM_END = __romPos;
    MoveDoorsLuigiBoard_VRAM_END = .;

    _293160_ROM_START = __romPos;
    _293160_VRAM = ADDR(._293160);
    ._293160 : AT(_293160_ROM_START) SUBALIGN(16)
    {
        _293160_DATA_START = .;
        _293160_bin = .;
        build/assets/293160.bin.o(.data);
        _293160_DATA_END = .;
        _293160_DATA_SIZE = ABSOLUTE(_293160_DATA_END - _293160_DATA_START);
    }
    __romPos += SIZEOF(._293160);
    _293160_ROM_END = __romPos;
    _293160_VRAM_END = .;

    BowserToadSwapPlacesMarioBoard_ROM_START = __romPos;
    BowserToadSwapPlacesMarioBoard_VRAM = ADDR(.BowserToadSwapPlacesMarioBoard);
    .BowserToadSwapPlacesMarioBoard 0x800F65E0 : AT(BowserToadSwapPlacesMarioBoard_ROM_START) SUBALIGN(16)
    {
        BowserToadSwapPlacesMarioBoard_TEXT_START = .;
        build/src/ovl_56_BowserToadSwapPlacesMarioBoard/293260.c.o(.text);
        BowserToadSwapPlacesMarioBoard_TEXT_END = .;
        BowserToadSwapPlacesMarioBoard_TEXT_SIZE = ABSOLUTE(BowserToadSwapPlacesMarioBoard_TEXT_END - BowserToadSwapPlacesMarioBoard_TEXT_START);
        BowserToadSwapPlacesMarioBoard_DATA_START = .;
        ovl_56_BowserToadSwapPlacesMarioBoard_293260_c = .;
        build/src/ovl_56_BowserToadSwapPlacesMarioBoard/293260.c.o(.data);
        BowserToadSwapPlacesMarioBoard_DATA_END = .;
        BowserToadSwapPlacesMarioBoard_DATA_SIZE = ABSOLUTE(BowserToadSwapPlacesMarioBoard_DATA_END - BowserToadSwapPlacesMarioBoard_DATA_START);
        BowserToadSwapPlacesMarioBoard_RODATA_START = .;
        build/src/ovl_56_BowserToadSwapPlacesMarioBoard/293260.c.o(.rodata);
        BowserToadSwapPlacesMarioBoard_RODATA_END = .;
        BowserToadSwapPlacesMarioBoard_RODATA_SIZE = ABSOLUTE(BowserToadSwapPlacesMarioBoard_RODATA_END - BowserToadSwapPlacesMarioBoard_RODATA_START);
    }
    BowserToadSwapPlacesMarioBoard_bss_VRAM = ADDR(.BowserToadSwapPlacesMarioBoard_bss);
    .BowserToadSwapPlacesMarioBoard_bss (NOLOAD) : SUBALIGN(16)
    {
        BowserToadSwapPlacesMarioBoard_BSS_START = .;
        build/src/ovl_56_BowserToadSwapPlacesMarioBoard/293260.c.o(.bss);
        BowserToadSwapPlacesMarioBoard_BSS_END = .;
        BowserToadSwapPlacesMarioBoard_BSS_SIZE = ABSOLUTE(BowserToadSwapPlacesMarioBoard_BSS_END - BowserToadSwapPlacesMarioBoard_BSS_START);
    }
    __romPos += SIZEOF(.BowserToadSwapPlacesMarioBoard);
    __romPos = ALIGN(__romPos, 16);
    BowserToadSwapPlacesMarioBoard_ROM_END = __romPos;
    BowserToadSwapPlacesMarioBoard_VRAM_END = .;

    name_57_ROM_START = __romPos;
    name_57_VRAM = ADDR(.name_57);
    .name_57 0x800F65E0 : AT(name_57_ROM_START) SUBALIGN(16)
    {
        name_57_TEXT_START = .;
        build/src/ovl_57_BowserVisitMarioBoard/293A70.c.o(.text);
        name_57_TEXT_END = .;
        name_57_TEXT_SIZE = ABSOLUTE(name_57_TEXT_END - name_57_TEXT_START);
        name_57_DATA_START = .;
        ovl_57_BowserVisitMarioBoard_293A70_c = .;
        build/src/ovl_57_BowserVisitMarioBoard/293A70.c.o(.data);
        name_57_DATA_END = .;
        name_57_DATA_SIZE = ABSOLUTE(name_57_DATA_END - name_57_DATA_START);
        name_57_RODATA_START = .;
        build/src/ovl_57_BowserVisitMarioBoard/293A70.c.o(.rodata);
        name_57_RODATA_END = .;
        name_57_RODATA_SIZE = ABSOLUTE(name_57_RODATA_END - name_57_RODATA_START);
    }
    name_57_bss_VRAM = ADDR(.name_57_bss);
    .name_57_bss (NOLOAD) : SUBALIGN(16)
    {
        name_57_BSS_START = .;
        build/src/ovl_57_BowserVisitMarioBoard/293A70.c.o(.bss);
        name_57_BSS_END = .;
        name_57_BSS_SIZE = ABSOLUTE(name_57_BSS_END - name_57_BSS_START);
    }
    __romPos += SIZEOF(.name_57);
    __romPos = ALIGN(__romPos, 16);
    name_57_ROM_END = __romPos;
    name_57_VRAM_END = .;

    _295350_ROM_START = __romPos;
    _295350_VRAM = ADDR(._295350);
    ._295350 : AT(_295350_ROM_START) SUBALIGN(16)
    {
        _295350_DATA_START = .;
        _295350_bin = .;
        build/assets/295350.bin.o(.data);
        _295350_DATA_END = .;
        _295350_DATA_SIZE = ABSOLUTE(_295350_DATA_END - _295350_DATA_START);
    }
    __romPos += SIZEOF(._295350);
    _295350_ROM_END = __romPos;
    _295350_VRAM_END = .;

    BowserVisitMagmaMountain_ROM_START = __romPos;
    BowserVisitMagmaMountain_VRAM = ADDR(.BowserVisitMagmaMountain);
    .BowserVisitMagmaMountain 0x800F65E0 : AT(BowserVisitMagmaMountain_ROM_START) SUBALIGN(16)
    {
        BowserVisitMagmaMountain_TEXT_START = .;
        build/src/ovl_59_BowserVisitMagmaMountain/295450.c.o(.text);
        BowserVisitMagmaMountain_TEXT_END = .;
        BowserVisitMagmaMountain_TEXT_SIZE = ABSOLUTE(BowserVisitMagmaMountain_TEXT_END - BowserVisitMagmaMountain_TEXT_START);
        BowserVisitMagmaMountain_DATA_START = .;
        ovl_59_BowserVisitMagmaMountain_295450_c = .;
        build/src/ovl_59_BowserVisitMagmaMountain/295450.c.o(.data);
        BowserVisitMagmaMountain_DATA_END = .;
        BowserVisitMagmaMountain_DATA_SIZE = ABSOLUTE(BowserVisitMagmaMountain_DATA_END - BowserVisitMagmaMountain_DATA_START);
        BowserVisitMagmaMountain_RODATA_START = .;
        build/src/ovl_59_BowserVisitMagmaMountain/295450.c.o(.rodata);
        BowserVisitMagmaMountain_RODATA_END = .;
        BowserVisitMagmaMountain_RODATA_SIZE = ABSOLUTE(BowserVisitMagmaMountain_RODATA_END - BowserVisitMagmaMountain_RODATA_START);
    }
    BowserVisitMagmaMountain_bss_VRAM = ADDR(.BowserVisitMagmaMountain_bss);
    .BowserVisitMagmaMountain_bss (NOLOAD) : SUBALIGN(16)
    {
        BowserVisitMagmaMountain_BSS_START = .;
        build/src/ovl_59_BowserVisitMagmaMountain/295450.c.o(.bss);
        BowserVisitMagmaMountain_BSS_END = .;
        BowserVisitMagmaMountain_BSS_SIZE = ABSOLUTE(BowserVisitMagmaMountain_BSS_END - BowserVisitMagmaMountain_BSS_START);
    }
    __romPos += SIZEOF(.BowserVisitMagmaMountain);
    __romPos = ALIGN(__romPos, 16);
    BowserVisitMagmaMountain_ROM_END = __romPos;
    BowserVisitMagmaMountain_VRAM_END = .;

    _295D40_ROM_START = __romPos;
    _295D40_VRAM = ADDR(._295D40);
    ._295D40 : AT(_295D40_ROM_START) SUBALIGN(16)
    {
        _295D40_DATA_START = .;
        _295D40_bin = .;
        build/assets/295D40.bin.o(.data);
        _295D40_DATA_END = .;
        _295D40_DATA_SIZE = ABSOLUTE(_295D40_DATA_END - _295D40_DATA_START);
    }
    __romPos += SIZEOF(._295D40);
    _295D40_ROM_END = __romPos;
    _295D40_VRAM_END = .;

    ShortcutRouletteMagmaMountain_ROM_START = __romPos;
    ShortcutRouletteMagmaMountain_VRAM = ADDR(.ShortcutRouletteMagmaMountain);
    .ShortcutRouletteMagmaMountain 0x800F65E0 : AT(ShortcutRouletteMagmaMountain_ROM_START) SUBALIGN(16)
    {
        ShortcutRouletteMagmaMountain_TEXT_START = .;
        build/src/ovl_5A_ShortcutRouletteMagmaMountain/295E40.c.o(.text);
        ShortcutRouletteMagmaMountain_TEXT_END = .;
        ShortcutRouletteMagmaMountain_TEXT_SIZE = ABSOLUTE(ShortcutRouletteMagmaMountain_TEXT_END - ShortcutRouletteMagmaMountain_TEXT_START);
        ShortcutRouletteMagmaMountain_DATA_START = .;
        ovl_5A_ShortcutRouletteMagmaMountain_295E40_c = .;
        build/src/ovl_5A_ShortcutRouletteMagmaMountain/295E40.c.o(.data);
        ShortcutRouletteMagmaMountain_DATA_END = .;
        ShortcutRouletteMagmaMountain_DATA_SIZE = ABSOLUTE(ShortcutRouletteMagmaMountain_DATA_END - ShortcutRouletteMagmaMountain_DATA_START);
        ShortcutRouletteMagmaMountain_RODATA_START = .;
        build/src/ovl_5A_ShortcutRouletteMagmaMountain/295E40.c.o(.rodata);
        ShortcutRouletteMagmaMountain_RODATA_END = .;
        ShortcutRouletteMagmaMountain_RODATA_SIZE = ABSOLUTE(ShortcutRouletteMagmaMountain_RODATA_END - ShortcutRouletteMagmaMountain_RODATA_START);
    }
    ShortcutRouletteMagmaMountain_bss_VRAM = ADDR(.ShortcutRouletteMagmaMountain_bss);
    .ShortcutRouletteMagmaMountain_bss (NOLOAD) : SUBALIGN(16)
    {
        ShortcutRouletteMagmaMountain_BSS_START = .;
        build/src/ovl_5A_ShortcutRouletteMagmaMountain/295E40.c.o(.bss);
        ShortcutRouletteMagmaMountain_BSS_END = .;
        ShortcutRouletteMagmaMountain_BSS_SIZE = ABSOLUTE(ShortcutRouletteMagmaMountain_BSS_END - ShortcutRouletteMagmaMountain_BSS_START);
    }
    __romPos += SIZEOF(.ShortcutRouletteMagmaMountain);
    __romPos = ALIGN(__romPos, 16);
    ShortcutRouletteMagmaMountain_ROM_END = __romPos;
    ShortcutRouletteMagmaMountain_VRAM_END = .;

    BowservisitMagmaMountain_ROM_START = __romPos;
    BowservisitMagmaMountain_VRAM = ADDR(.BowservisitMagmaMountain);
    .BowservisitMagmaMountain 0x800F65E0 : AT(BowservisitMagmaMountain_ROM_START) SUBALIGN(16)
    {
        BowservisitMagmaMountain_TEXT_START = .;
        build/src/ovl_5B_BowservisitMagmaMountain/296B70.c.o(.text);
        BowservisitMagmaMountain_TEXT_END = .;
        BowservisitMagmaMountain_TEXT_SIZE = ABSOLUTE(BowservisitMagmaMountain_TEXT_END - BowservisitMagmaMountain_TEXT_START);
        BowservisitMagmaMountain_DATA_START = .;
        ovl_5B_BowservisitMagmaMountain_296B70_c = .;
        build/src/ovl_5B_BowservisitMagmaMountain/296B70.c.o(.data);
        BowservisitMagmaMountain_DATA_END = .;
        BowservisitMagmaMountain_DATA_SIZE = ABSOLUTE(BowservisitMagmaMountain_DATA_END - BowservisitMagmaMountain_DATA_START);
        BowservisitMagmaMountain_RODATA_START = .;
        build/src/ovl_5B_BowservisitMagmaMountain/296B70.c.o(.rodata);
        BowservisitMagmaMountain_RODATA_END = .;
        BowservisitMagmaMountain_RODATA_SIZE = ABSOLUTE(BowservisitMagmaMountain_RODATA_END - BowservisitMagmaMountain_RODATA_START);
    }
    BowservisitMagmaMountain_bss_VRAM = ADDR(.BowservisitMagmaMountain_bss);
    .BowservisitMagmaMountain_bss (NOLOAD) : SUBALIGN(16)
    {
        BowservisitMagmaMountain_BSS_START = .;
        build/src/ovl_5B_BowservisitMagmaMountain/296B70.c.o(.bss);
        BowservisitMagmaMountain_BSS_END = .;
        BowservisitMagmaMountain_BSS_SIZE = ABSOLUTE(BowservisitMagmaMountain_BSS_END - BowservisitMagmaMountain_BSS_START);
    }
    __romPos += SIZEOF(.BowservisitMagmaMountain);
    __romPos = ALIGN(__romPos, 16);
    BowservisitMagmaMountain_ROM_END = __romPos;
    BowservisitMagmaMountain_VRAM_END = .;

    HappeningSpaceEternalStar_ROM_START = __romPos;
    HappeningSpaceEternalStar_VRAM = ADDR(.HappeningSpaceEternalStar);
    .HappeningSpaceEternalStar 0x800F65E0 : AT(HappeningSpaceEternalStar_ROM_START) SUBALIGN(16)
    {
        HappeningSpaceEternalStar_TEXT_START = .;
        build/src/ovl_5C_HappeningSpaceEternalStar/297BE0.c.o(.text);
        HappeningSpaceEternalStar_TEXT_END = .;
        HappeningSpaceEternalStar_TEXT_SIZE = ABSOLUTE(HappeningSpaceEternalStar_TEXT_END - HappeningSpaceEternalStar_TEXT_START);
        HappeningSpaceEternalStar_DATA_START = .;
        ovl_5C_HappeningSpaceEternalStar_297BE0_c = .;
        build/src/ovl_5C_HappeningSpaceEternalStar/297BE0.c.o(.data);
        HappeningSpaceEternalStar_DATA_END = .;
        HappeningSpaceEternalStar_DATA_SIZE = ABSOLUTE(HappeningSpaceEternalStar_DATA_END - HappeningSpaceEternalStar_DATA_START);
        HappeningSpaceEternalStar_RODATA_START = .;
        build/src/ovl_5C_HappeningSpaceEternalStar/297BE0.c.o(.rodata);
        HappeningSpaceEternalStar_RODATA_END = .;
        HappeningSpaceEternalStar_RODATA_SIZE = ABSOLUTE(HappeningSpaceEternalStar_RODATA_END - HappeningSpaceEternalStar_RODATA_START);
    }
    HappeningSpaceEternalStar_bss_VRAM = ADDR(.HappeningSpaceEternalStar_bss);
    .HappeningSpaceEternalStar_bss (NOLOAD) : SUBALIGN(16)
    {
        HappeningSpaceEternalStar_BSS_START = .;
        build/src/ovl_5C_HappeningSpaceEternalStar/297BE0.c.o(.bss);
        HappeningSpaceEternalStar_BSS_END = .;
        HappeningSpaceEternalStar_BSS_SIZE = ABSOLUTE(HappeningSpaceEternalStar_BSS_END - HappeningSpaceEternalStar_BSS_START);
    }
    __romPos += SIZEOF(.HappeningSpaceEternalStar);
    __romPos = ALIGN(__romPos, 16);
    HappeningSpaceEternalStar_ROM_END = __romPos;
    HappeningSpaceEternalStar_VRAM_END = .;

    BowserVisitEternalStar_ROM_START = __romPos;
    BowserVisitEternalStar_VRAM = ADDR(.BowserVisitEternalStar);
    .BowserVisitEternalStar 0x800F65E0 : AT(BowserVisitEternalStar_ROM_START) SUBALIGN(16)
    {
        BowserVisitEternalStar_TEXT_START = .;
        build/src/ovl_5D_BowserVisitEternalStar/297FB0.c.o(.text);
        BowserVisitEternalStar_TEXT_END = .;
        BowserVisitEternalStar_TEXT_SIZE = ABSOLUTE(BowserVisitEternalStar_TEXT_END - BowserVisitEternalStar_TEXT_START);
        BowserVisitEternalStar_DATA_START = .;
        ovl_5D_BowserVisitEternalStar_297FB0_c = .;
        build/src/ovl_5D_BowserVisitEternalStar/297FB0.c.o(.data);
        BowserVisitEternalStar_DATA_END = .;
        BowserVisitEternalStar_DATA_SIZE = ABSOLUTE(BowserVisitEternalStar_DATA_END - BowserVisitEternalStar_DATA_START);
        BowserVisitEternalStar_RODATA_START = .;
        build/src/ovl_5D_BowserVisitEternalStar/297FB0.c.o(.rodata);
        BowserVisitEternalStar_RODATA_END = .;
        BowserVisitEternalStar_RODATA_SIZE = ABSOLUTE(BowserVisitEternalStar_RODATA_END - BowserVisitEternalStar_RODATA_START);
    }
    BowserVisitEternalStar_bss_VRAM = ADDR(.BowserVisitEternalStar_bss);
    .BowserVisitEternalStar_bss (NOLOAD) : SUBALIGN(16)
    {
        BowserVisitEternalStar_BSS_START = .;
        build/src/ovl_5D_BowserVisitEternalStar/297FB0.c.o(.bss);
        BowserVisitEternalStar_BSS_END = .;
        BowserVisitEternalStar_BSS_SIZE = ABSOLUTE(BowserVisitEternalStar_BSS_END - BowserVisitEternalStar_BSS_START);
    }
    __romPos += SIZEOF(.BowserVisitEternalStar);
    __romPos = ALIGN(__romPos, 16);
    BowserVisitEternalStar_ROM_END = __romPos;
    BowserVisitEternalStar_VRAM_END = .;

    StarVisitEternalStar_ROM_START = __romPos;
    StarVisitEternalStar_VRAM = ADDR(.StarVisitEternalStar);
    .StarVisitEternalStar 0x800F65E0 : AT(StarVisitEternalStar_ROM_START) SUBALIGN(16)
    {
        StarVisitEternalStar_TEXT_START = .;
        build/src/ovl_5E_StarVisitEternalStar/298AE0.c.o(.text);
        StarVisitEternalStar_TEXT_END = .;
        StarVisitEternalStar_TEXT_SIZE = ABSOLUTE(StarVisitEternalStar_TEXT_END - StarVisitEternalStar_TEXT_START);
        StarVisitEternalStar_DATA_START = .;
        ovl_5E_StarVisitEternalStar_298AE0_c = .;
        build/src/ovl_5E_StarVisitEternalStar/298AE0.c.o(.data);
        StarVisitEternalStar_DATA_END = .;
        StarVisitEternalStar_DATA_SIZE = ABSOLUTE(StarVisitEternalStar_DATA_END - StarVisitEternalStar_DATA_START);
        StarVisitEternalStar_RODATA_START = .;
        build/src/ovl_5E_StarVisitEternalStar/298AE0.c.o(.rodata);
        StarVisitEternalStar_RODATA_END = .;
        StarVisitEternalStar_RODATA_SIZE = ABSOLUTE(StarVisitEternalStar_RODATA_END - StarVisitEternalStar_RODATA_START);
    }
    StarVisitEternalStar_bss_VRAM = ADDR(.StarVisitEternalStar_bss);
    .StarVisitEternalStar_bss (NOLOAD) : SUBALIGN(16)
    {
        StarVisitEternalStar_BSS_START = .;
        build/src/ovl_5E_StarVisitEternalStar/298AE0.c.o(.bss);
        StarVisitEternalStar_BSS_END = .;
        StarVisitEternalStar_BSS_SIZE = ABSOLUTE(StarVisitEternalStar_BSS_END - StarVisitEternalStar_BSS_START);
    }
    __romPos += SIZEOF(.StarVisitEternalStar);
    __romPos = ALIGN(__romPos, 16);
    StarVisitEternalStar_ROM_END = __romPos;
    StarVisitEternalStar_VRAM_END = .;

    KoopaVisitEternalStar_ROM_START = __romPos;
    KoopaVisitEternalStar_VRAM = ADDR(.KoopaVisitEternalStar);
    .KoopaVisitEternalStar 0x800F65E0 : AT(KoopaVisitEternalStar_ROM_START) SUBALIGN(16)
    {
        KoopaVisitEternalStar_TEXT_START = .;
        build/src/ovl_5F_KoopaVisitEternalStar/29A400.c.o(.text);
        KoopaVisitEternalStar_TEXT_END = .;
        KoopaVisitEternalStar_TEXT_SIZE = ABSOLUTE(KoopaVisitEternalStar_TEXT_END - KoopaVisitEternalStar_TEXT_START);
        KoopaVisitEternalStar_DATA_START = .;
        ovl_5F_KoopaVisitEternalStar_29A400_c = .;
        build/src/ovl_5F_KoopaVisitEternalStar/29A400.c.o(.data);
        KoopaVisitEternalStar_DATA_END = .;
        KoopaVisitEternalStar_DATA_SIZE = ABSOLUTE(KoopaVisitEternalStar_DATA_END - KoopaVisitEternalStar_DATA_START);
        KoopaVisitEternalStar_RODATA_START = .;
        build/src/ovl_5F_KoopaVisitEternalStar/29A400.c.o(.rodata);
        KoopaVisitEternalStar_RODATA_END = .;
        KoopaVisitEternalStar_RODATA_SIZE = ABSOLUTE(KoopaVisitEternalStar_RODATA_END - KoopaVisitEternalStar_RODATA_START);
    }
    KoopaVisitEternalStar_bss_VRAM = ADDR(.KoopaVisitEternalStar_bss);
    .KoopaVisitEternalStar_bss (NOLOAD) : SUBALIGN(16)
    {
        KoopaVisitEternalStar_BSS_START = .;
        build/src/ovl_5F_KoopaVisitEternalStar/29A400.c.o(.bss);
        KoopaVisitEternalStar_BSS_END = .;
        KoopaVisitEternalStar_BSS_SIZE = ABSOLUTE(KoopaVisitEternalStar_BSS_END - KoopaVisitEternalStar_BSS_START);
    }
    __romPos += SIZEOF(.KoopaVisitEternalStar);
    __romPos = ALIGN(__romPos, 16);
    KoopaVisitEternalStar_ROM_END = __romPos;
    KoopaVisitEternalStar_VRAM_END = .;

    name_60_ROM_START = __romPos;
    name_60_VRAM = ADDR(.name_60);
    .name_60 0x800F65E0 : AT(name_60_ROM_START) SUBALIGN(16)
    {
        name_60_TEXT_START = .;
        build/src/ovl_60/29AB30.c.o(.text);
        name_60_TEXT_END = .;
        name_60_TEXT_SIZE = ABSOLUTE(name_60_TEXT_END - name_60_TEXT_START);
        name_60_DATA_START = .;
        ovl_60_29AB30_c = .;
        build/src/ovl_60/29AB30.c.o(.data);
        name_60_DATA_END = .;
        name_60_DATA_SIZE = ABSOLUTE(name_60_DATA_END - name_60_DATA_START);
        name_60_RODATA_START = .;
        build/src/ovl_60/29AB30.c.o(.rodata);
        name_60_RODATA_END = .;
        name_60_RODATA_SIZE = ABSOLUTE(name_60_RODATA_END - name_60_RODATA_START);
    }
    name_60_bss_VRAM = ADDR(.name_60_bss);
    .name_60_bss (NOLOAD) : SUBALIGN(16)
    {
        name_60_BSS_START = .;
        build/src/ovl_60/29AB30.c.o(.bss);
        name_60_BSS_END = .;
        name_60_BSS_SIZE = ABSOLUTE(name_60_BSS_END - name_60_BSS_START);
    }
    __romPos += SIZEOF(.name_60);
    __romPos = ALIGN(__romPos, 16);
    name_60_ROM_END = __romPos;
    name_60_VRAM_END = .;

    OpeningScene_ROM_START = __romPos;
    OpeningScene_VRAM = ADDR(.OpeningScene);
    .OpeningScene 0x800F65E0 : AT(OpeningScene_ROM_START) SUBALIGN(16)
    {
        OpeningScene_TEXT_START = .;
        build/src/ovl_61_OpeningScene/29B410.c.o(.text);
        OpeningScene_TEXT_END = .;
        OpeningScene_TEXT_SIZE = ABSOLUTE(OpeningScene_TEXT_END - OpeningScene_TEXT_START);
        OpeningScene_DATA_START = .;
        ovl_61_OpeningScene_29B410_c = .;
        build/src/ovl_61_OpeningScene/29B410.c.o(.data);
        OpeningScene_DATA_END = .;
        OpeningScene_DATA_SIZE = ABSOLUTE(OpeningScene_DATA_END - OpeningScene_DATA_START);
        OpeningScene_RODATA_START = .;
        build/src/ovl_61_OpeningScene/29B410.c.o(.rodata);
        OpeningScene_RODATA_END = .;
        OpeningScene_RODATA_SIZE = ABSOLUTE(OpeningScene_RODATA_END - OpeningScene_RODATA_START);
    }
    OpeningScene_bss_VRAM = ADDR(.OpeningScene_bss);
    .OpeningScene_bss (NOLOAD) : SUBALIGN(16)
    {
        OpeningScene_BSS_START = .;
        build/src/ovl_61_OpeningScene/29B410.c.o(.bss);
        OpeningScene_BSS_END = .;
        OpeningScene_BSS_SIZE = ABSOLUTE(OpeningScene_BSS_END - OpeningScene_BSS_START);
    }
    __romPos += SIZEOF(.OpeningScene);
    __romPos = ALIGN(__romPos, 16);
    OpeningScene_ROM_END = __romPos;
    OpeningScene_VRAM_END = .;

    _2A1D30_ROM_START = __romPos;
    _2A1D30_VRAM = ADDR(._2A1D30);
    ._2A1D30 : AT(_2A1D30_ROM_START) SUBALIGN(16)
    {
        _2A1D30_DATA_START = .;
        _2A1D30_bin = .;
        build/assets/2A1D30.bin.o(.data);
        _2A1D30_DATA_END = .;
        _2A1D30_DATA_SIZE = ABSOLUTE(_2A1D30_DATA_END - _2A1D30_DATA_START);
    }
    __romPos += SIZEOF(._2A1D30);
    _2A1D30_ROM_END = __romPos;
    _2A1D30_VRAM_END = .;

    BoardIntro_ROM_START = __romPos;
    BoardIntro_VRAM = ADDR(.BoardIntro);
    .BoardIntro 0x800F65E0 : AT(BoardIntro_ROM_START) SUBALIGN(16)
    {
        BoardIntro_TEXT_START = .;
        build/src/ovl_62_board_intro/2A2500.c.o(.text);
        build/src/ovl_62_board_intro/2A51E0.c.o(.text);
        build/src/ovl_62_board_intro/2A5420.c.o(.text);
        build/src/ovl_62_board_intro/2A5840.c.o(.text);
        build/src/ovl_62_board_intro/2A5E50.c.o(.text);
        build/src/ovl_62_board_intro/2A6500.c.o(.text);
        build/src/ovl_62_board_intro/2A6EA0.c.o(.text);
        build/src/ovl_62_board_intro/2A74F0.c.o(.text);
        build/src/ovl_62_board_intro/2A76E0.c.o(.text);
        BoardIntro_TEXT_END = .;
        BoardIntro_TEXT_SIZE = ABSOLUTE(BoardIntro_TEXT_END - BoardIntro_TEXT_START);
        BoardIntro_DATA_START = .;
        ovl_62_board_intro_2A2500_data__s = .;
        build/asm/data/ovl_62_board_intro/2A2500.data.s.o(.data);
        BoardIntro_DATA_END = .;
        BoardIntro_DATA_SIZE = ABSOLUTE(BoardIntro_DATA_END - BoardIntro_DATA_START);
        BoardIntro_RODATA_START = .;
        build/src/ovl_62_board_intro/2A2500.c.o(.rodata);
        build/src/ovl_62_board_intro/2A51E0.c.o(.rodata);
        build/src/ovl_62_board_intro/2A5420.c.o(.rodata);
        build/src/ovl_62_board_intro/2A5840.c.o(.rodata);
        build/src/ovl_62_board_intro/2A5E50.c.o(.rodata);
        build/src/ovl_62_board_intro/2A6500.c.o(.rodata);
        build/src/ovl_62_board_intro/2A6EA0.c.o(.rodata);
        build/src/ovl_62_board_intro/2A74F0.c.o(.rodata);
        build/src/ovl_62_board_intro/2A76E0.c.o(.rodata);
        BoardIntro_RODATA_END = .;
        BoardIntro_RODATA_SIZE = ABSOLUTE(BoardIntro_RODATA_END - BoardIntro_RODATA_START);
    }
    BoardIntro_bss_VRAM = ADDR(.BoardIntro_bss);
    .BoardIntro_bss (NOLOAD) : SUBALIGN(16)
    {
        BoardIntro_BSS_START = .;
        build/src/ovl_62_board_intro/2A2500.c.o(.bss);
        build/src/ovl_62_board_intro/2A51E0.c.o(.bss);
        build/src/ovl_62_board_intro/2A5420.c.o(.bss);
        build/src/ovl_62_board_intro/2A5840.c.o(.bss);
        build/src/ovl_62_board_intro/2A5E50.c.o(.bss);
        build/src/ovl_62_board_intro/2A6500.c.o(.bss);
        build/src/ovl_62_board_intro/2A6EA0.c.o(.bss);
        build/src/ovl_62_board_intro/2A74F0.c.o(.bss);
        build/src/ovl_62_board_intro/2A76E0.c.o(.bss);
        BoardIntro_BSS_END = .;
        BoardIntro_BSS_SIZE = ABSOLUTE(BoardIntro_BSS_END - BoardIntro_BSS_START);
    }
    __romPos += SIZEOF(.BoardIntro);
    __romPos = ALIGN(__romPos, 16);
    BoardIntro_ROM_END = __romPos;
    BoardIntro_VRAM_END = .;

    StaffScene_ROM_START = __romPos;
    StaffScene_VRAM = ADDR(.StaffScene);
    .StaffScene 0x800F65E0 : AT(StaffScene_ROM_START) SUBALIGN(16)
    {
        StaffScene_TEXT_START = .;
        build/src/ovl_63_StaffScene/2A9970.c.o(.text);
        build/src/ovl_63_StaffScene/2A9CA0.c.o(.text);
        StaffScene_TEXT_END = .;
        StaffScene_TEXT_SIZE = ABSOLUTE(StaffScene_TEXT_END - StaffScene_TEXT_START);
        StaffScene_DATA_START = .;
        ovl_63_StaffScene_2B0670_data__s = .;
        build/asm/data/ovl_63_StaffScene/2B0670.data.s.o(.data);
        StaffScene_DATA_END = .;
        StaffScene_DATA_SIZE = ABSOLUTE(StaffScene_DATA_END - StaffScene_DATA_START);
        StaffScene_RODATA_START = .;
        build/asm/data/ovl_63_StaffScene/2B1550.rodata.s.o(.rodata);
        StaffScene_RODATA_END = .;
        StaffScene_RODATA_SIZE = ABSOLUTE(StaffScene_RODATA_END - StaffScene_RODATA_START);
    }
    StaffScene_bss_VRAM = ADDR(.StaffScene_bss);
    .StaffScene_bss (NOLOAD) : SUBALIGN(16)
    {
        StaffScene_BSS_START = .;
        build/src/ovl_63_StaffScene/2A9970.c.o(.bss);
        build/src/ovl_63_StaffScene/2A9CA0.c.o(.bss);
        StaffScene_BSS_END = .;
        StaffScene_BSS_SIZE = ABSOLUTE(StaffScene_BSS_END - StaffScene_BSS_START);
    }
    __romPos += SIZEOF(.StaffScene);
    __romPos = ALIGN(__romPos, 16);
    StaffScene_ROM_END = __romPos;
    StaffScene_VRAM_END = .;

    ResultsEternalStar2_ROM_START = __romPos;
    ResultsEternalStar2_VRAM = ADDR(.ResultsEternalStar2);
    .ResultsEternalStar2 0x800F65E0 : AT(ResultsEternalStar2_ROM_START) SUBALIGN(16)
    {
        ResultsEternalStar2_TEXT_START = .;
        build/src/ovl_64_ResultsEternalStar2/2B1670.c.o(.text);
        ResultsEternalStar2_TEXT_END = .;
        ResultsEternalStar2_TEXT_SIZE = ABSOLUTE(ResultsEternalStar2_TEXT_END - ResultsEternalStar2_TEXT_START);
        ResultsEternalStar2_DATA_START = .;
        ovl_64_ResultsEternalStar2_2B1670_c = .;
        build/src/ovl_64_ResultsEternalStar2/2B1670.c.o(.data);
        ResultsEternalStar2_DATA_END = .;
        ResultsEternalStar2_DATA_SIZE = ABSOLUTE(ResultsEternalStar2_DATA_END - ResultsEternalStar2_DATA_START);
        ResultsEternalStar2_RODATA_START = .;
        build/src/ovl_64_ResultsEternalStar2/2B1670.c.o(.rodata);
        ResultsEternalStar2_RODATA_END = .;
        ResultsEternalStar2_RODATA_SIZE = ABSOLUTE(ResultsEternalStar2_RODATA_END - ResultsEternalStar2_RODATA_START);
    }
    ResultsEternalStar2_bss_VRAM = ADDR(.ResultsEternalStar2_bss);
    .ResultsEternalStar2_bss (NOLOAD) : SUBALIGN(16)
    {
        ResultsEternalStar2_BSS_START = .;
        build/src/ovl_64_ResultsEternalStar2/2B1670.c.o(.bss);
        ResultsEternalStar2_BSS_END = .;
        ResultsEternalStar2_BSS_SIZE = ABSOLUTE(ResultsEternalStar2_BSS_END - ResultsEternalStar2_BSS_START);
    }
    __romPos += SIZEOF(.ResultsEternalStar2);
    __romPos = ALIGN(__romPos, 16);
    ResultsEternalStar2_ROM_END = __romPos;
    ResultsEternalStar2_VRAM_END = .;

    _2B7150_ROM_START = __romPos;
    _2B7150_VRAM = ADDR(._2B7150);
    ._2B7150 : AT(_2B7150_ROM_START) SUBALIGN(16)
    {
        _2B7150_DATA_START = .;
        _2B7150_bin = .;
        build/assets/2B7150.bin.o(.data);
        _2B7150_DATA_END = .;
        _2B7150_DATA_SIZE = ABSOLUTE(_2B7150_DATA_END - _2B7150_DATA_START);
    }
    __romPos += SIZEOF(._2B7150);
    _2B7150_ROM_END = __romPos;
    _2B7150_VRAM_END = .;

    UnknownBooStealScene_ROM_START = __romPos;
    UnknownBooStealScene_VRAM = ADDR(.UnknownBooStealScene);
    .UnknownBooStealScene 0x800F65E0 : AT(UnknownBooStealScene_ROM_START) SUBALIGN(16)
    {
        UnknownBooStealScene_TEXT_START = .;
        build/src/ovl_65_UnknownBooStealScene/2B74A0.c.o(.text);
        UnknownBooStealScene_TEXT_END = .;
        UnknownBooStealScene_TEXT_SIZE = ABSOLUTE(UnknownBooStealScene_TEXT_END - UnknownBooStealScene_TEXT_START);
        UnknownBooStealScene_DATA_START = .;
        ovl_65_UnknownBooStealScene_2B74A0_c = .;
        build/src/ovl_65_UnknownBooStealScene/2B74A0.c.o(.data);
        UnknownBooStealScene_DATA_END = .;
        UnknownBooStealScene_DATA_SIZE = ABSOLUTE(UnknownBooStealScene_DATA_END - UnknownBooStealScene_DATA_START);
        UnknownBooStealScene_RODATA_START = .;
        build/src/ovl_65_UnknownBooStealScene/2B74A0.c.o(.rodata);
        UnknownBooStealScene_RODATA_END = .;
        UnknownBooStealScene_RODATA_SIZE = ABSOLUTE(UnknownBooStealScene_RODATA_END - UnknownBooStealScene_RODATA_START);
    }
    UnknownBooStealScene_bss_VRAM = ADDR(.UnknownBooStealScene_bss);
    .UnknownBooStealScene_bss (NOLOAD) : SUBALIGN(16)
    {
        UnknownBooStealScene_BSS_START = .;
        build/src/ovl_65_UnknownBooStealScene/2B74A0.c.o(.bss);
        UnknownBooStealScene_BSS_END = .;
        UnknownBooStealScene_BSS_SIZE = ABSOLUTE(UnknownBooStealScene_BSS_END - UnknownBooStealScene_BSS_START);
    }
    __romPos += SIZEOF(.UnknownBooStealScene);
    __romPos = ALIGN(__romPos, 16);
    UnknownBooStealScene_ROM_END = __romPos;
    UnknownBooStealScene_VRAM_END = .;

    _2BA290_ROM_START = __romPos;
    _2BA290_VRAM = ADDR(._2BA290);
    ._2BA290 : AT(_2BA290_ROM_START) SUBALIGN(16)
    {
        _2BA290_DATA_START = .;
        _2BA290_bin = .;
        build/assets/2BA290.bin.o(.data);
        _2BA290_DATA_END = .;
        _2BA290_DATA_SIZE = ABSOLUTE(_2BA290_DATA_END - _2BA290_DATA_START);
    }
    __romPos += SIZEOF(._2BA290);
    _2BA290_ROM_END = __romPos;
    _2BA290_VRAM_END = .;

    LogosSequence_ROM_START = __romPos;
    LogosSequence_VRAM = ADDR(.LogosSequence);
    .LogosSequence 0x800F65E0 : AT(LogosSequence_ROM_START) SUBALIGN(16)
    {
        LogosSequence_TEXT_START = .;
        build/src/ovl_66_LogosSequence/2BA4C0.c.o(.text);
        build/src/ovl_66_LogosSequence/2BA4F0.c.o(.text);
        LogosSequence_TEXT_END = .;
        LogosSequence_TEXT_SIZE = ABSOLUTE(LogosSequence_TEXT_END - LogosSequence_TEXT_START);
        LogosSequence_DATA_START = .;
        ovl_66_LogosSequence_2BA4C0_c = .;
        build/src/ovl_66_LogosSequence/2BA4C0.c.o(.data);
        ovl_66_LogosSequence_2BA4F0_c = .;
        build/src/ovl_66_LogosSequence/2BA4F0.c.o(.data);
        LogosSequence_DATA_END = .;
        LogosSequence_DATA_SIZE = ABSOLUTE(LogosSequence_DATA_END - LogosSequence_DATA_START);
        LogosSequence_RODATA_START = .;
        build/src/ovl_66_LogosSequence/2BA4C0.c.o(.rodata);
        build/src/ovl_66_LogosSequence/2BA4F0.c.o(.rodata);
        LogosSequence_RODATA_END = .;
        LogosSequence_RODATA_SIZE = ABSOLUTE(LogosSequence_RODATA_END - LogosSequence_RODATA_START);
    }
    LogosSequence_bss_VRAM = ADDR(.LogosSequence_bss);
    .LogosSequence_bss (NOLOAD) : SUBALIGN(16)
    {
        LogosSequence_BSS_START = .;
        build/src/ovl_66_LogosSequence/2BA4C0.c.o(.bss);
        build/src/ovl_66_LogosSequence/2BA4F0.c.o(.bss);
        LogosSequence_BSS_END = .;
        LogosSequence_BSS_SIZE = ABSOLUTE(LogosSequence_BSS_END - LogosSequence_BSS_START);
    }
    __romPos += SIZEOF(.LogosSequence);
    __romPos = ALIGN(__romPos, 16);
    LogosSequence_ROM_END = __romPos;
    LogosSequence_VRAM_END = .;

    _2BA9B0_ROM_START = __romPos;
    _2BA9B0_VRAM = ADDR(._2BA9B0);
    ._2BA9B0 : AT(_2BA9B0_ROM_START) SUBALIGN(16)
    {
        _2BA9B0_DATA_START = .;
        _2BA9B0_bin = .;
        build/assets/2BA9B0.bin.o(.data);
        _2BA9B0_DATA_END = .;
        _2BA9B0_DATA_SIZE = ABSOLUTE(_2BA9B0_DATA_END - _2BA9B0_DATA_START);
    }
    __romPos += SIZEOF(._2BA9B0);
    _2BA9B0_ROM_END = __romPos;
    _2BA9B0_VRAM_END = .;

    LogosSequenceCopy_ROM_START = __romPos;
    LogosSequenceCopy_VRAM = ADDR(.LogosSequenceCopy);
    .LogosSequenceCopy 0x800F65E0 : AT(LogosSequenceCopy_ROM_START) SUBALIGN(16)
    {
        LogosSequenceCopy_TEXT_START = .;
        build/src/ovl_67_LogosSequenceCopy/2BA9E0.c.o(.text);
        build/src/ovl_67_LogosSequenceCopy/2BAA10.c.o(.text);
        LogosSequenceCopy_TEXT_END = .;
        LogosSequenceCopy_TEXT_SIZE = ABSOLUTE(LogosSequenceCopy_TEXT_END - LogosSequenceCopy_TEXT_START);
        LogosSequenceCopy_DATA_START = .;
        ovl_67_LogosSequenceCopy_2BA9E0_c = .;
        build/src/ovl_67_LogosSequenceCopy/2BA9E0.c.o(.data);
        ovl_67_LogosSequenceCopy_2BAA10_c = .;
        build/src/ovl_67_LogosSequenceCopy/2BAA10.c.o(.data);
        LogosSequenceCopy_DATA_END = .;
        LogosSequenceCopy_DATA_SIZE = ABSOLUTE(LogosSequenceCopy_DATA_END - LogosSequenceCopy_DATA_START);
        LogosSequenceCopy_RODATA_START = .;
        build/src/ovl_67_LogosSequenceCopy/2BA9E0.c.o(.rodata);
        build/src/ovl_67_LogosSequenceCopy/2BAA10.c.o(.rodata);
        LogosSequenceCopy_RODATA_END = .;
        LogosSequenceCopy_RODATA_SIZE = ABSOLUTE(LogosSequenceCopy_RODATA_END - LogosSequenceCopy_RODATA_START);
    }
    LogosSequenceCopy_bss_VRAM = ADDR(.LogosSequenceCopy_bss);
    .LogosSequenceCopy_bss (NOLOAD) : SUBALIGN(16)
    {
        LogosSequenceCopy_BSS_START = .;
        build/src/ovl_67_LogosSequenceCopy/2BA9E0.c.o(.bss);
        build/src/ovl_67_LogosSequenceCopy/2BAA10.c.o(.bss);
        LogosSequenceCopy_BSS_END = .;
        LogosSequenceCopy_BSS_SIZE = ABSOLUTE(LogosSequenceCopy_BSS_END - LogosSequenceCopy_BSS_START);
    }
    __romPos += SIZEOF(.LogosSequenceCopy);
    __romPos = ALIGN(__romPos, 16);
    LogosSequenceCopy_ROM_END = __romPos;
    LogosSequenceCopy_VRAM_END = .;

    _2BB350_ROM_START = __romPos;
    _2BB350_VRAM = ADDR(._2BB350);
    ._2BB350 : AT(_2BB350_ROM_START) SUBALIGN(16)
    {
        _2BB350_DATA_START = .;
        _2BB350_bin = .;
        build/assets/2BB350.bin.o(.data);
        _2BB350_DATA_END = .;
        _2BB350_DATA_SIZE = ABSOLUTE(_2BB350_DATA_END - _2BB350_DATA_START);
    }
    __romPos += SIZEOF(._2BB350);
    _2BB350_ROM_END = __romPos;
    _2BB350_VRAM_END = .;

    SaveDataCorrupted_ROM_START = __romPos;
    SaveDataCorrupted_VRAM = ADDR(.SaveDataCorrupted);
    .SaveDataCorrupted 0x800F65E0 : AT(SaveDataCorrupted_ROM_START) SUBALIGN(16)
    {
        SaveDataCorrupted_TEXT_START = .;
        build/src/ovl_68_SaveDataCorrupted/2BB390.c.o(.text);
        build/src/ovl_68_SaveDataCorrupted/2BB3C0.c.o(.text);
        SaveDataCorrupted_TEXT_END = .;
        SaveDataCorrupted_TEXT_SIZE = ABSOLUTE(SaveDataCorrupted_TEXT_END - SaveDataCorrupted_TEXT_START);
        SaveDataCorrupted_DATA_START = .;
        ovl_68_SaveDataCorrupted_2BB390_c = .;
        build/src/ovl_68_SaveDataCorrupted/2BB390.c.o(.data);
        ovl_68_SaveDataCorrupted_2BB3C0_c = .;
        build/src/ovl_68_SaveDataCorrupted/2BB3C0.c.o(.data);
        SaveDataCorrupted_DATA_END = .;
        SaveDataCorrupted_DATA_SIZE = ABSOLUTE(SaveDataCorrupted_DATA_END - SaveDataCorrupted_DATA_START);
        SaveDataCorrupted_RODATA_START = .;
        build/src/ovl_68_SaveDataCorrupted/2BB390.c.o(.rodata);
        build/src/ovl_68_SaveDataCorrupted/2BB3C0.c.o(.rodata);
        SaveDataCorrupted_RODATA_END = .;
        SaveDataCorrupted_RODATA_SIZE = ABSOLUTE(SaveDataCorrupted_RODATA_END - SaveDataCorrupted_RODATA_START);
    }
    SaveDataCorrupted_bss_VRAM = ADDR(.SaveDataCorrupted_bss);
    .SaveDataCorrupted_bss (NOLOAD) : SUBALIGN(16)
    {
        SaveDataCorrupted_BSS_START = .;
        build/src/ovl_68_SaveDataCorrupted/2BB390.c.o(.bss);
        build/src/ovl_68_SaveDataCorrupted/2BB3C0.c.o(.bss);
        SaveDataCorrupted_BSS_END = .;
        SaveDataCorrupted_BSS_SIZE = ABSOLUTE(SaveDataCorrupted_BSS_END - SaveDataCorrupted_BSS_START);
    }
    __romPos += SIZEOF(.SaveDataCorrupted);
    __romPos = ALIGN(__romPos, 16);
    SaveDataCorrupted_ROM_END = __romPos;
    SaveDataCorrupted_VRAM_END = .;

    GameModeOverworld_ROM_START = __romPos;
    GameModeOverworld_VRAM = ADDR(.GameModeOverworld);
    .GameModeOverworld 0x800F65E0 : AT(GameModeOverworld_ROM_START) SUBALIGN(16)
    {
        GameModeOverworld_TEXT_START = .;
        build/src/ovl_69_GameModeOverworld/2BB5C0.c.o(.text);
        build/src/ovl_69_GameModeOverworld/2BB5F0.c.o(.text);
        GameModeOverworld_TEXT_END = .;
        GameModeOverworld_TEXT_SIZE = ABSOLUTE(GameModeOverworld_TEXT_END - GameModeOverworld_TEXT_START);
        GameModeOverworld_DATA_START = .;
        ovl_69_GameModeOverworld_2BB5C0_c = .;
        build/src/ovl_69_GameModeOverworld/2BB5C0.c.o(.data);
        ovl_69_GameModeOverworld_2BB5F0_c = .;
        build/src/ovl_69_GameModeOverworld/2BB5F0.c.o(.data);
        GameModeOverworld_DATA_END = .;
        GameModeOverworld_DATA_SIZE = ABSOLUTE(GameModeOverworld_DATA_END - GameModeOverworld_DATA_START);
        GameModeOverworld_RODATA_START = .;
        build/src/ovl_69_GameModeOverworld/2BB5C0.c.o(.rodata);
        build/src/ovl_69_GameModeOverworld/2BB5F0.c.o(.rodata);
        GameModeOverworld_RODATA_END = .;
        GameModeOverworld_RODATA_SIZE = ABSOLUTE(GameModeOverworld_RODATA_END - GameModeOverworld_RODATA_START);
    }
    GameModeOverworld_bss_VRAM = ADDR(.GameModeOverworld_bss);
    .GameModeOverworld_bss (NOLOAD) : SUBALIGN(16)
    {
        GameModeOverworld_BSS_START = .;
        build/src/ovl_69_GameModeOverworld/2BB5C0.c.o(.bss);
        build/src/ovl_69_GameModeOverworld/2BB5F0.c.o(.bss);
        GameModeOverworld_BSS_END = .;
        GameModeOverworld_BSS_SIZE = ABSOLUTE(GameModeOverworld_BSS_END - GameModeOverworld_BSS_START);
    }
    __romPos += SIZEOF(.GameModeOverworld);
    __romPos = ALIGN(__romPos, 16);
    GameModeOverworld_ROM_END = __romPos;
    GameModeOverworld_VRAM_END = .;

    _2BE910_ROM_START = __romPos;
    _2BE910_VRAM = ADDR(._2BE910);
    ._2BE910 : AT(_2BE910_ROM_START) SUBALIGN(16)
    {
        _2BE910_DATA_START = .;
        _2BE910_bin = .;
        build/assets/2BE910.bin.o(.data);
        _2BE910_DATA_END = .;
        _2BE910_DATA_SIZE = ABSOLUTE(_2BE910_DATA_END - _2BE910_DATA_START);
    }
    __romPos += SIZEOF(._2BE910);
    _2BE910_ROM_END = __romPos;
    _2BE910_VRAM_END = .;

    AdventureModeSetup_ROM_START = __romPos;
    AdventureModeSetup_VRAM = ADDR(.AdventureModeSetup);
    .AdventureModeSetup 0x800F65E0 : AT(AdventureModeSetup_ROM_START) SUBALIGN(16)
    {
        AdventureModeSetup_TEXT_START = .;
        build/src/ovl_6A_AdventureModeSetup/2BF1A0.c.o(.text);
        build/src/ovl_6A_AdventureModeSetup/2BF1D0.c.o(.text);
        AdventureModeSetup_TEXT_END = .;
        AdventureModeSetup_TEXT_SIZE = ABSOLUTE(AdventureModeSetup_TEXT_END - AdventureModeSetup_TEXT_START);
        AdventureModeSetup_DATA_START = .;
        ovl_6A_AdventureModeSetup_2BF1A0_c = .;
        build/src/ovl_6A_AdventureModeSetup/2BF1A0.c.o(.data);
        ovl_6A_AdventureModeSetup_2BF1D0_c = .;
        build/src/ovl_6A_AdventureModeSetup/2BF1D0.c.o(.data);
        AdventureModeSetup_DATA_END = .;
        AdventureModeSetup_DATA_SIZE = ABSOLUTE(AdventureModeSetup_DATA_END - AdventureModeSetup_DATA_START);
        AdventureModeSetup_RODATA_START = .;
        build/src/ovl_6A_AdventureModeSetup/2BF1A0.c.o(.rodata);
        build/src/ovl_6A_AdventureModeSetup/2BF1D0.c.o(.rodata);
        AdventureModeSetup_RODATA_END = .;
        AdventureModeSetup_RODATA_SIZE = ABSOLUTE(AdventureModeSetup_RODATA_END - AdventureModeSetup_RODATA_START);
    }
    AdventureModeSetup_bss_VRAM = ADDR(.AdventureModeSetup_bss);
    .AdventureModeSetup_bss (NOLOAD) : SUBALIGN(16)
    {
        AdventureModeSetup_BSS_START = .;
        build/src/ovl_6A_AdventureModeSetup/2BF1A0.c.o(.bss);
        build/src/ovl_6A_AdventureModeSetup/2BF1D0.c.o(.bss);
        AdventureModeSetup_BSS_END = .;
        AdventureModeSetup_BSS_SIZE = ABSOLUTE(AdventureModeSetup_BSS_END - AdventureModeSetup_BSS_START);
    }
    __romPos += SIZEOF(.AdventureModeSetup);
    __romPos = ALIGN(__romPos, 16);
    AdventureModeSetup_ROM_END = __romPos;
    AdventureModeSetup_VRAM_END = .;

    _2CA400_ROM_START = __romPos;
    _2CA400_VRAM = ADDR(._2CA400);
    ._2CA400 : AT(_2CA400_ROM_START) SUBALIGN(16)
    {
        _2CA400_DATA_START = .;
        _2CA400_bin = .;
        build/assets/2CA400.bin.o(.data);
        _2CA400_DATA_END = .;
        _2CA400_DATA_SIZE = ABSOLUTE(_2CA400_DATA_END - _2CA400_DATA_START);
    }
    __romPos += SIZEOF(._2CA400);
    _2CA400_ROM_END = __romPos;
    _2CA400_VRAM_END = .;

    MinigameHouse_ROM_START = __romPos;
    MinigameHouse_VRAM = ADDR(.MinigameHouse);
    .MinigameHouse 0x800F65E0 : AT(MinigameHouse_ROM_START) SUBALIGN(16)
    {
        MinigameHouse_TEXT_START = .;
        build/src/ovl_6B_MinigameHouse/2CAA00.c.o(.text);
        MinigameHouse_TEXT_END = .;
        MinigameHouse_TEXT_SIZE = ABSOLUTE(MinigameHouse_TEXT_END - MinigameHouse_TEXT_START);
        MinigameHouse_DATA_START = .;
        ovl_6B_MinigameHouse_2CAA00_c = .;
        build/src/ovl_6B_MinigameHouse/2CAA00.c.o(.data);
        MinigameHouse_DATA_END = .;
        MinigameHouse_DATA_SIZE = ABSOLUTE(MinigameHouse_DATA_END - MinigameHouse_DATA_START);
        MinigameHouse_RODATA_START = .;
        build/src/ovl_6B_MinigameHouse/2CAA00.c.o(.rodata);
        MinigameHouse_RODATA_END = .;
        MinigameHouse_RODATA_SIZE = ABSOLUTE(MinigameHouse_RODATA_END - MinigameHouse_RODATA_START);
    }
    MinigameHouse_bss_VRAM = ADDR(.MinigameHouse_bss);
    .MinigameHouse_bss (NOLOAD) : SUBALIGN(16)
    {
        MinigameHouse_BSS_START = .;
        build/src/ovl_6B_MinigameHouse/2CAA00.c.o(.bss);
        MinigameHouse_BSS_END = .;
        MinigameHouse_BSS_SIZE = ABSOLUTE(MinigameHouse_BSS_END - MinigameHouse_BSS_START);
    }
    __romPos += SIZEOF(.MinigameHouse);
    __romPos = ALIGN(__romPos, 16);
    MinigameHouse_ROM_END = __romPos;
    MinigameHouse_VRAM_END = .;

    _2D42E0_ROM_START = __romPos;
    _2D42E0_VRAM = ADDR(._2D42E0);
    ._2D42E0 : AT(_2D42E0_ROM_START) SUBALIGN(16)
    {
        _2D42E0_DATA_START = .;
        _2D42E0_bin = .;
        build/assets/2D42E0.bin.o(.data);
        _2D42E0_DATA_END = .;
        _2D42E0_DATA_SIZE = ABSOLUTE(_2D42E0_DATA_END - _2D42E0_DATA_START);
    }
    __romPos += SIZEOF(._2D42E0);
    _2D42E0_ROM_END = __romPos;
    _2D42E0_VRAM_END = .;

    MushroomShop_ROM_START = __romPos;
    MushroomShop_VRAM = ADDR(.MushroomShop);
    .MushroomShop 0x800F65E0 : AT(MushroomShop_ROM_START) SUBALIGN(16)
    {
        MushroomShop_TEXT_START = .;
        build/src/ovl_6C_MushroomShop/2D4830.c.o(.text);
        MushroomShop_TEXT_END = .;
        MushroomShop_TEXT_SIZE = ABSOLUTE(MushroomShop_TEXT_END - MushroomShop_TEXT_START);
        MushroomShop_DATA_START = .;
        ovl_6C_MushroomShop_2D4830_c = .;
        build/src/ovl_6C_MushroomShop/2D4830.c.o(.data);
        MushroomShop_DATA_END = .;
        MushroomShop_DATA_SIZE = ABSOLUTE(MushroomShop_DATA_END - MushroomShop_DATA_START);
        MushroomShop_RODATA_START = .;
        build/src/ovl_6C_MushroomShop/2D4830.c.o(.rodata);
        MushroomShop_RODATA_END = .;
        MushroomShop_RODATA_SIZE = ABSOLUTE(MushroomShop_RODATA_END - MushroomShop_RODATA_START);
    }
    MushroomShop_bss_VRAM = ADDR(.MushroomShop_bss);
    .MushroomShop_bss (NOLOAD) : SUBALIGN(16)
    {
        MushroomShop_BSS_START = .;
        build/src/ovl_6C_MushroomShop/2D4830.c.o(.bss);
        MushroomShop_BSS_END = .;
        MushroomShop_BSS_SIZE = ABSOLUTE(MushroomShop_BSS_END - MushroomShop_BSS_START);
    }
    __romPos += SIZEOF(.MushroomShop);
    __romPos = ALIGN(__romPos, 16);
    MushroomShop_ROM_END = __romPos;
    MushroomShop_VRAM_END = .;

    _2D6BF0_ROM_START = __romPos;
    _2D6BF0_VRAM = ADDR(._2D6BF0);
    ._2D6BF0 : AT(_2D6BF0_ROM_START) SUBALIGN(16)
    {
        _2D6BF0_DATA_START = .;
        _2D6BF0_bin = .;
        build/assets/2D6BF0.bin.o(.data);
        _2D6BF0_DATA_END = .;
        _2D6BF0_DATA_SIZE = ABSOLUTE(_2D6BF0_DATA_END - _2D6BF0_DATA_START);
    }
    __romPos += SIZEOF(._2D6BF0);
    _2D6BF0_ROM_END = __romPos;
    _2D6BF0_VRAM_END = .;

    MushroomBank_ROM_START = __romPos;
    MushroomBank_VRAM = ADDR(.MushroomBank);
    .MushroomBank 0x800F65E0 : AT(MushroomBank_ROM_START) SUBALIGN(16)
    {
        MushroomBank_TEXT_START = .;
        build/src/ovl_6D_MushroomBank/2D6FC0.c.o(.text);
        MushroomBank_TEXT_END = .;
        MushroomBank_TEXT_SIZE = ABSOLUTE(MushroomBank_TEXT_END - MushroomBank_TEXT_START);
        MushroomBank_DATA_START = .;
        ovl_6D_MushroomBank_2D6FC0_c = .;
        build/src/ovl_6D_MushroomBank/2D6FC0.c.o(.data);
        MushroomBank_DATA_END = .;
        MushroomBank_DATA_SIZE = ABSOLUTE(MushroomBank_DATA_END - MushroomBank_DATA_START);
        MushroomBank_RODATA_START = .;
        build/src/ovl_6D_MushroomBank/2D6FC0.c.o(.rodata);
        MushroomBank_RODATA_END = .;
        MushroomBank_RODATA_SIZE = ABSOLUTE(MushroomBank_RODATA_END - MushroomBank_RODATA_START);
    }
    MushroomBank_bss_VRAM = ADDR(.MushroomBank_bss);
    .MushroomBank_bss (NOLOAD) : SUBALIGN(16)
    {
        MushroomBank_BSS_START = .;
        build/src/ovl_6D_MushroomBank/2D6FC0.c.o(.bss);
        MushroomBank_BSS_END = .;
        MushroomBank_BSS_SIZE = ABSOLUTE(MushroomBank_BSS_END - MushroomBank_BSS_START);
    }
    __romPos += SIZEOF(.MushroomBank);
    __romPos = ALIGN(__romPos, 16);
    MushroomBank_ROM_END = __romPos;
    MushroomBank_VRAM_END = .;

    _2D92A0_ROM_START = __romPos;
    _2D92A0_VRAM = ADDR(._2D92A0);
    ._2D92A0 : AT(_2D92A0_ROM_START) SUBALIGN(16)
    {
        _2D92A0_DATA_START = .;
        _2D92A0_bin = .;
        build/assets/2D92A0.bin.o(.data);
        _2D92A0_DATA_END = .;
        _2D92A0_DATA_SIZE = ABSOLUTE(_2D92A0_DATA_END - _2D92A0_DATA_START);
    }
    __romPos += SIZEOF(._2D92A0);
    _2D92A0_ROM_END = __romPos;
    _2D92A0_VRAM_END = .;

    OptionsHouse_ROM_START = __romPos;
    OptionsHouse_VRAM = ADDR(.OptionsHouse);
    .OptionsHouse 0x800F65E0 : AT(OptionsHouse_ROM_START) SUBALIGN(16)
    {
        OptionsHouse_TEXT_START = .;
        build/src/ovl_6E_OptionsHouse/2D9570.c.o(.text);
        OptionsHouse_TEXT_END = .;
        OptionsHouse_TEXT_SIZE = ABSOLUTE(OptionsHouse_TEXT_END - OptionsHouse_TEXT_START);
        OptionsHouse_DATA_START = .;
        ovl_6E_OptionsHouse_2D9570_c = .;
        build/src/ovl_6E_OptionsHouse/2D9570.c.o(.data);
        OptionsHouse_DATA_END = .;
        OptionsHouse_DATA_SIZE = ABSOLUTE(OptionsHouse_DATA_END - OptionsHouse_DATA_START);
        OptionsHouse_RODATA_START = .;
        build/src/ovl_6E_OptionsHouse/2D9570.c.o(.rodata);
        OptionsHouse_RODATA_END = .;
        OptionsHouse_RODATA_SIZE = ABSOLUTE(OptionsHouse_RODATA_END - OptionsHouse_RODATA_START);
    }
    OptionsHouse_bss_VRAM = ADDR(.OptionsHouse_bss);
    .OptionsHouse_bss (NOLOAD) : SUBALIGN(16)
    {
        OptionsHouse_BSS_START = .;
        build/src/ovl_6E_OptionsHouse/2D9570.c.o(.bss);
        OptionsHouse_BSS_END = .;
        OptionsHouse_BSS_SIZE = ABSOLUTE(OptionsHouse_BSS_END - OptionsHouse_BSS_START);
    }
    __romPos += SIZEOF(.OptionsHouse);
    __romPos = ALIGN(__romPos, 16);
    OptionsHouse_ROM_END = __romPos;
    OptionsHouse_VRAM_END = .;

    _2DAE30_ROM_START = __romPos;
    _2DAE30_VRAM = ADDR(._2DAE30);
    ._2DAE30 : AT(_2DAE30_ROM_START) SUBALIGN(16)
    {
        _2DAE30_DATA_START = .;
        _2DAE30_bin = .;
        build/assets/2DAE30.bin.o(.data);
        _2DAE30_DATA_END = .;
        _2DAE30_DATA_SIZE = ABSOLUTE(_2DAE30_DATA_END - _2DAE30_DATA_START);
    }
    __romPos += SIZEOF(._2DAE30);
    _2DAE30_ROM_END = __romPos;
    _2DAE30_VRAM_END = .;

    MinigameInstructions_ROM_START = __romPos;
    MinigameInstructions_VRAM = ADDR(.MinigameInstructions);
    .MinigameInstructions 0x800F65E0 : AT(MinigameInstructions_ROM_START) SUBALIGN(16)
    {
        MinigameInstructions_TEXT_START = .;
        build/src/ovl_6F_MinigameInstructions/2DB2A0.c.o(.text);
        build/src/ovl_6F_MinigameInstructions/2DB2D0.c.o(.text);
        build/src/ovl_6F_MinigameInstructions/2DF200.c.o(.text);
        build/src/ovl_6F_MinigameInstructions/2E8220.c.o(.text);
        MinigameInstructions_TEXT_END = .;
        MinigameInstructions_TEXT_SIZE = ABSOLUTE(MinigameInstructions_TEXT_END - MinigameInstructions_TEXT_START);
        MinigameInstructions_DATA_START = .;
        ovl_6F_MinigameInstructions_2DB2A0_c = .;
        build/src/ovl_6F_MinigameInstructions/2DB2A0.c.o(.data);
        ovl_6F_MinigameInstructions_2DB2D0_c = .;
        build/src/ovl_6F_MinigameInstructions/2DB2D0.c.o(.data);
        ovl_6F_MinigameInstructions_2DF200_c = .;
        build/src/ovl_6F_MinigameInstructions/2DF200.c.o(.data);
        ovl_6F_MinigameInstructions_2E8220_c = .;
        build/src/ovl_6F_MinigameInstructions/2E8220.c.o(.data);
        MinigameInstructions_DATA_END = .;
        MinigameInstructions_DATA_SIZE = ABSOLUTE(MinigameInstructions_DATA_END - MinigameInstructions_DATA_START);
        MinigameInstructions_RODATA_START = .;
        build/src/ovl_6F_MinigameInstructions/2DB2A0.c.o(.rodata);
        build/src/ovl_6F_MinigameInstructions/2DB2D0.c.o(.rodata);
        build/src/ovl_6F_MinigameInstructions/2DF200.c.o(.rodata);
        build/src/ovl_6F_MinigameInstructions/2E8220.c.o(.rodata);
        MinigameInstructions_RODATA_END = .;
        MinigameInstructions_RODATA_SIZE = ABSOLUTE(MinigameInstructions_RODATA_END - MinigameInstructions_RODATA_START);
    }
    MinigameInstructions_bss_VRAM = ADDR(.MinigameInstructions_bss);
    .MinigameInstructions_bss (NOLOAD) : SUBALIGN(16)
    {
        MinigameInstructions_BSS_START = .;
        build/src/ovl_6F_MinigameInstructions/2DB2A0.c.o(.bss);
        build/src/ovl_6F_MinigameInstructions/2DB2D0.c.o(.bss);
        build/src/ovl_6F_MinigameInstructions/2DF200.c.o(.bss);
        build/src/ovl_6F_MinigameInstructions/2E8220.c.o(.bss);
        MinigameInstructions_BSS_END = .;
        MinigameInstructions_BSS_SIZE = ABSOLUTE(MinigameInstructions_BSS_END - MinigameInstructions_BSS_START);
    }
    __romPos += SIZEOF(.MinigameInstructions);
    __romPos = ALIGN(__romPos, 16);
    MinigameInstructions_ROM_END = __romPos;
    MinigameInstructions_VRAM_END = .;

    _2F3190_ROM_START = __romPos;
    _2F3190_VRAM = ADDR(._2F3190);
    ._2F3190 : AT(_2F3190_ROM_START) SUBALIGN(16)
    {
        _2F3190_DATA_START = .;
        _2F3190_bin = .;
        build/assets/2F3190.bin.o(.data);
        _2F3190_DATA_END = .;
        _2F3190_DATA_SIZE = ABSOLUTE(_2F3190_DATA_END - _2F3190_DATA_START);
    }
    __romPos += SIZEOF(._2F3190);
    _2F3190_ROM_END = __romPos;
    _2F3190_VRAM_END = .;

    TestingRoom_ROM_START = __romPos;
    TestingRoom_VRAM = ADDR(.TestingRoom);
    .TestingRoom 0x800F65E0 : AT(TestingRoom_ROM_START) SUBALIGN(16)
    {
        TestingRoom_TEXT_START = .;
        build/src/ovl_70_TestingRoom/2F40C0.c.o(.text);
        TestingRoom_TEXT_END = .;
        TestingRoom_TEXT_SIZE = ABSOLUTE(TestingRoom_TEXT_END - TestingRoom_TEXT_START);
        TestingRoom_DATA_START = .;
        ovl_70_TestingRoom_2F40C0_c = .;
        build/src/ovl_70_TestingRoom/2F40C0.c.o(.data);
        TestingRoom_DATA_END = .;
        TestingRoom_DATA_SIZE = ABSOLUTE(TestingRoom_DATA_END - TestingRoom_DATA_START);
        TestingRoom_RODATA_START = .;
        build/src/ovl_70_TestingRoom/2F40C0.c.o(.rodata);
        TestingRoom_RODATA_END = .;
        TestingRoom_RODATA_SIZE = ABSOLUTE(TestingRoom_RODATA_END - TestingRoom_RODATA_START);
    }
    TestingRoom_bss_VRAM = ADDR(.TestingRoom_bss);
    .TestingRoom_bss (NOLOAD) : SUBALIGN(16)
    {
        TestingRoom_BSS_START = .;
        build/src/ovl_70_TestingRoom/2F40C0.c.o(.bss);
        TestingRoom_BSS_END = .;
        TestingRoom_BSS_SIZE = ABSOLUTE(TestingRoom_BSS_END - TestingRoom_BSS_START);
    }
    __romPos += SIZEOF(.TestingRoom);
    __romPos = ALIGN(__romPos, 16);
    TestingRoom_ROM_END = __romPos;
    TestingRoom_VRAM_END = .;

    _2F6F70_ROM_START = __romPos;
    _2F6F70_VRAM = ADDR(._2F6F70);
    ._2F6F70 : AT(_2F6F70_ROM_START) SUBALIGN(16)
    {
        _2F6F70_DATA_START = .;
        _2F6F70_bin = .;
        build/assets/2F6F70.bin.o(.data);
        _2F6F70_DATA_END = .;
        _2F6F70_DATA_SIZE = ABSOLUTE(_2F6F70_DATA_END - _2F6F70_DATA_START);
    }
    __romPos += SIZEOF(._2F6F70);
    _2F6F70_ROM_END = __romPos;
    _2F6F70_VRAM_END = .;

    MinigameIslandOverworld_ROM_START = __romPos;
    MinigameIslandOverworld_VRAM = ADDR(.MinigameIslandOverworld);
    .MinigameIslandOverworld 0x800F65E0 : AT(MinigameIslandOverworld_ROM_START) SUBALIGN(16)
    {
        MinigameIslandOverworld_TEXT_START = .;
        build/src/ovl_71_MinigameIslandOverworld/2F6FB0.c.o(.text);
        build/src/ovl_71_MinigameIslandOverworld/2F6FE0.c.o(.text);
        MinigameIslandOverworld_TEXT_END = .;
        MinigameIslandOverworld_TEXT_SIZE = ABSOLUTE(MinigameIslandOverworld_TEXT_END - MinigameIslandOverworld_TEXT_START);
        MinigameIslandOverworld_DATA_START = .;
        ovl_71_MinigameIslandOverworld_2F6FB0_c = .;
        build/src/ovl_71_MinigameIslandOverworld/2F6FB0.c.o(.data);
        ovl_71_MinigameIslandOverworld_2F6FE0_c = .;
        build/src/ovl_71_MinigameIslandOverworld/2F6FE0.c.o(.data);
        MinigameIslandOverworld_DATA_END = .;
        MinigameIslandOverworld_DATA_SIZE = ABSOLUTE(MinigameIslandOverworld_DATA_END - MinigameIslandOverworld_DATA_START);
        MinigameIslandOverworld_RODATA_START = .;
        build/src/ovl_71_MinigameIslandOverworld/2F6FB0.c.o(.rodata);
        build/src/ovl_71_MinigameIslandOverworld/2F6FE0.c.o(.rodata);
        MinigameIslandOverworld_RODATA_END = .;
        MinigameIslandOverworld_RODATA_SIZE = ABSOLUTE(MinigameIslandOverworld_RODATA_END - MinigameIslandOverworld_RODATA_START);
    }
    MinigameIslandOverworld_bss_VRAM = ADDR(.MinigameIslandOverworld_bss);
    .MinigameIslandOverworld_bss (NOLOAD) : SUBALIGN(16)
    {
        MinigameIslandOverworld_BSS_START = .;
        build/src/ovl_71_MinigameIslandOverworld/2F6FB0.c.o(.bss);
        build/src/ovl_71_MinigameIslandOverworld/2F6FE0.c.o(.bss);
        MinigameIslandOverworld_BSS_END = .;
        MinigameIslandOverworld_BSS_SIZE = ABSOLUTE(MinigameIslandOverworld_BSS_END - MinigameIslandOverworld_BSS_START);
    }
    __romPos += SIZEOF(.MinigameIslandOverworld);
    __romPos = ALIGN(__romPos, 16);
    MinigameIslandOverworld_ROM_END = __romPos;
    MinigameIslandOverworld_VRAM_END = .;

    _2F7060_ROM_START = __romPos;
    _2F7060_VRAM = ADDR(._2F7060);
    ._2F7060 : AT(_2F7060_ROM_START) SUBALIGN(16)
    {
        _2F7060_DATA_START = .;
        _2F7060_bin = .;
        build/assets/2F7060.bin.o(.data);
        _2F7060_DATA_END = .;
        _2F7060_DATA_SIZE = ABSOLUTE(_2F7060_DATA_END - _2F7060_DATA_START);
    }
    __romPos += SIZEOF(._2F7060);
    _2F7060_ROM_END = __romPos;
    _2F7060_VRAM_END = .;

    MinigameIslandOverworldCopy_ROM_START = __romPos;
    MinigameIslandOverworldCopy_VRAM = ADDR(.MinigameIslandOverworldCopy);
    .MinigameIslandOverworldCopy 0x800F65E0 : AT(MinigameIslandOverworldCopy_ROM_START) SUBALIGN(16)
    {
        MinigameIslandOverworldCopy_TEXT_START = .;
        build/src/ovl_72_MinigameIslandOverworldCopy/2F7080.c.o(.text);
        build/src/ovl_72_MinigameIslandOverworldCopy/2F70B0.c.o(.text);
        MinigameIslandOverworldCopy_TEXT_END = .;
        MinigameIslandOverworldCopy_TEXT_SIZE = ABSOLUTE(MinigameIslandOverworldCopy_TEXT_END - MinigameIslandOverworldCopy_TEXT_START);
        MinigameIslandOverworldCopy_DATA_START = .;
        ovl_72_MinigameIslandOverworldCopy_2F7080_c = .;
        build/src/ovl_72_MinigameIslandOverworldCopy/2F7080.c.o(.data);
        ovl_72_MinigameIslandOverworldCopy_2F70B0_c = .;
        build/src/ovl_72_MinigameIslandOverworldCopy/2F70B0.c.o(.data);
        MinigameIslandOverworldCopy_DATA_END = .;
        MinigameIslandOverworldCopy_DATA_SIZE = ABSOLUTE(MinigameIslandOverworldCopy_DATA_END - MinigameIslandOverworldCopy_DATA_START);
        MinigameIslandOverworldCopy_RODATA_START = .;
        build/src/ovl_72_MinigameIslandOverworldCopy/2F7080.c.o(.rodata);
        build/src/ovl_72_MinigameIslandOverworldCopy/2F70B0.c.o(.rodata);
        MinigameIslandOverworldCopy_RODATA_END = .;
        MinigameIslandOverworldCopy_RODATA_SIZE = ABSOLUTE(MinigameIslandOverworldCopy_RODATA_END - MinigameIslandOverworldCopy_RODATA_START);
    }
    MinigameIslandOverworldCopy_bss_VRAM = ADDR(.MinigameIslandOverworldCopy_bss);
    .MinigameIslandOverworldCopy_bss (NOLOAD) : SUBALIGN(16)
    {
        MinigameIslandOverworldCopy_BSS_START = .;
        build/src/ovl_72_MinigameIslandOverworldCopy/2F7080.c.o(.bss);
        build/src/ovl_72_MinigameIslandOverworldCopy/2F70B0.c.o(.bss);
        MinigameIslandOverworldCopy_BSS_END = .;
        MinigameIslandOverworldCopy_BSS_SIZE = ABSOLUTE(MinigameIslandOverworldCopy_BSS_END - MinigameIslandOverworldCopy_BSS_START);
    }
    __romPos += SIZEOF(.MinigameIslandOverworldCopy);
    __romPos = ALIGN(__romPos, 16);
    MinigameIslandOverworldCopy_ROM_END = __romPos;
    MinigameIslandOverworldCopy_VRAM_END = .;

    _2F8B50_ROM_START = __romPos;
    _2F8B50_VRAM = ADDR(._2F8B50);
    ._2F8B50 : AT(_2F8B50_ROM_START) SUBALIGN(16)
    {
        _2F8B50_DATA_START = .;
        _2F8B50_bin = .;
        build/assets/2F8B50.bin.o(.data);
        _2F8B50_DATA_END = .;
        _2F8B50_DATA_SIZE = ABSOLUTE(_2F8B50_DATA_END - _2F8B50_DATA_START);
    }
    __romPos += SIZEOF(._2F8B50);
    _2F8B50_ROM_END = __romPos;
    _2F8B50_VRAM_END = .;

    name_73_ROM_START = __romPos;
    name_73_VRAM = ADDR(.name_73);
    .name_73 0x800F65E0 : AT(name_73_ROM_START) SUBALIGN(16)
    {
        name_73_TEXT_START = .;
        build/src/ovl_73/2F9040.c.o(.text);
        build/src/ovl_73/2F9070.c.o(.text);
        name_73_TEXT_END = .;
        name_73_TEXT_SIZE = ABSOLUTE(name_73_TEXT_END - name_73_TEXT_START);
        name_73_DATA_START = .;
        ovl_73_2F9040_c = .;
        build/src/ovl_73/2F9040.c.o(.data);
        ovl_73_2F9070_c = .;
        build/src/ovl_73/2F9070.c.o(.data);
        name_73_DATA_END = .;
        name_73_DATA_SIZE = ABSOLUTE(name_73_DATA_END - name_73_DATA_START);
        name_73_RODATA_START = .;
        build/src/ovl_73/2F9040.c.o(.rodata);
        build/src/ovl_73/2F9070.c.o(.rodata);
        name_73_RODATA_END = .;
        name_73_RODATA_SIZE = ABSOLUTE(name_73_RODATA_END - name_73_RODATA_START);
    }
    name_73_bss_VRAM = ADDR(.name_73_bss);
    .name_73_bss (NOLOAD) : SUBALIGN(16)
    {
        name_73_BSS_START = .;
        build/src/ovl_73/2F9040.c.o(.bss);
        build/src/ovl_73/2F9070.c.o(.bss);
        name_73_BSS_END = .;
        name_73_BSS_SIZE = ABSOLUTE(name_73_BSS_END - name_73_BSS_START);
    }
    __romPos += SIZEOF(.name_73);
    __romPos = ALIGN(__romPos, 16);
    name_73_ROM_END = __romPos;
    name_73_VRAM_END = .;

    _2F95F0_ROM_START = __romPos;
    _2F95F0_VRAM = ADDR(._2F95F0);
    ._2F95F0 : AT(_2F95F0_ROM_START) SUBALIGN(16)
    {
        _2F95F0_DATA_START = .;
        _2F95F0_bin = .;
        build/assets/2F95F0.bin.o(.data);
        _2F95F0_DATA_END = .;
        _2F95F0_DATA_SIZE = ABSOLUTE(_2F95F0_DATA_END - _2F95F0_DATA_START);
    }
    __romPos += SIZEOF(._2F95F0);
    _2F95F0_ROM_END = __romPos;
    _2F95F0_VRAM_END = .;

    name_74_ROM_START = __romPos;
    name_74_VRAM = ADDR(.name_74);
    .name_74 0x800F65E0 : AT(name_74_ROM_START) SUBALIGN(16)
    {
        name_74_TEXT_START = .;
        build/src/ovl_74/2F96E0.c.o(.text);
        build/src/ovl_74/2F9710.c.o(.text);
        name_74_TEXT_END = .;
        name_74_TEXT_SIZE = ABSOLUTE(name_74_TEXT_END - name_74_TEXT_START);
        name_74_DATA_START = .;
        ovl_74_2F96E0_c = .;
        build/src/ovl_74/2F96E0.c.o(.data);
        ovl_74_2F9710_c = .;
        build/src/ovl_74/2F9710.c.o(.data);
        name_74_DATA_END = .;
        name_74_DATA_SIZE = ABSOLUTE(name_74_DATA_END - name_74_DATA_START);
        name_74_RODATA_START = .;
        build/src/ovl_74/2F96E0.c.o(.rodata);
        build/src/ovl_74/2F9710.c.o(.rodata);
        name_74_RODATA_END = .;
        name_74_RODATA_SIZE = ABSOLUTE(name_74_RODATA_END - name_74_RODATA_START);
    }
    name_74_bss_VRAM = ADDR(.name_74_bss);
    .name_74_bss (NOLOAD) : SUBALIGN(16)
    {
        name_74_BSS_START = .;
        build/src/ovl_74/2F96E0.c.o(.bss);
        build/src/ovl_74/2F9710.c.o(.bss);
        name_74_BSS_END = .;
        name_74_BSS_SIZE = ABSOLUTE(name_74_BSS_END - name_74_BSS_START);
    }
    __romPos += SIZEOF(.name_74);
    __romPos = ALIGN(__romPos, 16);
    name_74_ROM_END = __romPos;
    name_74_VRAM_END = .;

    _2F9FE0_ROM_START = __romPos;
    _2F9FE0_VRAM = ADDR(._2F9FE0);
    ._2F9FE0 : AT(_2F9FE0_ROM_START) SUBALIGN(16)
    {
        _2F9FE0_DATA_START = .;
        _2F9FE0_bin = .;
        build/assets/2F9FE0.bin.o(.data);
        _2F9FE0_DATA_END = .;
        _2F9FE0_DATA_SIZE = ABSOLUTE(_2F9FE0_DATA_END - _2F9FE0_DATA_START);
    }
    __romPos += SIZEOF(._2F9FE0);
    _2F9FE0_ROM_END = __romPos;
    _2F9FE0_VRAM_END = .;

    name_75_ROM_START = __romPos;
    name_75_VRAM = ADDR(.name_75);
    .name_75 0x800F65E0 : AT(name_75_ROM_START) SUBALIGN(16)
    {
        name_75_TEXT_START = .;
        build/src/ovl_75/2FA120.c.o(.text);
        build/src/ovl_75/2FA150.c.o(.text);
        name_75_TEXT_END = .;
        name_75_TEXT_SIZE = ABSOLUTE(name_75_TEXT_END - name_75_TEXT_START);
        name_75_DATA_START = .;
        ovl_75_2FA120_c = .;
        build/src/ovl_75/2FA120.c.o(.data);
        ovl_75_2FA150_c = .;
        build/src/ovl_75/2FA150.c.o(.data);
        name_75_DATA_END = .;
        name_75_DATA_SIZE = ABSOLUTE(name_75_DATA_END - name_75_DATA_START);
        name_75_RODATA_START = .;
        build/src/ovl_75/2FA120.c.o(.rodata);
        build/src/ovl_75/2FA150.c.o(.rodata);
        name_75_RODATA_END = .;
        name_75_RODATA_SIZE = ABSOLUTE(name_75_RODATA_END - name_75_RODATA_START);
    }
    name_75_bss_VRAM = ADDR(.name_75_bss);
    .name_75_bss (NOLOAD) : SUBALIGN(16)
    {
        name_75_BSS_START = .;
        build/src/ovl_75/2FA120.c.o(.bss);
        build/src/ovl_75/2FA150.c.o(.bss);
        name_75_BSS_END = .;
        name_75_BSS_SIZE = ABSOLUTE(name_75_BSS_END - name_75_BSS_START);
    }
    __romPos += SIZEOF(.name_75);
    __romPos = ALIGN(__romPos, 16);
    name_75_ROM_END = __romPos;
    name_75_VRAM_END = .;

    _2FA760_ROM_START = __romPos;
    _2FA760_VRAM = ADDR(._2FA760);
    ._2FA760 : AT(_2FA760_ROM_START) SUBALIGN(16)
    {
        _2FA760_DATA_START = .;
        _2FA760_bin = .;
        build/assets/2FA760.bin.o(.data);
        _2FA760_DATA_END = .;
        _2FA760_DATA_SIZE = ABSOLUTE(_2FA760_DATA_END - _2FA760_DATA_START);
    }
    __romPos += SIZEOF(._2FA760);
    _2FA760_ROM_END = __romPos;
    _2FA760_VRAM_END = .;

    name_76_ROM_START = __romPos;
    name_76_VRAM = ADDR(.name_76);
    .name_76 0x800F65E0 : AT(name_76_ROM_START) SUBALIGN(16)
    {
        name_76_TEXT_START = .;
        build/src/ovl_76/2FA8A0.c.o(.text);
        build/src/ovl_76/2FA8D0.c.o(.text);
        name_76_TEXT_END = .;
        name_76_TEXT_SIZE = ABSOLUTE(name_76_TEXT_END - name_76_TEXT_START);
        name_76_DATA_START = .;
        ovl_76_2FA8A0_c = .;
        build/src/ovl_76/2FA8A0.c.o(.data);
        ovl_76_2FA8D0_c = .;
        build/src/ovl_76/2FA8D0.c.o(.data);
        name_76_DATA_END = .;
        name_76_DATA_SIZE = ABSOLUTE(name_76_DATA_END - name_76_DATA_START);
        name_76_RODATA_START = .;
        build/src/ovl_76/2FA8A0.c.o(.rodata);
        build/src/ovl_76/2FA8D0.c.o(.rodata);
        name_76_RODATA_END = .;
        name_76_RODATA_SIZE = ABSOLUTE(name_76_RODATA_END - name_76_RODATA_START);
    }
    name_76_bss_VRAM = ADDR(.name_76_bss);
    .name_76_bss (NOLOAD) : SUBALIGN(16)
    {
        name_76_BSS_START = .;
        build/src/ovl_76/2FA8A0.c.o(.bss);
        build/src/ovl_76/2FA8D0.c.o(.bss);
        name_76_BSS_END = .;
        name_76_BSS_SIZE = ABSOLUTE(name_76_BSS_END - name_76_BSS_START);
    }
    __romPos += SIZEOF(.name_76);
    __romPos = ALIGN(__romPos, 16);
    name_76_ROM_END = __romPos;
    name_76_VRAM_END = .;

    _2FAC80_ROM_START = __romPos;
    _2FAC80_VRAM = ADDR(._2FAC80);
    ._2FAC80 : AT(_2FAC80_ROM_START) SUBALIGN(16)
    {
        _2FAC80_DATA_START = .;
        _2FAC80_bin = .;
        build/assets/2FAC80.bin.o(.data);
        _2FAC80_DATA_END = .;
        _2FAC80_DATA_SIZE = ABSOLUTE(_2FAC80_DATA_END - _2FAC80_DATA_START);
    }
    __romPos += SIZEOF(._2FAC80);
    _2FAC80_ROM_END = __romPos;
    _2FAC80_VRAM_END = .;

    MinigameIslandFinish_ROM_START = __romPos;
    MinigameIslandFinish_VRAM = ADDR(.MinigameIslandFinish);
    .MinigameIslandFinish 0x800F65E0 : AT(MinigameIslandFinish_ROM_START) SUBALIGN(16)
    {
        MinigameIslandFinish_TEXT_START = .;
        build/src/ovl_77_MinigameIslandFinish/2FADB0.c.o(.text);
        MinigameIslandFinish_TEXT_END = .;
        MinigameIslandFinish_TEXT_SIZE = ABSOLUTE(MinigameIslandFinish_TEXT_END - MinigameIslandFinish_TEXT_START);
        MinigameIslandFinish_DATA_START = .;
        ovl_77_MinigameIslandFinish_2FADB0_c = .;
        build/src/ovl_77_MinigameIslandFinish/2FADB0.c.o(.data);
        MinigameIslandFinish_DATA_END = .;
        MinigameIslandFinish_DATA_SIZE = ABSOLUTE(MinigameIslandFinish_DATA_END - MinigameIslandFinish_DATA_START);
        MinigameIslandFinish_RODATA_START = .;
        build/src/ovl_77_MinigameIslandFinish/2FADB0.c.o(.rodata);
        MinigameIslandFinish_RODATA_END = .;
        MinigameIslandFinish_RODATA_SIZE = ABSOLUTE(MinigameIslandFinish_RODATA_END - MinigameIslandFinish_RODATA_START);
    }
    MinigameIslandFinish_bss_VRAM = ADDR(.MinigameIslandFinish_bss);
    .MinigameIslandFinish_bss (NOLOAD) : SUBALIGN(16)
    {
        MinigameIslandFinish_BSS_START = .;
        build/src/ovl_77_MinigameIslandFinish/2FADB0.c.o(.bss);
        MinigameIslandFinish_BSS_END = .;
        MinigameIslandFinish_BSS_SIZE = ABSOLUTE(MinigameIslandFinish_BSS_END - MinigameIslandFinish_BSS_START);
    }
    __romPos += SIZEOF(.MinigameIslandFinish);
    __romPos = ALIGN(__romPos, 16);
    MinigameIslandFinish_ROM_END = __romPos;
    MinigameIslandFinish_VRAM_END = .;

    _2FD7E0_ROM_START = __romPos;
    _2FD7E0_VRAM = ADDR(._2FD7E0);
    ._2FD7E0 : AT(_2FD7E0_ROM_START) SUBALIGN(16)
    {
        _2FD7E0_DATA_START = .;
        _2FD7E0_bin = .;
        build/assets/2FD7E0.bin.o(.data);
        _2FD7E0_DATA_END = .;
        _2FD7E0_DATA_SIZE = ABSOLUTE(_2FD7E0_DATA_END - _2FD7E0_DATA_START);
    }
    __romPos += SIZEOF(._2FD7E0);
    _2FD7E0_ROM_END = __romPos;
    _2FD7E0_VRAM_END = .;

    MinigameIslandStart_ROM_START = __romPos;
    MinigameIslandStart_VRAM = ADDR(.MinigameIslandStart);
    .MinigameIslandStart 0x800F65E0 : AT(MinigameIslandStart_ROM_START) SUBALIGN(16)
    {
        MinigameIslandStart_TEXT_START = .;
        build/src/ovl_78_MinigameIslandStart/2FD940.c.o(.text);
        MinigameIslandStart_TEXT_END = .;
        MinigameIslandStart_TEXT_SIZE = ABSOLUTE(MinigameIslandStart_TEXT_END - MinigameIslandStart_TEXT_START);
        MinigameIslandStart_DATA_START = .;
        ovl_78_MinigameIslandStart_2FD940_c = .;
        build/src/ovl_78_MinigameIslandStart/2FD940.c.o(.data);
        MinigameIslandStart_DATA_END = .;
        MinigameIslandStart_DATA_SIZE = ABSOLUTE(MinigameIslandStart_DATA_END - MinigameIslandStart_DATA_START);
        MinigameIslandStart_RODATA_START = .;
        build/src/ovl_78_MinigameIslandStart/2FD940.c.o(.rodata);
        MinigameIslandStart_RODATA_END = .;
        MinigameIslandStart_RODATA_SIZE = ABSOLUTE(MinigameIslandStart_RODATA_END - MinigameIslandStart_RODATA_START);
    }
    MinigameIslandStart_bss_VRAM = ADDR(.MinigameIslandStart_bss);
    .MinigameIslandStart_bss (NOLOAD) : SUBALIGN(16)
    {
        MinigameIslandStart_BSS_START = .;
        build/src/ovl_78_MinigameIslandStart/2FD940.c.o(.bss);
        MinigameIslandStart_BSS_END = .;
        MinigameIslandStart_BSS_SIZE = ABSOLUTE(MinigameIslandStart_BSS_END - MinigameIslandStart_BSS_START);
    }
    __romPos += SIZEOF(.MinigameIslandStart);
    __romPos = ALIGN(__romPos, 16);
    MinigameIslandStart_ROM_END = __romPos;
    MinigameIslandStart_VRAM_END = .;

    _300430_ROM_START = __romPos;
    _300430_VRAM = ADDR(._300430);
    ._300430 : AT(_300430_ROM_START) SUBALIGN(16)
    {
        _300430_DATA_START = .;
        _300430_bin = .;
        build/assets/300430.bin.o(.data);
        _300430_DATA_END = .;
        _300430_DATA_SIZE = ABSOLUTE(_300430_DATA_END - _300430_DATA_START);
    }
    __romPos += SIZEOF(._300430);
    _300430_ROM_END = __romPos;
    _300430_VRAM_END = .;

    name_79_ROM_START = __romPos;
    name_79_VRAM = ADDR(.name_79);
    .name_79 0x800F65E0 : AT(name_79_ROM_START) SUBALIGN(16)
    {
        name_79_TEXT_START = .;
        build/src/ovl_79/3005B0.c.o(.text);
        name_79_TEXT_END = .;
        name_79_TEXT_SIZE = ABSOLUTE(name_79_TEXT_END - name_79_TEXT_START);
        name_79_DATA_START = .;
        ovl_79_3005B0_c = .;
        build/src/ovl_79/3005B0.c.o(.data);
        name_79_DATA_END = .;
        name_79_DATA_SIZE = ABSOLUTE(name_79_DATA_END - name_79_DATA_START);
        name_79_RODATA_START = .;
        build/src/ovl_79/3005B0.c.o(.rodata);
        name_79_RODATA_END = .;
        name_79_RODATA_SIZE = ABSOLUTE(name_79_RODATA_END - name_79_RODATA_START);
    }
    name_79_bss_VRAM = ADDR(.name_79_bss);
    .name_79_bss (NOLOAD) : SUBALIGN(16)
    {
        name_79_BSS_START = .;
        build/src/ovl_79/3005B0.c.o(.bss);
        name_79_BSS_END = .;
        name_79_BSS_SIZE = ABSOLUTE(name_79_BSS_END - name_79_BSS_START);
    }
    __romPos += SIZEOF(.name_79);
    __romPos = ALIGN(__romPos, 16);
    name_79_ROM_END = __romPos;
    name_79_VRAM_END = .;

    _301410_ROM_START = __romPos;
    _301410_VRAM = ADDR(._301410);
    ._301410 : AT(_301410_ROM_START) SUBALIGN(16)
    {
        _301410_DATA_START = .;
        _301410_bin = .;
        build/assets/301410.bin.o(.data);
        _301410_DATA_END = .;
        _301410_DATA_SIZE = ABSOLUTE(_301410_DATA_END - _301410_DATA_START);
    }
    __romPos += SIZEOF(._301410);
    _301410_ROM_END = __romPos;
    _301410_VRAM_END = .;

    DebugRandomPlay_ROM_START = __romPos;
    DebugRandomPlay_VRAM = ADDR(.DebugRandomPlay);
    .DebugRandomPlay 0x800F65E0 : AT(DebugRandomPlay_ROM_START) SUBALIGN(16)
    {
        DebugRandomPlay_TEXT_START = .;
        build/src/ovl_7A_DebugRandomPlay/3014C0.c.o(.text);
        DebugRandomPlay_TEXT_END = .;
        DebugRandomPlay_TEXT_SIZE = ABSOLUTE(DebugRandomPlay_TEXT_END - DebugRandomPlay_TEXT_START);
        DebugRandomPlay_DATA_START = .;
        ovl_7A_DebugRandomPlay_3014C0_c = .;
        build/src/ovl_7A_DebugRandomPlay/3014C0.c.o(.data);
        DebugRandomPlay_DATA_END = .;
        DebugRandomPlay_DATA_SIZE = ABSOLUTE(DebugRandomPlay_DATA_END - DebugRandomPlay_DATA_START);
        DebugRandomPlay_RODATA_START = .;
        build/src/ovl_7A_DebugRandomPlay/3014C0.c.o(.rodata);
        DebugRandomPlay_RODATA_END = .;
        DebugRandomPlay_RODATA_SIZE = ABSOLUTE(DebugRandomPlay_RODATA_END - DebugRandomPlay_RODATA_START);
    }
    DebugRandomPlay_bss_VRAM = ADDR(.DebugRandomPlay_bss);
    .DebugRandomPlay_bss (NOLOAD) : SUBALIGN(16)
    {
        DebugRandomPlay_BSS_START = .;
        build/src/ovl_7A_DebugRandomPlay/3014C0.c.o(.bss);
        DebugRandomPlay_BSS_END = .;
        DebugRandomPlay_BSS_SIZE = ABSOLUTE(DebugRandomPlay_BSS_END - DebugRandomPlay_BSS_START);
    }
    __romPos += SIZEOF(.DebugRandomPlay);
    __romPos = ALIGN(__romPos, 16);
    DebugRandomPlay_ROM_END = __romPos;
    DebugRandomPlay_VRAM_END = .;

    _302C90_ROM_START = __romPos;
    _302C90_VRAM = ADDR(._302C90);
    ._302C90 : AT(_302C90_ROM_START) SUBALIGN(16)
    {
        _302C90_DATA_START = .;
        _302C90_bin = .;
        build/assets/302C90.bin.o(.data);
        _302C90_DATA_END = .;
        _302C90_DATA_SIZE = ABSOLUTE(_302C90_DATA_END - _302C90_DATA_START);
    }
    __romPos += SIZEOF(._302C90);
    _302C90_ROM_END = __romPos;
    _302C90_VRAM_END = .;

    MinigameStadiumMinigameResultsScreen_ROM_START = __romPos;
    MinigameStadiumMinigameResultsScreen_VRAM = ADDR(.MinigameStadiumMinigameResultsScreen);
    .MinigameStadiumMinigameResultsScreen 0x800F65E0 : AT(MinigameStadiumMinigameResultsScreen_ROM_START) SUBALIGN(16)
    {
        MinigameStadiumMinigameResultsScreen_TEXT_START = .;
        build/src/ovl_7B_MinigameStadiumMinigameResultsScreen/303E70.c.o(.text);
        build/src/ovl_7B_MinigameStadiumMinigameResultsScreen/306290.c.o(.text);
        build/src/ovl_7B_MinigameStadiumMinigameResultsScreen/306BA0.c.o(.text);
        MinigameStadiumMinigameResultsScreen_TEXT_END = .;
        MinigameStadiumMinigameResultsScreen_TEXT_SIZE = ABSOLUTE(MinigameStadiumMinigameResultsScreen_TEXT_END - MinigameStadiumMinigameResultsScreen_TEXT_START);
        MinigameStadiumMinigameResultsScreen_DATA_START = .;
        ovl_7B_MinigameStadiumMinigameResultsScreen_303E70_c = .;
        build/src/ovl_7B_MinigameStadiumMinigameResultsScreen/303E70.c.o(.data);
        ovl_7B_MinigameStadiumMinigameResultsScreen_306290_c = .;
        build/src/ovl_7B_MinigameStadiumMinigameResultsScreen/306290.c.o(.data);
        ovl_7B_MinigameStadiumMinigameResultsScreen_306BA0_c = .;
        build/src/ovl_7B_MinigameStadiumMinigameResultsScreen/306BA0.c.o(.data);
        MinigameStadiumMinigameResultsScreen_DATA_END = .;
        MinigameStadiumMinigameResultsScreen_DATA_SIZE = ABSOLUTE(MinigameStadiumMinigameResultsScreen_DATA_END - MinigameStadiumMinigameResultsScreen_DATA_START);
        MinigameStadiumMinigameResultsScreen_RODATA_START = .;
        build/src/ovl_7B_MinigameStadiumMinigameResultsScreen/303E70.c.o(.rodata);
        build/src/ovl_7B_MinigameStadiumMinigameResultsScreen/306290.c.o(.rodata);
        build/src/ovl_7B_MinigameStadiumMinigameResultsScreen/306BA0.c.o(.rodata);
        MinigameStadiumMinigameResultsScreen_RODATA_END = .;
        MinigameStadiumMinigameResultsScreen_RODATA_SIZE = ABSOLUTE(MinigameStadiumMinigameResultsScreen_RODATA_END - MinigameStadiumMinigameResultsScreen_RODATA_START);
    }
    MinigameStadiumMinigameResultsScreen_bss_VRAM = ADDR(.MinigameStadiumMinigameResultsScreen_bss);
    .MinigameStadiumMinigameResultsScreen_bss (NOLOAD) : SUBALIGN(16)
    {
        MinigameStadiumMinigameResultsScreen_BSS_START = .;
        build/src/ovl_7B_MinigameStadiumMinigameResultsScreen/303E70.c.o(.bss);
        build/src/ovl_7B_MinigameStadiumMinigameResultsScreen/306290.c.o(.bss);
        build/src/ovl_7B_MinigameStadiumMinigameResultsScreen/306BA0.c.o(.bss);
        MinigameStadiumMinigameResultsScreen_BSS_END = .;
        MinigameStadiumMinigameResultsScreen_BSS_SIZE = ABSOLUTE(MinigameStadiumMinigameResultsScreen_BSS_END - MinigameStadiumMinigameResultsScreen_BSS_START);
    }
    __romPos += SIZEOF(.MinigameStadiumMinigameResultsScreen);
    __romPos = ALIGN(__romPos, 16);
    MinigameStadiumMinigameResultsScreen_ROM_END = __romPos;
    MinigameStadiumMinigameResultsScreen_VRAM_END = .;

    _308890_ROM_START = __romPos;
    _308890_VRAM = ADDR(._308890);
    ._308890 : AT(_308890_ROM_START) SUBALIGN(16)
    {
        _308890_DATA_START = .;
        _308890_bin = .;
        build/assets/308890.bin.o(.data);
        _308890_DATA_END = .;
        _308890_DATA_SIZE = ABSOLUTE(_308890_DATA_END - _308890_DATA_START);
    }
    __romPos += SIZEOF(._308890);
    _308890_ROM_END = __romPos;
    _308890_VRAM_END = .;

    UnknownResultsScreen_ROM_START = __romPos;
    UnknownResultsScreen_VRAM = ADDR(.UnknownResultsScreen);
    .UnknownResultsScreen 0x800F65E0 : AT(UnknownResultsScreen_ROM_START) SUBALIGN(16)
    {
        UnknownResultsScreen_TEXT_START = .;
        build/src/ovl_7C_UnknownResultsScreen/308A50.c.o(.text);
        UnknownResultsScreen_TEXT_END = .;
        UnknownResultsScreen_TEXT_SIZE = ABSOLUTE(UnknownResultsScreen_TEXT_END - UnknownResultsScreen_TEXT_START);
        UnknownResultsScreen_DATA_START = .;
        ovl_7C_UnknownResultsScreen_308A50_c = .;
        build/src/ovl_7C_UnknownResultsScreen/308A50.c.o(.data);
        UnknownResultsScreen_DATA_END = .;
        UnknownResultsScreen_DATA_SIZE = ABSOLUTE(UnknownResultsScreen_DATA_END - UnknownResultsScreen_DATA_START);
        UnknownResultsScreen_RODATA_START = .;
        build/src/ovl_7C_UnknownResultsScreen/308A50.c.o(.rodata);
        UnknownResultsScreen_RODATA_END = .;
        UnknownResultsScreen_RODATA_SIZE = ABSOLUTE(UnknownResultsScreen_RODATA_END - UnknownResultsScreen_RODATA_START);
    }
    UnknownResultsScreen_bss_VRAM = ADDR(.UnknownResultsScreen_bss);
    .UnknownResultsScreen_bss (NOLOAD) : SUBALIGN(16)
    {
        UnknownResultsScreen_BSS_START = .;
        build/src/ovl_7C_UnknownResultsScreen/308A50.c.o(.bss);
        UnknownResultsScreen_BSS_END = .;
        UnknownResultsScreen_BSS_SIZE = ABSOLUTE(UnknownResultsScreen_BSS_END - UnknownResultsScreen_BSS_START);
    }
    __romPos += SIZEOF(.UnknownResultsScreen);
    __romPos = ALIGN(__romPos, 16);
    UnknownResultsScreen_ROM_END = __romPos;
    UnknownResultsScreen_VRAM_END = .;

    _30C440_ROM_START = __romPos;
    _30C440_VRAM = ADDR(._30C440);
    ._30C440 : AT(_30C440_ROM_START) SUBALIGN(16)
    {
        _30C440_DATA_START = .;
        _30C440_bin = .;
        build/assets/30C440.bin.o(.data);
        _30C440_DATA_END = .;
        _30C440_DATA_SIZE = ABSOLUTE(_30C440_DATA_END - _30C440_DATA_START);
    }
    __romPos += SIZEOF(._30C440);
    _30C440_ROM_END = __romPos;
    _30C440_VRAM_END = .;

    MinigameIslandMISS_ROM_START = __romPos;
    MinigameIslandMISS_VRAM = ADDR(.MinigameIslandMISS);
    .MinigameIslandMISS 0x800F65E0 : AT(MinigameIslandMISS_ROM_START) SUBALIGN(16)
    {
        MinigameIslandMISS_TEXT_START = .;
        build/src/ovl_7D_MinigameIslandMISS/30C540.c.o(.text);
        MinigameIslandMISS_TEXT_END = .;
        MinigameIslandMISS_TEXT_SIZE = ABSOLUTE(MinigameIslandMISS_TEXT_END - MinigameIslandMISS_TEXT_START);
        MinigameIslandMISS_DATA_START = .;
        ovl_7D_MinigameIslandMISS_30C540_c = .;
        build/src/ovl_7D_MinigameIslandMISS/30C540.c.o(.data);
        MinigameIslandMISS_DATA_END = .;
        MinigameIslandMISS_DATA_SIZE = ABSOLUTE(MinigameIslandMISS_DATA_END - MinigameIslandMISS_DATA_START);
        MinigameIslandMISS_RODATA_START = .;
        build/src/ovl_7D_MinigameIslandMISS/30C540.c.o(.rodata);
        MinigameIslandMISS_RODATA_END = .;
        MinigameIslandMISS_RODATA_SIZE = ABSOLUTE(MinigameIslandMISS_RODATA_END - MinigameIslandMISS_RODATA_START);
    }
    MinigameIslandMISS_bss_VRAM = ADDR(.MinigameIslandMISS_bss);
    .MinigameIslandMISS_bss (NOLOAD) : SUBALIGN(16)
    {
        MinigameIslandMISS_BSS_START = .;
        build/src/ovl_7D_MinigameIslandMISS/30C540.c.o(.bss);
        MinigameIslandMISS_BSS_END = .;
        MinigameIslandMISS_BSS_SIZE = ABSOLUTE(MinigameIslandMISS_BSS_END - MinigameIslandMISS_BSS_START);
    }
    __romPos += SIZEOF(.MinigameIslandMISS);
    __romPos = ALIGN(__romPos, 16);
    MinigameIslandMISS_ROM_END = __romPos;
    MinigameIslandMISS_VRAM_END = .;

    _30F080_ROM_START = __romPos;
    _30F080_VRAM = ADDR(._30F080);
    ._30F080 : AT(_30F080_ROM_START) SUBALIGN(16)
    {
        _30F080_DATA_START = .;
        _30F080_bin = .;
        build/assets/30F080.bin.o(.data);
        _30F080_DATA_END = .;
        _30F080_DATA_SIZE = ABSOLUTE(_30F080_DATA_END - _30F080_DATA_START);
    }
    __romPos += SIZEOF(._30F080);
    _30F080_ROM_END = __romPos;
    _30F080_VRAM_END = .;

    DebugSequentialPlay_ROM_START = __romPos;
    DebugSequentialPlay_VRAM = ADDR(.DebugSequentialPlay);
    .DebugSequentialPlay 0x800F65E0 : AT(DebugSequentialPlay_ROM_START) SUBALIGN(16)
    {
        DebugSequentialPlay_TEXT_START = .;
        build/src/ovl_7E_DebugSequentialPlay/30F1B0.c.o(.text);
        DebugSequentialPlay_TEXT_END = .;
        DebugSequentialPlay_TEXT_SIZE = ABSOLUTE(DebugSequentialPlay_TEXT_END - DebugSequentialPlay_TEXT_START);
        DebugSequentialPlay_DATA_START = .;
        ovl_7E_DebugSequentialPlay_30F1B0_c = .;
        build/src/ovl_7E_DebugSequentialPlay/30F1B0.c.o(.data);
        DebugSequentialPlay_DATA_END = .;
        DebugSequentialPlay_DATA_SIZE = ABSOLUTE(DebugSequentialPlay_DATA_END - DebugSequentialPlay_DATA_START);
        DebugSequentialPlay_RODATA_START = .;
        build/src/ovl_7E_DebugSequentialPlay/30F1B0.c.o(.rodata);
        DebugSequentialPlay_RODATA_END = .;
        DebugSequentialPlay_RODATA_SIZE = ABSOLUTE(DebugSequentialPlay_RODATA_END - DebugSequentialPlay_RODATA_START);
    }
    DebugSequentialPlay_bss_VRAM = ADDR(.DebugSequentialPlay_bss);
    .DebugSequentialPlay_bss (NOLOAD) : SUBALIGN(16)
    {
        DebugSequentialPlay_BSS_START = .;
        build/src/ovl_7E_DebugSequentialPlay/30F1B0.c.o(.bss);
        DebugSequentialPlay_BSS_END = .;
        DebugSequentialPlay_BSS_SIZE = ABSOLUTE(DebugSequentialPlay_BSS_END - DebugSequentialPlay_BSS_START);
    }
    __romPos += SIZEOF(.DebugSequentialPlay);
    __romPos = ALIGN(__romPos, 16);
    DebugSequentialPlay_ROM_END = __romPos;
    DebugSequentialPlay_VRAM_END = .;

    _310CA0_ROM_START = __romPos;
    _310CA0_VRAM = ADDR(._310CA0);
    ._310CA0 : AT(_310CA0_ROM_START) SUBALIGN(16)
    {
        _310CA0_DATA_START = .;
        _310CA0_bin = .;
        build/assets/310CA0.bin.o(.data);
        _310CA0_DATA_END = .;
        _310CA0_DATA_SIZE = ABSOLUTE(_310CA0_DATA_END - _310CA0_DATA_START);
    }
    __romPos += SIZEOF(._310CA0);
    _310CA0_ROM_END = __romPos;
    _310CA0_VRAM_END = .;

    MinigameStadiumStart_ROM_START = __romPos;
    MinigameStadiumStart_VRAM = ADDR(.MinigameStadiumStart);
    .MinigameStadiumStart 0x800F65E0 : AT(MinigameStadiumStart_ROM_START) SUBALIGN(16)
    {
        MinigameStadiumStart_TEXT_START = .;
        build/src/ovl_7F_MinigameStadiumStart/311E90.c.o(.text);
        build/src/ovl_7F_MinigameStadiumStart/311EC0.c.o(.text);
        MinigameStadiumStart_TEXT_END = .;
        MinigameStadiumStart_TEXT_SIZE = ABSOLUTE(MinigameStadiumStart_TEXT_END - MinigameStadiumStart_TEXT_START);
        MinigameStadiumStart_DATA_START = .;
        ovl_7F_MinigameStadiumStart_311E90_c = .;
        build/src/ovl_7F_MinigameStadiumStart/311E90.c.o(.data);
        ovl_7F_MinigameStadiumStart_311EC0_data__s = .;
        build/asm/data/ovl_7F_MinigameStadiumStart/311EC0.data.s.o(.data);
        MinigameStadiumStart_DATA_END = .;
        MinigameStadiumStart_DATA_SIZE = ABSOLUTE(MinigameStadiumStart_DATA_END - MinigameStadiumStart_DATA_START);
        MinigameStadiumStart_RODATA_START = .;
        build/src/ovl_7F_MinigameStadiumStart/311E90.c.o(.rodata);
        build/src/ovl_7F_MinigameStadiumStart/311EC0.c.o(.rodata);
        MinigameStadiumStart_RODATA_END = .;
        MinigameStadiumStart_RODATA_SIZE = ABSOLUTE(MinigameStadiumStart_RODATA_END - MinigameStadiumStart_RODATA_START);
    }
    MinigameStadiumStart_bss_VRAM = ADDR(.MinigameStadiumStart_bss);
    .MinigameStadiumStart_bss (NOLOAD) : SUBALIGN(16)
    {
        MinigameStadiumStart_BSS_START = .;
        build/src/ovl_7F_MinigameStadiumStart/311E90.c.o(.bss);
        build/src/ovl_7F_MinigameStadiumStart/311EC0.c.o(.bss);
        MinigameStadiumStart_BSS_END = .;
        MinigameStadiumStart_BSS_SIZE = ABSOLUTE(MinigameStadiumStart_BSS_END - MinigameStadiumStart_BSS_START);
    }
    __romPos += SIZEOF(.MinigameStadiumStart);
    __romPos = ALIGN(__romPos, 16);
    MinigameStadiumStart_ROM_END = __romPos;
    MinigameStadiumStart_VRAM_END = .;

    MinigameStadiumResults_ROM_START = __romPos;
    MinigameStadiumResults_VRAM = ADDR(.MinigameStadiumResults);
    .MinigameStadiumResults 0x800F65E0 : AT(MinigameStadiumResults_ROM_START) SUBALIGN(16)
    {
        MinigameStadiumResults_TEXT_START = .;
        build/src/ovl_80_MinigameStadiumResults/312850.c.o(.text);
        MinigameStadiumResults_TEXT_END = .;
        MinigameStadiumResults_TEXT_SIZE = ABSOLUTE(MinigameStadiumResults_TEXT_END - MinigameStadiumResults_TEXT_START);
        MinigameStadiumResults_DATA_START = .;
        ovl_80_MinigameStadiumResults_312850_c = .;
        build/src/ovl_80_MinigameStadiumResults/312850.c.o(.data);
        MinigameStadiumResults_DATA_END = .;
        MinigameStadiumResults_DATA_SIZE = ABSOLUTE(MinigameStadiumResults_DATA_END - MinigameStadiumResults_DATA_START);
        MinigameStadiumResults_RODATA_START = .;
        build/src/ovl_80_MinigameStadiumResults/312850.c.o(.rodata);
        MinigameStadiumResults_RODATA_END = .;
        MinigameStadiumResults_RODATA_SIZE = ABSOLUTE(MinigameStadiumResults_RODATA_END - MinigameStadiumResults_RODATA_START);
    }
    MinigameStadiumResults_bss_VRAM = ADDR(.MinigameStadiumResults_bss);
    .MinigameStadiumResults_bss (NOLOAD) : SUBALIGN(16)
    {
        MinigameStadiumResults_BSS_START = .;
        build/src/ovl_80_MinigameStadiumResults/312850.c.o(.bss);
        MinigameStadiumResults_BSS_END = .;
        MinigameStadiumResults_BSS_SIZE = ABSOLUTE(MinigameStadiumResults_BSS_END - MinigameStadiumResults_BSS_START);
    }
    __romPos += SIZEOF(.MinigameStadiumResults);
    __romPos = ALIGN(__romPos, 16);
    MinigameStadiumResults_ROM_END = __romPos;
    MinigameStadiumResults_VRAM_END = .;

    _314730_ROM_START = __romPos;
    _314730_VRAM = ADDR(._314730);
    ._314730 : AT(_314730_ROM_START) SUBALIGN(16)
    {
        _314730_DATA_START = .;
        _314730_bin = .;
        build/assets/314730.bin.o(.data);
        _314730_DATA_END = .;
        _314730_DATA_SIZE = ABSOLUTE(_314730_DATA_END - _314730_DATA_START);
    }
    __romPos += SIZEOF(._314730);
    _314730_ROM_END = __romPos;
    _314730_VRAM_END = .;

    PressStartScreen_ROM_START = __romPos;
    PressStartScreen_VRAM = ADDR(.PressStartScreen);
    .PressStartScreen 0x800F65E0 : AT(PressStartScreen_ROM_START) SUBALIGN(16)
    {
        PressStartScreen_TEXT_START = .;
        build/src/ovl_81_PressStartScreen/314950.c.o(.text);
        PressStartScreen_TEXT_END = .;
        PressStartScreen_TEXT_SIZE = ABSOLUTE(PressStartScreen_TEXT_END - PressStartScreen_TEXT_START);
        PressStartScreen_DATA_START = .;
        ovl_81_PressStartScreen_314950_c = .;
        build/src/ovl_81_PressStartScreen/314950.c.o(.data);
        PressStartScreen_DATA_END = .;
        PressStartScreen_DATA_SIZE = ABSOLUTE(PressStartScreen_DATA_END - PressStartScreen_DATA_START);
        PressStartScreen_RODATA_START = .;
        build/src/ovl_81_PressStartScreen/314950.c.o(.rodata);
        PressStartScreen_RODATA_END = .;
        PressStartScreen_RODATA_SIZE = ABSOLUTE(PressStartScreen_RODATA_END - PressStartScreen_RODATA_START);
    }
    PressStartScreen_bss_VRAM = ADDR(.PressStartScreen_bss);
    .PressStartScreen_bss (NOLOAD) : SUBALIGN(16)
    {
        PressStartScreen_BSS_START = .;
        build/src/ovl_81_PressStartScreen/314950.c.o(.bss);
        PressStartScreen_BSS_END = .;
        PressStartScreen_BSS_SIZE = ABSOLUTE(PressStartScreen_BSS_END - PressStartScreen_BSS_START);
    }
    __romPos += SIZEOF(.PressStartScreen);
    __romPos = ALIGN(__romPos, 16);
    PressStartScreen_ROM_END = __romPos;
    PressStartScreen_VRAM_END = .;

    _316350_ROM_START = __romPos;
    _316350_VRAM = ADDR(._316350);
    ._316350 : AT(_316350_ROM_START) SUBALIGN(16)
    {
        _316350_DATA_START = .;
        _316350_bin = .;
        build/assets/316350.bin.o(.data);
        _316350_DATA_END = .;
        _316350_DATA_SIZE = ABSOLUTE(_316350_DATA_END - _316350_DATA_START);
    }
    __romPos += SIZEOF(._316350);
    _316350_ROM_END = __romPos;
    _316350_VRAM_END = .;

    MiniGameStadiumStartCopy_ROM_START = __romPos;
    MiniGameStadiumStartCopy_VRAM = ADDR(.MiniGameStadiumStartCopy);
    .MiniGameStadiumStartCopy 0x800F65E0 : AT(MiniGameStadiumStartCopy_ROM_START) SUBALIGN(16)
    {
        MiniGameStadiumStartCopy_TEXT_START = .;
        build/src/ovl_82_MiniGameStadiumStartCopy/316440.c.o(.text);
        MiniGameStadiumStartCopy_TEXT_END = .;
        MiniGameStadiumStartCopy_TEXT_SIZE = ABSOLUTE(MiniGameStadiumStartCopy_TEXT_END - MiniGameStadiumStartCopy_TEXT_START);
        MiniGameStadiumStartCopy_DATA_START = .;
        ovl_82_MiniGameStadiumStartCopy_316440_c = .;
        build/src/ovl_82_MiniGameStadiumStartCopy/316440.c.o(.data);
        MiniGameStadiumStartCopy_DATA_END = .;
        MiniGameStadiumStartCopy_DATA_SIZE = ABSOLUTE(MiniGameStadiumStartCopy_DATA_END - MiniGameStadiumStartCopy_DATA_START);
        MiniGameStadiumStartCopy_RODATA_START = .;
        build/src/ovl_82_MiniGameStadiumStartCopy/316440.c.o(.rodata);
        MiniGameStadiumStartCopy_RODATA_END = .;
        MiniGameStadiumStartCopy_RODATA_SIZE = ABSOLUTE(MiniGameStadiumStartCopy_RODATA_END - MiniGameStadiumStartCopy_RODATA_START);
    }
    MiniGameStadiumStartCopy_bss_VRAM = ADDR(.MiniGameStadiumStartCopy_bss);
    .MiniGameStadiumStartCopy_bss (NOLOAD) : SUBALIGN(16)
    {
        MiniGameStadiumStartCopy_BSS_START = .;
        build/src/ovl_82_MiniGameStadiumStartCopy/316440.c.o(.bss);
        MiniGameStadiumStartCopy_BSS_END = .;
        MiniGameStadiumStartCopy_BSS_SIZE = ABSOLUTE(MiniGameStadiumStartCopy_BSS_END - MiniGameStadiumStartCopy_BSS_START);
    }
    __romPos += SIZEOF(.MiniGameStadiumStartCopy);
    __romPos = ALIGN(__romPos, 16);
    MiniGameStadiumStartCopy_ROM_END = __romPos;
    MiniGameStadiumStartCopy_VRAM_END = .;

    _3177A0_ROM_START = __romPos;
    _3177A0_VRAM = ADDR(._3177A0);
    ._3177A0 : AT(_3177A0_ROM_START) SUBALIGN(16)
    {
        _3177A0_DATA_START = .;
        _3177A0_bin = .;
        build/assets/3177A0.bin.o(.data);
        _3177A0_DATA_END = .;
        _3177A0_DATA_SIZE = ABSOLUTE(_3177A0_DATA_END - _3177A0_DATA_START);
    }
    __romPos += SIZEOF(._3177A0);
    _3177A0_ROM_END = __romPos;
    _3177A0_VRAM_END = .;

    DebugMinigameMenu_ROM_START = __romPos;
    DebugMinigameMenu_VRAM = ADDR(.DebugMinigameMenu);
    .DebugMinigameMenu 0x800F65E0 : AT(DebugMinigameMenu_ROM_START) SUBALIGN(16)
    {
        DebugMinigameMenu_TEXT_START = .;
        build/src/ovl_83_DebugMinigameMenu/317980.c.o(.text);
        DebugMinigameMenu_TEXT_END = .;
        DebugMinigameMenu_TEXT_SIZE = ABSOLUTE(DebugMinigameMenu_TEXT_END - DebugMinigameMenu_TEXT_START);
        DebugMinigameMenu_DATA_START = .;
        ovl_83_DebugMinigameMenu_317980_c = .;
        build/src/ovl_83_DebugMinigameMenu/317980.c.o(.data);
        DebugMinigameMenu_DATA_END = .;
        DebugMinigameMenu_DATA_SIZE = ABSOLUTE(DebugMinigameMenu_DATA_END - DebugMinigameMenu_DATA_START);
        DebugMinigameMenu_RODATA_START = .;
        build/src/ovl_83_DebugMinigameMenu/317980.c.o(.rodata);
        DebugMinigameMenu_RODATA_END = .;
        DebugMinigameMenu_RODATA_SIZE = ABSOLUTE(DebugMinigameMenu_RODATA_END - DebugMinigameMenu_RODATA_START);
    }
    DebugMinigameMenu_bss_VRAM = ADDR(.DebugMinigameMenu_bss);
    .DebugMinigameMenu_bss (NOLOAD) : SUBALIGN(16)
    {
        DebugMinigameMenu_BSS_START = .;
        build/src/ovl_83_DebugMinigameMenu/317980.c.o(.bss);
        DebugMinigameMenu_BSS_END = .;
        DebugMinigameMenu_BSS_SIZE = ABSOLUTE(DebugMinigameMenu_BSS_END - DebugMinigameMenu_BSS_START);
    }
    __romPos += SIZEOF(.DebugMinigameMenu);
    __romPos = ALIGN(__romPos, 16);
    DebugMinigameMenu_ROM_END = __romPos;
    DebugMinigameMenu_VRAM_END = .;

    _31AC50_ROM_START = __romPos;
    _31AC50_VRAM = ADDR(._31AC50);
    ._31AC50 : AT(_31AC50_ROM_START) SUBALIGN(16)
    {
        _31AC50_DATA_START = .;
        _31AC50_bin = .;
        build/assets/31AC50.bin.o(.data);
        _31AC50_DATA_END = .;
        _31AC50_DATA_SIZE = ABSOLUTE(_31AC50_DATA_END - _31AC50_DATA_START);
    }
    __romPos += SIZEOF(._31AC50);
    _31AC50_ROM_END = __romPos;
    _31AC50_VRAM_END = .;

    FE2310_ROM_START = __romPos;
    FE2310_VRAM = ADDR(.FE2310);
    .FE2310 : AT(FE2310_ROM_START) SUBALIGN(16)
    {
        FE2310_DATA_START = .;
        FE2310_bin = .;
        build/assets/FE2310.bin.o(.data);
        FE2310_DATA_END = .;
        FE2310_DATA_SIZE = ABSOLUTE(FE2310_DATA_END - FE2310_DATA_START);
    }
    __romPos += SIZEOF(.FE2310);
    FE2310_ROM_END = __romPos;
    FE2310_VRAM_END = .;

    FE24BC_ROM_START = __romPos;
    FE24BC_VRAM = ADDR(.FE24BC);
    .FE24BC : AT(FE24BC_ROM_START) SUBALIGN(16)
    {
        FE24BC_DATA_START = .;
        FE24BC_bin = .;
        build/assets/FE24BC.bin.o(.data);
        FE24BC_DATA_END = .;
        FE24BC_DATA_SIZE = ABSOLUTE(FE24BC_DATA_END - FE24BC_DATA_START);
    }
    __romPos += SIZEOF(.FE24BC);
    FE24BC_ROM_END = __romPos;
    FE24BC_VRAM_END = .;

    ___assets_audio_soundbank1_bnk_ROM_START = __romPos;
    ___assets_audio_soundbank1_bnk_VRAM = ADDR(.___assets_audio_soundbank1_bnk);
    .___assets_audio_soundbank1_bnk : AT(___assets_audio_soundbank1_bnk_ROM_START) SUBALIGN(16)
    {
        ___assets_audio_soundbank1_bnk_DATA_START = .;
        ___assets_audio_soundbank1_bnk_bnk__bin = .;
        build/assets/audio/soundbank1.bnk.bin.o(.data);
        ___assets_audio_soundbank1_bnk_DATA_END = .;
        ___assets_audio_soundbank1_bnk_DATA_SIZE = ABSOLUTE(___assets_audio_soundbank1_bnk_DATA_END - ___assets_audio_soundbank1_bnk_DATA_START);
    }
    __romPos += SIZEOF(.___assets_audio_soundbank1_bnk);
    ___assets_audio_soundbank1_bnk_ROM_END = __romPos;
    ___assets_audio_soundbank1_bnk_VRAM_END = .;

    ___assets_audio_wavetable1_tbl_ROM_START = __romPos;
    ___assets_audio_wavetable1_tbl_VRAM = ADDR(.___assets_audio_wavetable1_tbl);
    .___assets_audio_wavetable1_tbl : AT(___assets_audio_wavetable1_tbl_ROM_START) SUBALIGN(16)
    {
        ___assets_audio_wavetable1_tbl_DATA_START = .;
        ___assets_audio_wavetable1_tbl_tbl__bin = .;
        build/assets/audio/wavetable1.tbl.bin.o(.data);
        ___assets_audio_wavetable1_tbl_DATA_END = .;
        ___assets_audio_wavetable1_tbl_DATA_SIZE = ABSOLUTE(___assets_audio_wavetable1_tbl_DATA_END - ___assets_audio_wavetable1_tbl_DATA_START);
    }
    __romPos += SIZEOF(.___assets_audio_wavetable1_tbl);
    ___assets_audio_wavetable1_tbl_ROM_END = __romPos;
    ___assets_audio_wavetable1_tbl_VRAM_END = .;

    ___assets_audio_sequencebnk1_tbl_ROM_START = __romPos;
    ___assets_audio_sequencebnk1_tbl_VRAM = ADDR(.___assets_audio_sequencebnk1_tbl);
    .___assets_audio_sequencebnk1_tbl : AT(___assets_audio_sequencebnk1_tbl_ROM_START) SUBALIGN(16)
    {
        ___assets_audio_sequencebnk1_tbl_DATA_START = .;
        ___assets_audio_sequencebnk1_tbl_tbl__bin = .;
        build/assets/audio/sequencebnk1.tbl.bin.o(.data);
        ___assets_audio_sequencebnk1_tbl_DATA_END = .;
        ___assets_audio_sequencebnk1_tbl_DATA_SIZE = ABSOLUTE(___assets_audio_sequencebnk1_tbl_DATA_END - ___assets_audio_sequencebnk1_tbl_DATA_START);
    }
    __romPos += SIZEOF(.___assets_audio_sequencebnk1_tbl);
    ___assets_audio_sequencebnk1_tbl_ROM_END = __romPos;
    ___assets_audio_sequencebnk1_tbl_VRAM_END = .;

    ___assets_audio_soundbank2_bnk_ROM_START = __romPos;
    ___assets_audio_soundbank2_bnk_VRAM = ADDR(.___assets_audio_soundbank2_bnk);
    .___assets_audio_soundbank2_bnk : AT(___assets_audio_soundbank2_bnk_ROM_START) SUBALIGN(16)
    {
        ___assets_audio_soundbank2_bnk_DATA_START = .;
        ___assets_audio_soundbank2_bnk_bnk__bin = .;
        build/assets/audio/soundbank2.bnk.bin.o(.data);
        ___assets_audio_soundbank2_bnk_DATA_END = .;
        ___assets_audio_soundbank2_bnk_DATA_SIZE = ABSOLUTE(___assets_audio_soundbank2_bnk_DATA_END - ___assets_audio_soundbank2_bnk_DATA_START);
    }
    __romPos += SIZEOF(.___assets_audio_soundbank2_bnk);
    ___assets_audio_soundbank2_bnk_ROM_END = __romPos;
    ___assets_audio_soundbank2_bnk_VRAM_END = .;

    ___assets_audio_wavetable2_tbl_ROM_START = __romPos;
    ___assets_audio_wavetable2_tbl_VRAM = ADDR(.___assets_audio_wavetable2_tbl);
    .___assets_audio_wavetable2_tbl : AT(___assets_audio_wavetable2_tbl_ROM_START) SUBALIGN(16)
    {
        ___assets_audio_wavetable2_tbl_DATA_START = .;
        ___assets_audio_wavetable2_tbl_tbl__bin = .;
        build/assets/audio/wavetable2.tbl.bin.o(.data);
        ___assets_audio_wavetable2_tbl_DATA_END = .;
        ___assets_audio_wavetable2_tbl_DATA_SIZE = ABSOLUTE(___assets_audio_wavetable2_tbl_DATA_END - ___assets_audio_wavetable2_tbl_DATA_START);
    }
    __romPos += SIZEOF(.___assets_audio_wavetable2_tbl);
    ___assets_audio_wavetable2_tbl_ROM_END = __romPos;
    ___assets_audio_wavetable2_tbl_VRAM_END = .;

    ___assets_audio_sequencebnk2_tbl_ROM_START = __romPos;
    ___assets_audio_sequencebnk2_tbl_VRAM = ADDR(.___assets_audio_sequencebnk2_tbl);
    .___assets_audio_sequencebnk2_tbl : AT(___assets_audio_sequencebnk2_tbl_ROM_START) SUBALIGN(16)
    {
        ___assets_audio_sequencebnk2_tbl_DATA_START = .;
        ___assets_audio_sequencebnk2_tbl_tbl__bin = .;
        build/assets/audio/sequencebnk2.tbl.bin.o(.data);
        ___assets_audio_sequencebnk2_tbl_DATA_END = .;
        ___assets_audio_sequencebnk2_tbl_DATA_SIZE = ABSOLUTE(___assets_audio_sequencebnk2_tbl_DATA_END - ___assets_audio_sequencebnk2_tbl_DATA_START);
    }
    __romPos += SIZEOF(.___assets_audio_sequencebnk2_tbl);
    ___assets_audio_sequencebnk2_tbl_ROM_END = __romPos;
    ___assets_audio_sequencebnk2_tbl_VRAM_END = .;

    _1832AE0_ROM_START = __romPos;
    _1832AE0_VRAM = ADDR(._1832AE0);
    ._1832AE0 : AT(_1832AE0_ROM_START) SUBALIGN(16)
    {
        _1832AE0_DATA_START = .;
        _1832AE0_bin = .;
        build/assets/1832AE0.bin.o(.data);
        _1832AE0_DATA_END = .;
        _1832AE0_DATA_SIZE = ABSOLUTE(_1832AE0_DATA_END - _1832AE0_DATA_START);
    }
    __romPos += SIZEOF(._1832AE0);
    _1832AE0_ROM_END = __romPos;
    _1832AE0_VRAM_END = .;

    romPadding_ROM_START = __romPos;
    romPadding_VRAM = ADDR(.romPadding);
    .romPadding : AT(romPadding_ROM_START) SUBALIGN(16)
    {
        romPadding_DATA_START = .;
        romPadding_bin = .;
        build/assets/romPadding.bin.o(.data);
        romPadding_DATA_END = .;
        romPadding_DATA_SIZE = ABSOLUTE(romPadding_DATA_END - romPadding_DATA_START);
    }
    __romPos += SIZEOF(.romPadding);
    romPadding_ROM_END = __romPos;
    romPadding_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
