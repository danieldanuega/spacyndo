# Indonesian Dependency Parser and NER SpaCy Model
Welcome to this repository research project, this project is a project for my final essay at Universitas Atma Jaya Yogyakarta. This project only cover the Dep. Parser and NER on the pipeline, notice that POS Tagging is also there because of the dataset. But this repo only focus on building the Dep. Parser and NER using SpaCy algorithms.

## Datasets
In this project I use third party datasets for building the model:
- Dependency Parser and Named Entity Recognition (NER) use Indonesian GSD dataset from [Universal Dependencies](http://universaldependencies.org/#download)

## How to
For now the model is ready for Dep. Parser but still to be updated for NER. 
You can use the current model in dep-ner-spacy-id/Models/NVIDIA GTX 1080/NER/Gold-standard Model

Use the folder id_ud-tag-dep-ner-1.0.0 for accessing the model. 
Just copy the folder to your project and call spacy.load(“id_ud-tag-dep-ner-1.0.0”). 

You can see the SpaCy document to how to use the function inside the model. 



Copyright (c) 2018 Daniel Chrisna Danuega. Release Under New BSD License.
