dbMemo "SQL" ="SELECT DISTINCT IIf(\012        [nicht mehr erforderlich weil] IS NOT NULL,\012 "
    "       \"3: nicht mehr erforderlich\",\012        IIf(\012            bsf.[erled"
    "igt im Jahr] IS NULL,\012            \"2: nicht erledigt\",\012            \"1: "
    "Erledigt\"\012        )\012    ) AS Erledigt_Status, IIf(\012        Left([Erled"
    "igt_Status], 1) = \"1\",\012        m.[erledigt im Jahr],\012        [Kal_Jahr]\012"
    "    ) AS Sort_Jahr, [Liegenschaft] & \" -> \" & [Haus] AS Objekt, IIf([sb].[ID] "
    "IS NULL, \"SB fehlt\", [sb].[name]) AS SB, bsf.[Maßnahme], bsf.ID_Massn, bsf.Gep"
    "l_Finanz, [Kal_Jahr] >= F_Variable (\"lng_Kalk_Jahr_Min\")\012    OR [Kal_Jahr] "
    "= \"N.N.\"\012    OR [Kal_Jahr] = \"2000\"\012    OR bsf.[erledigt im Jahr] >= F"
    "_Variable (\"lng_Kalk_Jahr_Min\") AS Jahresauswahl, bsf.Kal_Jahr, bsf.Finanzquel"
    "le, bsf.[erledigt im Jahr], bsf.Erl, m.[nicht mehr erforderlich weil], bsf.tats_"
    "Kosten_Infoma\015\012FROM Sachbearbeiter AS sb RIGHT JOIN (([Bericht Sanierungss"
    "tau nach Finanzpl_Union] AS bsf INNER JOIN Maßnahmen AS m ON bsf.ID_Massn = m.ID"
    ") INNER JOIN tbl_100_10_Liegenschaften AS lieg ON bsf.[ID_Gebäude] = lieg.[ID_Ge"
    "bäude]) ON sb.ID = lieg.ID_SB\015\012WHERE (\012        (\012            (\012  "
    "              [Kal_Jahr] >= F_Variable (\"lng_Kalk_Jahr_Min\")\012              "
    "  OR [Kal_Jahr] = \"N.N.\"\012                OR [Kal_Jahr] = \"2000\"\012      "
    "          OR bsf.[erledigt im Jahr] >= F_Variable (\"lng_Kalk_Jahr_Min\")\012   "
    "         ) = True\012        )\012        AND (\012            (bsf.[ID_Gebäude]"
    ") BETWEEN F_Variable (\"lng_ID_Geb_Min\") AND F_Variable  (\"lng_ID_Geb_Max\")\012"
    "        )\012        AND (\012            bsf.[ID_Gebäudeteil] BETWEEN F_Variabl"
    "e (\"lng_ID_Geb_Teil_Min\") AND F_Variable  (\"lng_ID_Geb_Teil_Max\")\012       "
    " )\012        AND (\012            (\012                IIf(\012                "
    "    bsf.[erledigt im Jahr] IS NULL,\012                    True,\012            "
    "        IIf(bsf.[Kal_Jahr] <> \"N.N.\", True, False)\012                )\012   "
    "         ) = True\012        )\012    )\015\012ORDER BY IIf(\012        [nicht m"
    "ehr erforderlich weil] IS NOT NULL,\012        \"3: nicht mehr erforderlich\",\012"
    "        IIf(\012            bsf.[erledigt im Jahr] IS NULL,\012            \"2: "
    "nicht erledigt\",\012            \"1: Erledigt\"\012        )\012    ), bsf.[Maß"
    "nahme];\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="Erledigt_Status"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="bsf.[Maßnahme]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="SB"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Objekt"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Sort_Jahr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="bsf.Gepl_Finanz"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="bsf.ID_Massn"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Jahresauswahl"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="bsf.Kal_Jahr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="bsf.Finanzquelle"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="bsf.[erledigt im Jahr]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="bsf.Erl"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="bsf.tats_Kosten_Infoma"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="bsf.Maßnahme"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="m.[nicht mehr erforderlich weil]"
        dbLong "AggregateType" ="-1"
    End
End
