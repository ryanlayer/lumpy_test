~/src/lumpy-sv/bin/lumpy \
    -mw 4 -tt 0 -x exclude.bed -sr bam_file:1-sub.bam,back_distance:10,min_mapping_threshold:20,weight:1,id:31,min_clip:20 -sr bam_file:2-sub.bam,back_distance:10,min_mapping_threshold:20,weight:2,id:42,min_clip:20 > test.bedpe
