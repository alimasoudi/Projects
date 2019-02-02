VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Sheet1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = True
Sub stock()


For Each ws In Worksheets

Dim Ticker As String

Dim lastrow As Long

Dim Total_Vol As Double

Total_Vol = 0


ws.Cells(1, 9).Value = "Ticker"

ws.Cells(1, 10).Value = "Total Stock Volume"

Dim total_stock_volume_row As Integer
total_stock_volume_row = 2


lastrow = ws.Cells(Rows.Count, 1).End(xlUp).Row

For i = 2 To lastrow
   
If ws.Cells(i + 1, 1).Value <> ws.Cells(i, 1).Value Then

       Ticker = ws.Cells(i, 1).Value

       Total_Vol = total_value + ws.Cells(i, 7).Value
       
       ws.Range("i" & total_stock_volume_row).Value = Ticker
       
       ws.Range("j" & total_stock_volume_row).Value = Total_Vol
       
       total_stock_volume_row = total_stock_volume_row + 1
       
       Total_Vol = 0
       
Else
Total_Vol = Total_Vol + ws.Cells(i, 7).Value

End If

Next i

Next ws

End Sub

