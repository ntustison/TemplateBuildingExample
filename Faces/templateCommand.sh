inputPath=${PWD}/
outputPath=${PWD}/TemplateFaces/

${ANTSPATH}/antsMultivariateTemplateConstruction2.sh \
  -d 2 \
  -o ${outputPath}T_ \
  -i 4 \
  -g 0.25 \
  -j 2 \
  -c 0 \
  -k 1 \
  -w 1 \
  -f 16x12x8x4x2x1 \
  -s 4x4x4x2x1x0 \
  -q 100x100x100x70x50x10 \
  -n 0 \
  -r 0 \
  -m CC \
  -t BSplineSyN[0.1,75,0] \
  ${inputPath}/face*.nii.gz

