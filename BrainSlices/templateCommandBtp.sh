inputPath=${PWD}/

# This script is a little more complicated because the legacy script assumes
# all I/O is in the current working directory

workDir=${inputPath}/BTP

mkdir -p ${workDir}

# Check we have ANTs on the PATH
if ! command -v buildtemplateparallel.sh &> /dev/null
then
  echo "buildtemplateparallel.sh not found on PATH"
  exit 1
fi

cd ${workDir}
cp ../OASIS*1.nii.gz .

# The legacy script does not handle rigid-only or affine-only templates very well
# A template is generated but there are a bunch of alarming segmentation faults as it fails to find
# expected warps
buildtemplateparallel.sh \
  -d 2 \
  -o T_ \
  -i 4 \
  -g 0.2 \
  -j 1 \
  -c 0 \
  -m 100x70x50x10 \
  -n 1 \
  -r 1 \
  -s CC \
  -t GR \
  OASIS*1.nii.gz

cd ${inputPath}

