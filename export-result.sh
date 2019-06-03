#!/bin/bash
 
JMETER_HOME="C:/Users/PC-2018/Desktop/apache-jmeter-5.1.1"
START=$(date +"%Y-%m-%d_%H.%M.%S")

#$JMETER_HOME/lib/ext/CMDRunner.jar --tool Reporter --plugin-type AggregateReport --input-jtl $LOG --generate-csv $AGGREGATE_CSV
sh $JMETER_HOME/bin/JMeterPluginsCMD.sh --generate-png test.png --input-csv result.csv --plugin-type AggregateReport --width 800 --height 600