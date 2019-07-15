# Damage_Detection
Computer vision based car damage investigation


A PoC to expedite insurance, part cost estimation claims process with computer vision and deep learning. 

This model identifies damage location and severity with accuracies of ~70%. It utilizes a pipeline of convolutional neural networks using transfer learning on DenseNet with Keras and Tensorflow to classify damage. Deployed consumer-facing web app with Flask, Docker and Tensorflow Serving for real-time car damage investigation. Data was scraped from Google Images using Selenium, hand-labeled for classification and supplemented with the Stanford Car Image Dataset.

* Web app - Car Damage Investigation - https://19.236.217.189:8072/
* [Presentation](Presentation.pdf)
* [Video](demo.mp4)

Credit for the concept and UI goes to Ting Neo -> https://github.com/neokt/car-damage-detective

Credit for the Google Images scraper goes to Ian London's fantastic [General Image Classifier](https://github.com/IanLondon/general_img_classifier) project.

