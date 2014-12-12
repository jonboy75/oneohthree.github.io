#!/bin/bash

i="0"

while [ $i -lt 500 ]
do
	YEAR=$((( RANDOM % 4 ) + 2010 ))
	MONTH=$((( RANDOM % 12 ) + 1 ))
	DAY=$((( RANDOM % 31 ) + 1 ))
	DATE=$YEAR-$MONTH-$DAY
	POST=${DATE}-lorem-ipsum-sit-amet-${i}.md

echo "---
layout: post
title:  \"Welcome to Jekyll!\"
date:   `echo $DATE` 23:59:59
categories: articles
tags: jekyll test
---

Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta, officiis, 
eius! Dolore ad labore cupiditate velit, facilis, autem debitis dolores, nisi 
consequatur aspernatur possimus pariatur vitae necessitatibus illum placeat 
reiciendis." > _posts/$POST

	i=$[$i+1]
done