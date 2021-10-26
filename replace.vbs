Const ForReading = 1    
Const ForWriting = 2

strFileName_1 = Wscript.Arguments(0)
strFileName_2 = Wscript.Arguments(1)
strFileName_3 = Wscript.Arguments(2)

strOldText  = Wscript.Arguments(3)
strNewText  = Wscript.Arguments(4)

Set objFSO_1  = CreateObject("Scripting.FileSystemObject")
Set objFile_1 = objFSO_1.OpenTextFile(strFileName_1, ForReading)
strText_1 = objFile_1.ReadAll
objFile_1.Close

Set objFSO_2  = CreateObject("Scripting.FileSystemObject")
Set objFile_2 = objFSO_2.OpenTextFile(strFileName_2, ForReading)
strText_2 = objFile_2.ReadAll
objFile_2.Close

Set objFSO_3  = CreateObject("Scripting.FileSystemObject")
Set objFile_3 = objFSO_3.OpenTextFile(strFileName_3, ForReading)
strText_3 = objFile_3.ReadAll
objFile_3.Close

strNewText_1 = Replace(strText_1, strOldText, strNewText)
strNewText_2 = Replace(strText_2, strOldText, strNewText)
strNewText_3 = Replace(strText_3, UCase(strOldText), UCase(strNewText))

Set objFile_1 = objFSO_1.OpenTextFile(strFileName_1, ForWriting)
objFile_1.Write strNewText_1  'WriteLine adds extra CR/LF
objFile_1.Close

Set objFile_2 = objFSO_2.OpenTextFile(strFileName_2, ForWriting)
objFile_2.Write strNewText_2  'WriteLine adds extra CR/LF
objFile_2.Close

Set objFile_3 = objFSO_3.OpenTextFile(strFileName_3, ForWriting)
objFile_3.Write strNewText_3  'WriteLine adds extra CR/LF
objFile_3.Close