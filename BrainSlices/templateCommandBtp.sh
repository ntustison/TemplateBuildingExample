inputPath=${PWD}/

${ANTSPATH}/buildtemplateparallel.sh \
  -d 2 \
  -o BTP/T_ \
  -i 4 \
  -g 0.2 \
  -j 1 \
  -c 0 \
  -m 100x70x50x10 \
  -n 1 \
  -r 1 \
  -s CC \
  -t RI \
  OASIS*1.nii.gz
