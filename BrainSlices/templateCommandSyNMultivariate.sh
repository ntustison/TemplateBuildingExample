inputPath=${PWD}/
outputPath=${PWD}/TemplateSyN2MV/

# Check we have ANTs on the PATH
if ! command -v antsMultivariateTemplateConstruction.sh &> /dev/null
then
  echo "antsMultivariateTemplateConstruction.sh not found on PATH"
  exit 1
fi

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
