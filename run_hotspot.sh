#!/bin/bash


FILEPATTERNS=("chemnitz_reduced" "chemnitz_KWall" "chemnitz_KW26" "chemnitz_KW27" "chemnitz_KW28" "chemnitz_KW29" "chemnitz_KW30" "chemnitz_KW31" "chemnitz_KW32" "chemnitz_KW33" "chemnitz_KW34")

INP_NB="hotspot_chemnitz.ipynb"
KG_KM=False

for i in ${FILEPATTERNS[@]}
do
  echo "Filepattern: $i"
  papermill ${INP_NB} "output_nbs/output_${i}.ipynb" -p filepattern $i -p kg_km ${KG_KM}
done
