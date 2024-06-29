#!/bin/bash

cp policies.json policies.json.tmp
jq . policies.json.tmp > policies.json
rm *.tmp
