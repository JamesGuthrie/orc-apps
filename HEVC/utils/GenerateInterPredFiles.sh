#!/bin/bash

#Generating InterPredPipeline1 thanks to the InterPrediction actor
sed -e 's/package devel.org.sc29.wg11.mpegh.part2.main.inter/package interPrediction/' \
    -e 's/actor InterPrediction/actor InterPredPipeline1/'\
    -e 's/uint(size=8) PredSample/int (size=16) PredSample/' < ../../RVC/src/devel/org/sc29/wg11/mpegh/part2/main/inter/InterPrediction.cal\
	> ../src/interPrediction/InterPredPipeline1.cal

#Generating InterPredPipeline2 thanks to the InterPrediction actor
sed -e 's/package devel.org.sc29.wg11.mpegh.part2.main.inter/package interPrediction/' \
    -e 's/actor InterPrediction/actor InterPredPipeline2/'\
    -e 's/uint(size=8)  Sample/int (size=16) Sample/' < ../../RVC/src/devel/org/sc29/wg11/mpegh/part2/main/inter/InterPrediction.cal\
	> ../src/interPrediction/InterPredPipeline2.cal

