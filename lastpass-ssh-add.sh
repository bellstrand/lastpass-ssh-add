#!/bin/sh

for id in `lpass ls | grep '\/.\+ \[id' | sed -n 's/^.*\[id: \([0-9]*\)\].*$/\1/p'`; do
	if [ "`lpass show $id | grep 'Private Key'`" ]; then
		name=`lpass show $id --name`
		key=`lpass show $id --field='Private Key'`

		if [ "$key" ] && [ ! -f ~/.ssh/$name ]; then
			echo "Adding ssh-key: id = $id, name = $name"
			echo "$key" > ~/.ssh/$name
			chmod 400 ~/.ssh/$name
		fi
	fi
done
