inputPath=${PWD}/
outputPath=${PWD}/TemplateMultivariateBSplineSyN/

# Check we have ANTs on the PATH
if ! command -v antsMultivariateTemplateConstruction2.sh &> /dev/null
then
  echo "antsMultivariateTemplateConstruction2.sh not found on PATH"
  exit 1
fi

antsMultivariateTemplateConstruction2.sh \
  -d 2 \
  -o ${outputPath}T_ \
  -i 4 \
  -g 0.2 \
  -j 2 \
  -c 0 \
  -k 2 \
  -w 1x1 \
  -f 8x4x2x1 \
  -s 3x2x1x0 \
  -q 100x70x50x10 \
  -n 1 \
  -r 1 \
  -l 1 \
  -m CC[2] \
  -t BSplineSyN[0.1,26,0] \
  ${inputPath}/OASIS*.nii.gz

