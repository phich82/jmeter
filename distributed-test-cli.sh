#! /bin/sh

JMETER_HOME="C:/Users/PC-2018/Desktop/apache-jmeter-5.1.1"
JMX_FILE="C:/Users/PC-2018/Desktop/apache-jmeter-5.1.1/DistributedTest.jmx"
RESULT_FILE="C:/Users/PC-2018/Desktop/apache-jmeter-5.1.1/result.csv"
REMOTE_HOSTS="192.168.0.107,192.168.0.108"
REPORT_RESULT_FOLDER="C:/Users/PC-2018/Desktop/apache-jmeter-5.1.1/report"

if [ -e $RESULT_FILE ]; then
	rm $RESULT_FILE
fi

if [ -d $REPORT_RESULT_FOLDER ]; then
	rm -rf $REPORT_RESULT_FOLDER/*
else
	mkdir -m 777 $REPORT_RESULT_FOLDER
fi

sh $JMETER_HOME/bin/jmeter.sh -n -t $JMX_FILE -l $RESULT_FILE -e -o $REPORT_RESULT_FOLDER -R $REMOTE_HOSTS