while true
do
	#create folder
	amodem recv -v -o /tmp/info.rx
	mkdir $(pwd)/recv/$(cat /tmp/info.rx)
	#header file
	amodem recv -v -o /tmp/data.rx
	echo "" > $(pwd)/recv/$(cat /tmp/info.rx)/$(cat /tmp/data.rx)
	#content file
	amodem recv -v -o /tmp/data2.rx
	cat /tmp/data2.rx > $(pwd)/recv/$(cat /tmp/info.rx)/$(cat /tmp/data.rx)
	rm /tmp/*.rx
	#clear
done
#tinggal dikasi infinite loop
