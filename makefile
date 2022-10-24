Obj_o=main.o Get_packet_data.o Http_filter_print.o Http_filter.o Message_analysis.o Read_file.o Txt_print.o Upload_setting.o
Obj_hc=main.c Get_packet_data.h Http_filter_print.h Http_filter.h Message_analysis.h Read_file.o Txt_print.h Upload_setting.h

pcap_analysis:$(Obj_o)
	@gcc $(Obj_o) -o pcap_analysis

main.o:$(Obj_hc)
	@gcc -c $(Obj_hc)

Get_packet_data.o:Get_packet_data.c Get_packet_data.h
	@gcc -c Get_packet_data.c

Http_filter_print.o:Http_filter_print.c Http_filter_print.h
	@gcc -c Http_filter_print.c

Http_filter.o:Http_filter.c Http_filter.h
	@gcc -c Http_filter.c

Message_analysis.o:Message_analysis.c Message_analysis.h
	@gcc -c Message_analysis.c

Read_file.o:Read_file.c Read_file.h
	@gcc -c Read_file.c

Txt_print.o:Txt_print.c Txt_print.h
	@gcc -c Txt_print.c

Upload_setting.o:Upload_setting.c Upload_setting.h
	@gcc -c Upload_setting.c

clean:
	@rm -f *.o
	@rm pcap_analysis
	@rm *.h.gch