#!/bin/bash
copy="_copy" 
mtx=".mtx"
txt=".txt"
index=0
vertex=(
1024
2048
4096
8192
16384
32768
65536
8114
22963
)
./head >result.txt
toy="./toy_graph/"
delaunay_n="./toy_graph/delaunay_n"
beg=".mtx_beg_pos.bin"
csr=".mtx_csr.bin"
weight=".mtx_weight.bin"
# for j in 1 2 4 8 16 32 56 #thread
for j in  {10..16} #delaunay_n
do
echo "at delaunay_n$j"
x=${vertex[$index]}
echo "index === $x"
echo "./a.out $delaunay_n$j$beg $delaunay_n$j$csr $delaunay_n$j$weight $x "
  # ./kernel.out ./toy_graph/delaunay_n$j$mtx\_beg_pos.bin ./toy_graph/delaunay_n$j$mtx\_csr.bin ./toy_graph/delaunay_n$j$mtx\_weight.bin  >>result.txt
  ./a.out $delaunay_n$j$beg $delaunay_n$j$csr $delaunay_n$j$weight $x  >>result.txt
  index=i=$(( $index+1 ))
  #echo $result
done


for i in p2p-Gnutella09 as-22july06 
# Tina_AskCal cit-HepPh as-22july06 p2p-Gnutella09 smallworld preferentialAttachment 
do
echo "at $i"
echo "index = $vertex[$index]"
echo "./a.out $toy$i$beg $toy$i$csr $toy$i$weight $x   "
  # ./Zxie_TR $i$copy$txt  >> result.txt
#   ./text_to_bin.bin ./toy_graph/$i$mtx 0 0 >> run_prepare_data.txt
  # ./kernel.out ./toy_graph/$i$mtx\_beg_pos.bin ./toy_graph/$i$mtx\_csr.bin ./toy_graph/$i$mtx\_weight.bin  >>result.txt
  ./a.out $toy$i$beg $toy$i$csr $toy$i$weight $x  >>result.txt
  index=i=$(( $index+1 ))
  # ./trans $i$mtx >> result.txt
  #echo $result
done


