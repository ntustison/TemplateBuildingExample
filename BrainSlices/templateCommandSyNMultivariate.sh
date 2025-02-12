inputPath=${PWD}/
outputPath=${PWD}/TemplateSyN/

# No ANTSPATH here, ANTs must be in the PATH (post 2.5.0)
# Test input from a csv file
# To test windows newlines are parsed correctly, replace
# input.csv with input_cr.csv
antsMultivariateTemplateConstruction.sh \
  -d 2 \
  -o ${outputPath}T_ \
  -i 4 \
  -g 0.2 \
  -j 4 \
  -c 2 \
  -k 2 \
  -w 1x1 \
  -m 100x70x50x10 \
  -n 1 \
  -r 1 \
  -s CC \
  -t GR \
  ${inputPath}/input.csv
