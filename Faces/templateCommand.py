import ants
import os
import glob

dataDirectory = './'
populationFiles = glob.glob( dataDirectory + "face*.nii.gz" )

population = list()
for i in range( len( populationFiles ) ):
  population.append( ants.image_read( populationFiles[i], dimension = 2 ) )

btp = ants.build_template( initialTemplate = None,
  image_list = population,
  iterations = 4,
  gradient_step = 0.15,
  verbose = False,
  syn_metric = 'CC',
  reg_iterations = ( 100, 100, 100, 70, 50, 10 ),
  type_of_transform = "SyNCC",
  )

ants.image_write( btp, "templatePy.nrrd" )
ants.plot( btp )
