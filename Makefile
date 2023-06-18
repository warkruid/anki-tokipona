# Warning! This is a _VERY_ idiosyncratic Makefile. 
# It probably only works for me. YMMV!

clean:
	rm .*~
	rm *~

all: winactivate installreq
	python3 gendict.py -i tokipona-english.csv

venv:
	python3 -m venv ./venv

winactivate: venv
	venv\Scripts\activate.bat

installreq: winactivate
	pip install -r requirements.txt

changelog:
	git log  --reverse 
