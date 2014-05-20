PE78=NA12878_S1.chr20.20X.posSorted.chr20_38500000-39000000.bam
PE91=NA12891_S1.chr20.20X.posSorted.chr20_38500000-39000000.bam
PE92=NA12892_S1.chr20.20X.posSorted.chr20_38500000-39000000.bam

PE78H=NA12878_S1.chr20.20X.posSorted.bam.histo
PE91H=NA12891_S1.chr20.20X.posSorted.bam.histo
PE92H=NA12892_S1.chr20.20X.posSorted.bam.histo

SR78=NA12878_S1.chr20.20X.yaha.posSorted.chr20_38500000-39000000.bam
SR91=NA12891_S1.chr20.20X.yaha.posSorted.chr20_38500000-39000000.bam
SR92=NA12892_S1.chr20.20X.yaha.posSorted.chr20_38500000-39000000.bam


#==> NA12878_S1.chr20.20X.posSorted.bam.params <==
#mean:321.666733326667	stdev:72.9788422915697
#
#==> NA12891_S1.chr20.20X.posSorted.bam.params <==
#mean:303.684331566845	stdev:63.5492096211719
#
#==> NA12892_S1.chr20.20X.posSorted.bam.params <==
#mean:307.565643435657	stdev:63.9691903615205

echo $PE78

echo "
~/src/lumpy-sv-sum/bin/lumpy \
    -mw 4 \
    -tt 0 \
    -pe bam_file:$PE78,histo_file:$PE78H,mean:321.666733326667,stdev:72.9788422915697,read_length:100,min_non_overlap:100,discordant_z:4,back_distance:20,weight:1,id:10,min_mapping_threshold:10 \
    -sr bam_file:$SR78,back_distance:20,min_mapping_threshold:100,weight:1,id:11,min_clip:20 \
    -pe bam_file:$PE91,histo_file:$PE91H,mean:303.684331566845,stdev:63.5492096211719,read_length:100,min_non_overlap:100,discordant_z:4,back_distance:20,weight:1,id:20,min_mapping_threshold:10 \
    -sr bam_file:$SR91,back_distance:20,min_mapping_threshold:100,weight:1,id:21,min_clip:20 \
    -pe bam_file:$PE92,histo_file:$PE92H,mean:307.565643435657,stdev:63.9691903615205,read_length:100,min_non_overlap:100,discordant_z:4,back_distance:20,weight:1,id:30,min_mapping_threshold:10 \
    -sr bam_file:$SR92,back_distance:20,min_mapping_threshold:100,weight:1,id:31,min_clip:20 "


~/src/lumpy-sv/bin/lumpy \
    -mw 4 \
    -tt 0 \
    -pe bam_file:$PE78,histo_file:$PE78H,mean:321.666733326667,stdev:72.9788422915697,read_length:100,min_non_overlap:100,discordant_z:4,back_distance:20,weight:1,id:10,min_mapping_threshold:10 \
    -sr bam_file:$SR78,back_distance:20,min_mapping_threshold:100,weight:1,id:11,min_clip:20 \
    -pe bam_file:$PE91,histo_file:$PE91H,mean:303.684331566845,stdev:63.5492096211719,read_length:100,min_non_overlap:100,discordant_z:4,back_distance:20,weight:1,id:20,min_mapping_threshold:10 \
    -sr bam_file:$SR91,back_distance:20,min_mapping_threshold:100,weight:1,id:21,min_clip:20 \
    -pe bam_file:$PE92,histo_file:$PE92H,mean:307.565643435657,stdev:63.9691903615205,read_length:100,min_non_overlap:100,discordant_z:4,back_distance:20,weight:1,id:30,min_mapping_threshold:10 \
    -sr bam_file:$SR92,back_distance:20,min_mapping_threshold:100,weight:1,id:31,min_clip:20 \
    #> lumpy.78.91.92.chr20_38000000-40000000.bedpe 2> lumpy.78.91.92.chr20_38000000-40000000.err &

