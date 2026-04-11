#!/bin/bash

(echo "Отчет о логе веб-сервера"
echo "========================"

awk '/HTTP\/1\.1/ { count++ } END { print "Общее количество запросов:", count }' ./access.log
awk 'seen[$1]++ { count++ } END { print "Количество уникальных IP-адресов:", count}' ./access.log

echo ""
echo ""

echo "Количество запросов по методам:"
awk '/GET/ { count++ } END { print count, "GET"}' ./access.log
awk '/POST/ { count++ } END { print count, "POST"}' ./access.log

echo ""
echo ""

echo -n "Самый популярный URL: ";
awk '{ seen[$7]++ } END { for (url in seen) print seen[url], url }' ./access.log | sort -rn |  head -1) > report.txt

echo "Отчет сохранен в файл report.txt"