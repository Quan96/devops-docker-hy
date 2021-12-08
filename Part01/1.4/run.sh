#!/bin/bash
echo "Input wesite:";
read website;
echo "Searching..";
sleep 1;
curl http://$website;