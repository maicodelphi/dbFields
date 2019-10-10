## Teory

	- Sometimes it seems to be slower using DataSet.FieldByName inside a While not DataSet.Eof then when using FindField
	- Looks like is even worst when DataSet has a lot of Fields and Records
	

** But looks like on Delphi newer versions (Since XE, I think), FieldByName should use Dictionary, so problem solved! **

## Reality

	- Even using Dictionary, doing a while on a DataSet using FindField on a TField var is 150% faster (average)
	- On early versions this can go up to 300% faster.

	** This app proves it **
	
![2019-09-05_16h59_20](https://user-images.githubusercontent.com/48223211/66530069-8ebd8300-eadc-11e9-9d8e-463f54b7049f.png)
