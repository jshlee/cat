#!/bin/bash 

RESULT_DIR="NanoAOD"
DIR=`hostname`

/bin/mkdir -p $RESULT_DIR/$DIR
echo "hostname" >> $RESULT_DIR/$DIR/`hostname`.txt
echo "date" >> $RESULT_DIR/$DIR/`hostname`.txt
source /cvmfs/cms.cern.ch/cmsset_default.sh >> $RESULT_DIR/$DIR/`hostname`.txt
/cms/scratch/daniel/nanoAOD/src/nano/analysis/h2mu/nanoAnalysis $@
echo "Done." >> $RESULT_DIR/$DIR/`hostname`.txt
