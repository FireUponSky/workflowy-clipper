all:
	mkdir -p build
	rm -f build/submit.zip
	zip -j build/submit.zip src/*
	chrome --pack-extension=src --pack-extension-key=~/mykeys/chrome.pem
	mv src.crx build/workflowy-clipper.crx
