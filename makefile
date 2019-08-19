#------
comp: clean vcs
#------
vcs:
	vcs -full64 \
		*.v /home/woodfan/Desktop/verilog/altera/*.v \
		-timescale=1ns/10ps \
		-fsdb -R -debug_all\
		+v2k -LDFLAGS -Wl,--no-as-needed
#-------
verdi:
	verdi \
		+v2k *.v -ssf tb.fsdb -nologo &
#-------
clean:
	rm -rf *~ core csrc simv* *.fsdb novas.* ucli.key

