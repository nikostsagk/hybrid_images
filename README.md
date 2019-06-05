# Hybrid Images
Side coursework for COMP6223 (computer vision) based on the paper of Oliva et. al. 2006.
The report refers to two methods: a spatial approach and a frequency approach.

## master branch:
Contains all necessary files to run the spatial approach.
- ```data```: contains all image pairs
- ```report.pdf```: report
- ```my_conv.m```: implements a convolution operation
- ```main_spatial.m```: Runs main file. Run this for the spatial approach
- ```lowpass.m/highpass.m```: lowpass & highpass filters based on conv. operations
- ```spatial_representation.m```: sublots of enhanced images in the spatial domain
- ```freq_representation.m```: subplots of enhanced images in the frequency domain

## freq-method branch:
Contains all necessary files to run the frequency approach.
- ```main_frequency.m```: Runs main file. Run this for the frequency approach
- ```LP_fourier.m/HP_fourier.m```: lowpass & highpass filters based on element wise operations on the FFT of images

<p align="center">
  <img width="350" height="250" src="https://github.com/nikostsagk/hybrid_images/blob/master/Picture2.png">
</p>
<p align="center">
  <img width="600" height="300" src="https://github.com/nikostsagk/hybrid_images/blob/master/Picture1.png">
</p>

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
