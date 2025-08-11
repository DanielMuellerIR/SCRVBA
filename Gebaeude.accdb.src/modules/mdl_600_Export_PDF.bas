Attribute VB_Name = "mdl_600_Export_PDF"
Option Compare Database
Option Explicit

Sub Export_PDF(Ber_Name, Dateiname)

10  DoCmd.OutputTo acOutputReport, Ber_Name, acFormatPDF, str_PDF_Export_Pfad & Dateiname & ".pdf"
20  VBA.MsgBox "Dokument wurde als PDF-Datei gespeichert unter :" & vbCrLf & vbCrLf _
             & " " & str_PDF_Export_Pfad & Dateiname & ".pdf"
End Sub
