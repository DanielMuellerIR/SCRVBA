SELECT
  tbl_100_20_Gebäudeteile.ID_Gebäudeteil,
  [NAme] & " " & [tbl_100_20_Gebäudeteile].[Haus_Nr] & ": " & [tbl_100_10_Liegenschaften].[Bezeichnung] & " -> " & [tbl_100_20_Gebäudeteile].[Gebäudeteil] AS Obj,
  fc_GebT_Status(
    [Bilanz_relevant], [ID_GebT_Zug_GebT],
    [tbl_200_05_10_Bewertungsläufe].[Erst_Folgebilanz],
    [tbl_100_20_Gebäudeteile].[ID_Gebäudeteil]
  ) AS Status,
  fc_Erstbewert_zulaessig(
    [Bilanz_relevant], [ID_GebT_Zug_GebT],
    [tbl_200_05_10_Bewertungsläufe].[Erst_Folgebilanz]
  ) AS Erstb_zulssg,
  tbl_100_20_Gebäudeteile.angemietetes_Gebäude
FROM
  (
    M_Strassenverzeichnis
    RIGHT JOIN tbl_100_10_Liegenschaften ON M_Strassenverzeichnis.Kennummer = tbl_100_10_Liegenschaften.Kennummer_Straße
  )
  INNER JOIN (
    tbl_200_05_10_Bewertungsläufe
    RIGHT JOIN (
      tbl_100_20_Gebäudeteile
      LEFT JOIN tbl_200_10_10_Bewertungsbilanzen ON tbl_100_20_Gebäudeteile.ID_Gebäudeteil = tbl_200_10_10_Bewertungsbilanzen.ID_Gebäudeteil
    ) ON tbl_200_05_10_Bewertungsläufe.id_Bewert = tbl_200_10_10_Bewertungsbilanzen.Id_Bewert
  ) ON tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude
WHERE
  (
    (
      (
        tbl_100_20_Gebäudeteile.angemietetes_Gebäude
      )= False
    )
    AND (
      (
        tbl_100_20_Gebäudeteile.Bilanz_relevant
      )= False
    )
    AND (
      (
        tbl_100_20_Gebäudeteile.ID_GebT_Zug_GebT
      ) Is Null
    )
    AND (
      (
        tbl_200_05_10_Bewertungsläufe.Erst_Folgebilanz
      ) Is Null
      Or (
        tbl_200_05_10_Bewertungsläufe.Erst_Folgebilanz
      )<> 1
    )
    AND (
      (
        tbl_100_20_Gebäudeteile.Nicht_mehr_in_Betr_seit
      ) Is Null
    )
    AND (
      (
        tbl_100_20_Gebäudeteile.Zust_B60
      )= True
    )
  )
  OR (
    (
      (
        tbl_100_20_Gebäudeteile.angemietetes_Gebäude
      )= False
    )
    AND (
      (
        tbl_100_20_Gebäudeteile.Bilanz_relevant
      )= False
    )
    AND (
      (
        tbl_100_20_Gebäudeteile.ID_GebT_Zug_GebT
      ) Is Null
    )
    AND (
      (
        tbl_200_05_10_Bewertungsläufe.Erst_Folgebilanz
      )= 1
    )
    AND (
      (
        tbl_100_20_Gebäudeteile.Nicht_mehr_in_Betr_seit
      ) Is Null
    )
    AND (
      (
        tbl_100_20_Gebäudeteile.Zust_B60
      )= True
    )
  )
  OR (
    (
      (
        tbl_100_20_Gebäudeteile.Bilanz_relevant
      )= False
    )
    AND (
      (
        tbl_100_20_Gebäudeteile.ID_GebT_Zug_GebT
      ) Is Not Null
    )
    AND (
      (
        tbl_200_05_10_Bewertungsläufe.Erst_Folgebilanz
      )= 1
    )
    AND (
      (
        tbl_100_20_Gebäudeteile.Nicht_mehr_in_Betr_seit
      ) Is Null
    )
    AND (
      (
        tbl_100_20_Gebäudeteile.Zust_B60
      )= True
    )
  )
  OR (
    (
      (
        tbl_100_20_Gebäudeteile.Bilanz_relevant
      )= True
    )
    AND (
      (
        tbl_100_20_Gebäudeteile.ID_GebT_Zug_GebT
      ) Is Null
    )
    AND (
      (
        tbl_200_05_10_Bewertungsläufe.Erst_Folgebilanz
      ) Is Null
      Or (
        tbl_200_05_10_Bewertungsläufe.Erst_Folgebilanz
      )<> 1
    )
    AND (
      (
        tbl_100_20_Gebäudeteile.Nicht_mehr_in_Betr_seit
      ) Is Null
    )
    AND (
      (
        tbl_100_20_Gebäudeteile.Zust_B60
      )= True
    )
  )
  OR (
    (
      (
        tbl_100_20_Gebäudeteile.Bilanz_relevant
      )= True
    )
    AND (
      (
        tbl_100_20_Gebäudeteile.ID_GebT_Zug_GebT
      ) Is Not Null
    )
    AND (
      (
        tbl_200_05_10_Bewertungsläufe.Erst_Folgebilanz
      ) Is Null
      Or (
        tbl_200_05_10_Bewertungsläufe.Erst_Folgebilanz
      )<> 1
    )
    AND (
      (
        tbl_100_20_Gebäudeteile.Nicht_mehr_in_Betr_seit
      ) Is Null
    )
    AND (
      (
        tbl_100_20_Gebäudeteile.Zust_B60
      )= True
    )
  )
  OR (
    (
      (
        tbl_100_20_Gebäudeteile.Bilanz_relevant
      )= True
    )
    AND (
      (
        tbl_100_20_Gebäudeteile.ID_GebT_Zug_GebT
      ) Is Not Null
    )
    AND (
      (
        tbl_200_05_10_Bewertungsläufe.Erst_Folgebilanz
      )= 1
    )
    AND (
      (
        tbl_100_20_Gebäudeteile.Nicht_mehr_in_Betr_seit
      ) Is Null
    )
    AND (
      (
        tbl_100_20_Gebäudeteile.Zust_B60
      )= True
    )
  )
ORDER BY
  [NAme] & " " & [tbl_100_20_Gebäudeteile].[Haus_Nr] & ": " & [tbl_100_10_Liegenschaften].[Bezeichnung] & " -> " & [tbl_100_20_Gebäudeteile].[Gebäudeteil],
  fc_GebT_Status(
    [Bilanz_relevant], [ID_GebT_Zug_GebT],
    [tbl_200_05_10_Bewertungsläufe].[Erst_Folgebilanz],
    [tbl_100_20_Gebäudeteile].[ID_Gebäudeteil]
  );
