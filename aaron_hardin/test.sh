~/src/lumpy-sv/bin/lumpy \
        -mw 4 \
        -tt 0.0 \
        -pe \
        bam_file:58_U_end.bam,histo_file:58.pe.histo,mean:238,stdev:38,read_length:100,min_non_overlap:100,discordant_z:4,back_distance:20,weight:1,id:1,min_mapping_threshold:20 \
        > 58.end.bedpe
