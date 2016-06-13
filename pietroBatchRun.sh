####!/bin/bash
#VERSION="v1"
#mkdir -p ntuples_${VERSION}
#export X509_USER_PROXY="ntuples_${VERSION}/x509_proxy"
#voms-proxy-init --voms cms
#heppy_batch.py -o ntuples_${VERSION}  run_susyMultilepton_skimForLepTauTau_cfg.py -b 'bsub -q 8nh -u vischia -o std_output.txt -J JobName < batchScript.sh' 

setenv base `pwd`
setenv X509_USER_PROXY "${base}/ntuples_v1/x509_proxy"
echo $X509_USER_PROXY
voms-proxy-init --voms cms

heppy_batch.py -o ntuples_v1  run_susyMultilepton_skimForLepTauTau_cfg.py -b 'bsub -q 8nh -u vischia -o std_output.txt -J JobName < batchScript.sh' 
