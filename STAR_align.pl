sub STAR_align{
    my ($star_index,$output_dir,$read1,$read2,$runcmd) = @_;
    my $star_option = " --runThreadN 8 --genomeLoad NoSharedMemory --limitBAMsortRAM 0   --outSAMtype BAM SortedByCoordinate  --outSAMstrandField intronMotif   --outSAMattributes NH   HI   NM   MD   AS   XS --outFilterMultimapNmax 20000   --outFilterMultimapScoreRange 1   --outFilterScoreMinOverLread 0.66   --outFilterMatchNminOverLread 0.33   --outFilterMismatchNmax 10   --alignIntronMax 500000   --alignMatesGapMax 1000000   --alignSJDBoverhangMin 1   --sjdbOverhang 100   --sjdbScore 2  --readFilesCommand zcat";
    my $map_cmd     = " STAR --genomeDir $star_index $star_option --outFileNamePrefix  $output_dir  --readFilesIn $read1 $read2 ";
    if($runcmd == 1){
        `$map_cmd`;
    }
    return($cmd);
}