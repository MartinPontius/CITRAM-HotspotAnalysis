#!/bin/bash


FILEPATTERNS=("chemnitz_reduced" "chemnitz_KWall" "chemnitz_KW26" "chemnitz_KW27" "chemnitz_KW28" "chemnitz_KW29" "chemnitz_KW30" "chemnitz_KW31" "chemnitz_KW32" "chemnitz_KW33" "chemnitz_KW34")
#FILEPATTERNS=("hamm_reduced" "hamm_KWall" "hamm_KW26" "hamm_KW27" "hamm_KW28" "hamm_KW29" "hamm_KW30" "hamm_KW31" "hamm_KW32" "hamm_KW33" "hamm_KW34")
#FILEPATTERNS=("krefeld_reduced" "krefeld_KWall" "krefeld_KW26" "krefeld_KW27" "krefeld_KW28" "krefeld_KW29" "krefeld_KW30" "krefeld_KW31" "krefeld_KW32" "krefeld_KW33" "krefeld_KW34")


INP_NB="hotspot_chemnitz.ipynb"
#INP_NB="hotspot_hamm.ipynb"
#INP_NB="hotspot_krefeld.ipynb"
KG_KM=False

for i in ${FILEPATTERNS[@]}
do
  echo "Filepattern: $i"
  papermill ${INP_NB} "output_nbs/output_${i}.ipynb" -p filepattern $i -p kg_km ${KG_KM}
done
