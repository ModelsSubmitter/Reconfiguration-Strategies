# Precomputing Reconfiguration Strategies based on Stochastic Timed Game Automata

This repository contains the replication package for our submission. 

## System Requirements
Our tool works on Ubuntu-based systems. Thus, Linux Mint is also perfectly fine for running the tool. Furthermore, a Java Runtime Environment in version >= 17.0.1 is required. 
If your system does not contain a corresponding JRE, the next step in this Readme provides an easy way to install Java.

### Installing Java by means of SDKMan
1. Install SDKMan (https://sdkman.io/install). This tool enables you to install different versions of java with ease (https://sdkman.io/jdks). 
2. Install Java Version 17.0.1 with the command: sdk i java 17.0.1-zulu

## Checking out the Repository
To download the tool and the case study, check out the repository using git or just download the ZIP archive from Github and extract it in a folder of your choice.
```
git clone https://github.com/ModelsSubmitter/Reconfiguration-Strategies.git
```
## Set scripts executable
 We provide two scripts for 1) generating the XML-file and 2) for running Uppaal. As a first step,
 open a terminal and please make sure that both scripts are executable by running the following command:
```
chmod +x generate-model.sh uppaal.sh
```
## Generate reconfiguration model
The script *generate-model.sh* takes 3 parameters as input: A feature constraint defining the initial configuration, the feature model ([FeatureIDE](https://featureide.github.io) XML) and a text file containing real-time constraints.

```
./generate-model.sh -i "ServiceStation1 && PC1 && ServiceStation2 && PC2" FM-RSS.xml RSS.rrcl
```
Executing this script generates a file *model.xml* containing the corresponding stochastic timed game automaton.

## Perform Synthesis and Analysis with Uppaal
```
./uppaal.sh --epsilon 0.01 --alpha 0.01 --summary  model.xml rq1.q
```
This command performs the queries specified in *rq1.q* on the model *model.xml* with the specified values for precision. Uppaal prints the results to standard output.
Unfortunately, the GUI of Uppaal is unable to display model.xml. Therefore, verification can only be done on the command line.


In case the papers is accepted to MODELS'22 we will move this site with all supplementary data to [https://zenodo.org/.](https://zenodo.org/)  
The corresponding URL in the paper will be adapted accordingly.

