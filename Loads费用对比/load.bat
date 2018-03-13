@echo off
@if not exist .\log md log
sqlplus /nolog @load.txt