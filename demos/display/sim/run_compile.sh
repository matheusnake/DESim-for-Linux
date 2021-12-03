rem if exist ..\inst_mem.mif (
rem     copy /Y ..\inst_mem.mif .
rem )
rem if exist ..\inst_mem_bb.v (
rem     del ..\inst_mem_bb.v
rem ) WHY?

if [ -d work ]
then 
    rm -r work 
fi
    vlib work
    vlog ../tb/*.v
    vlog ../*.v
