library( ANTsR )


dataDirectory <- './'
populationFiles <- list.files( path = dataDirectory,
  pattern = "OASIS.*Slice121.nii.gz", full.names = TRUE )
population <- imageFileNames2ImageList( populationFiles )
averageImage <- antsAverageImages( population )

# plot initial template
plot( averageImage )

btp <- buildTemplate( initialTemplate = averageImage,
  imgList = population,
  iterations = 4,
  typeofTransform = 'SyNOnly',
  gradientStep = 0.2,
  verbose = TRUE,
  synMetric = 'CC',
  regIterations = c( 100, 70, 50, 10 ) )



${ANTSPATH}/antsMultivariateTemplateConstruction.sh \
  -d 2 \
  -o ${outputPath}T_ \
  -i 4 \
  -g 0.2 \
  -j 4 \
  -c 2 \
  -k 1 \
  -w 1 \
  -m 100x70x50x10 \
  -n 1 \
  -r 1 \
  -s CC \
  -t GR \
  ${inputPath}/OASIS*1.nii.gz
