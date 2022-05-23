#!/bin/bash

export RRCL=$PWD

java -classpath uppaal-stratego/uppaal.jar:models.jar de.tudarmstadt.Main "$@"
#-i "ServiceStation1 && PC1 && ServiceStation2 && PC2" FM-RSS.xml RSS.rrcl

