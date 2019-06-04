# Hybrid Images
Side coursework for COMP6223 (computer vision) based on the paper of Oliva et. al. 2006.
The report refers to two methods: a spatial approach and a frequency approach.

## master branch:
Contains all necessary files to run the spatial approach.
- __data__: contains all image pairs
- __report.pdf__: report
- __my_conv.m__: implements a convolution operation
- __main_spatial.m__: Runs main file. Run this for the spatial approach
- __lowpass.m/highpass.m__: lowpass & highpass filters based on conv. operations
- __spatial_representation.m__: sublots of enhanced images in the spatial domain
- __freq_representation.m__: subplots of enhanced images in the frequency domain

## freq-method branch:
Contains all necessary files to run the frequency approach.
- __main_frequency.m__: Runs main file. Run this for the frequency approach
- __LP_fourier.m/HP_fourier.m__: lowpass & highpass filters based on element wise operations on the FFT of images

\
BibTex entry of Oliva et. al. 2006:

     @article{Oliva:2006:HI:1141911.1141919,
     author = {Oliva, Aude and Torralba, Antonio and Schyns, Philippe G.},
     title = {Hybrid Images},
     journal = {ACM Trans. Graph.},
     issue_date = {July 2006},
     volume = {25},
     number = {3},
     month = jul,
     year = {2006},
     issn = {0730-0301},
     pages = {527--532},
     numpages = {6},
     url = {http://doi.acm.org/10.1145/1141911.1141919},
     doi = {10.1145/1141911.1141919},
     acmid = {1141919},
     publisher = {ACM},
     address = {New York, NY, USA},
     keywords = {human perception, hybrid images, scale space},
     } 
