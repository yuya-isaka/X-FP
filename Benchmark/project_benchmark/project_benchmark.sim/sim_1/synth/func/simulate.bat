@echo off
set xv_path=C:\\Xilinx\\Vivado\\2015.1\\bin
call %xv_path%/xsim lfsr_func_synth -key {Post-Synthesis:sim_1:Functional:lfsr} -tclbatch lfsr.tcl -view H:/Benchmark/project_benchmark/lfsr_func_synth.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
