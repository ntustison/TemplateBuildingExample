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

