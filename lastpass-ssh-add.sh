#!/bin/sh

for id in `lpass ls | grep '\/.\+ \[id' | awk '{print substr($4, 0, length($4) - 1)}'`; do
	if [ "`lpass show $id | grep 'Private Key'`" ]; then
		name=`lpass show $id --name`
		key=`lpass show $id --field='Private Key'`

		if [ "$key" ]; then
			echo "Adding ssh-key: id = $id, name = $name"
			`echo "$key" | ssh-add -`
		fi
	fi
done
