import ants
import os
import glob

dataDirectory = './'
populationFiles = glob.glob( dataDirectory + "OASIS*Slice121.nii.gz" )

population = list()
for i in range( len( populationFiles ) ):
  population.append( ants.image_read( populationFiles[i], dimension = 2 ) )

btp = ants.build_template( initialTemplate = None,
  image_list = population,
  iterations = 4,
  gradient_step = 0.2,
  verbose = True,
  syn_metric = 'CC',
  reg_iterations = ( 100, 70, 50, 0 ) )

ants.plot( btp )
