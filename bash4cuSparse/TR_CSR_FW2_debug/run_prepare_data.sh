#!/bin/bash
copy="_copy" 
mtx=".mtx"
txt=".txt"

./head >result.txt
for i in  as-22july06 p2p-Gnutella09  
# Tina_AskCal cit-HepPh as-22july06 p2p-Gnutella09 smallworld preferentialAttachment 
do
echo "at $i"
  # ./Zxie_TR $i$copy$txt  >> result.txt
  ./text_to_bin.bin ./toy_graph/$i$mtx 0 0 >> run_prepare_data.txt
  # ./trans $i$mtx >> result.txt
  #echo $result
done


# for j in 1 2 4 8 16 32 56 #thread
for j in  {10..16} #delaunay_n
do
echo "at delaunay_n$j"
  ./text_to_bin.bin ./toy_graph/delaunay_n$j$mtx 0 0 >> run_prepare_data.txt
  # ./trans $i$mtx >> result.txt
  #echo $result
done
