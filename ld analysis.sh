[https://speciationgenomics.github.io/ld_decay/]

# calc ld with plink
plink --vcf $VCF --double-id --allow-extra-chr \
--set-missing-var-ids @:# \
--maf 0.01 --geno 0.1 --mind 0.5 --chr 1 \
--thin 0.1 -r2 gz --ld-window 100 --ld-window-kb 1000 \
--ld-window-r2 0 \
--make-bed --out test


#example
plink --vcf test0719f7.vcf --maf 0.05 --geno 0.1 --mind 0.5 -r2 gz --ld-window 999999 --ld-window-kb 1000 --ld-window-r2 0 --make-bed --out ./plink/test
