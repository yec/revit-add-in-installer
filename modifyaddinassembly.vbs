' get arguments
Set args = WScript.Arguments
assemblypath = args.Item(0)
addinpath = args.Item(1)

' do xml stuff
set xmldoc = CreateObject("Msxml2.DOMDocument")
xmldoc.async = False
xmldoc.load(addinpath)
set addin = xmldoc.documentElement.firstChild
set ele = addin.getElementsByTagName("Assembly").Item(0)
ele.text = assemblypath
addin.appendChild(ele)
xmldoc.save(addinpath)



