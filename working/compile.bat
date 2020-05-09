@echo off

cd\
cd C:\Users\Steve\Documents\GitHub\quakesingleplayermap\working


echo Copying Files...
copy C:\Users\Steve\Documents\GitHub\quakesingleplayermap\id1\maps\LastStand.map C:\Users\Steve\Documents\GitHub\quakesingleplayermap\working


echo Converting map...


echo --------------QBSP--------------
C:\Users\Steve\Documents\GitHub\quakesingleplayermap\tools\ericw-tools\bin\qbsp.exe LastStand

echo --------------VIS---------------
C:\Users\Steve\Documents\GitHub\quakesingleplayermap\tools\ericw-tools\bin\vis.exe LastStand

echo -------------LIGHT--------------
C:\Users\Steve\Documents\GitHub\quakesingleplayermap\tools\ericw-tools\bin\light.exe LastStand

copy LastStand.bsp C:\Users\Steve\Documents\GitHub\quakesingleplayermap\id1\maps
copy LastStand.pts C:\Users\Steve\Documents\GitHub\quakesingleplayermap\id1\maps
copy LastStand.lit C:\Users\Steve\Documents\GitHub\quakesingleplayermap\id1\maps
cd\
cd C:\Users\Steve\Documents\GitHub\quakesingleplayermap
quakespasm  +map LastStand
