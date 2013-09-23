DATA=../data/input_1
#echo "======================run debug=============================="
#cd Debug
#optirun ./PageViewRank $DATA
#cd ..

echo "======================run release============================"

cd Release
optirun ./PageViewRank $DATA
cd ..

