# Indonesian Dependency Parser and NER SpaCy Model
## Feel free to contribute!
Welcome to this repository research project, this project is a project for my final essay at Universitas Atma Jaya Yogyakarta. This project only cover the Dep. Parser and NER on the pipeline, notice that POS Tagging is also there because of the dataset. But this repo only focus on building the Dep. Parser and NER using SpaCy algorithms.

## Datasets
In this project I use third party datasets for building the model:
- Dependency Parser and Named Entity Recognition (NER) use Indonesian GSD dataset from [Universal Dependencies](http://universaldependencies.org/#download)

## How to
You can see the SpaCy document to how to use the function inside the model. 

For how to install the model there are 2 methods:
### Install the package
You can run python setup.py sdist from the directory to turn your model into an installable archive file.
````    
cd spacyndo/Models/Spacy 2.1.x/NER/id_ud-tag-dep-ner-1.0.0/
python setup.py sdist
pip install dist/id_ud-tag-dep-ner-1.0.0.tar.gz
````
### Copy the folder's model into yout project
You can use the current model in: 
`spacyndo/Models/Spacy 2.1.x/NER/id_ud-tag-dep-ner-1.0.0/id_ud-tag-dep-ner/id_ud-tag-dep-ner-1.0.0/`

Use the folder id_ud-tag-dep-ner-1.0.0 for accessing the model. 
Just copy the folder to your project and call spacy.load(“id_ud-tag-dep-ner-1.0.0”). 

## API
I've made a public API for you to try, check my repo first: `https://github.com/danielgo13/spacyndo-rest-api`

## GraphQL
I've also made a public GraphQL that you can try or implement in your web `spacy-id-ql.herokuapp.com/graphql`
Example:
`
{
  doPrediction(text:"Gempa bumi hari ini dengan kekuatan magnitudo 4,1 guncang selatan Kairatu, Kabupaten Seram Bagian Barat, Provinsi Maluku, Senin (10/7/2019) pukul 10:21 WIT."){
    ner {
      token
      label
    }
  }
}
`


Copyright (c) 2019 Daniel Chrisna Danuega. Release Under MIT License.
