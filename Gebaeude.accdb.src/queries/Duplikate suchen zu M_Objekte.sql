SELECT
  DISTINCTROW M_Objekte.[Kennummer aus Kostenstellenverzeichnis],
  M_Objekte.[ID],
  M_Objekte.[Bezeichnung],
  M_Objekte.[Kennummer aus Straßenverzeichnis],
  M_Objekte.[Hausnummer],
  M_Objekte.[Kennummer aus Bereiche],
  M_Objekte.[Bruttogrundfläche],
  M_Objekte.[Kennummer aus Kostenträgerverzeichnis],
  M_Objekte.[ID aus Sachbearbeiter],
  M_Objekte.[Mietbeginn],
  M_Objekte.[Mietende],
  M_Objekte.[Gebäudewert],
  M_Objekte.[Reinigungsfläche],
  M_Objekte.[Sportfläche],
  M_Objekte.[angemietetes_Gebäude],
  M_Objekte.[extern weitervermietet],
  M_Objekte.[ID aus Bewertung]
FROM
  M_Objekte
WHERE
  (
    (
      (
        M_Objekte.[Kennummer aus Kostenstellenverzeichnis]
      ) In (
        SELECT
          [Kennummer aus Kostenstellenverzeichnis]
        FROM
          [M_Objekte] As Tmp
        GROUP BY
          [Kennummer aus Kostenstellenverzeichnis]
        HAVING
          Count(*)> 1
      )
    )
  )
ORDER BY
  M_Objekte.[Kennummer aus Kostenstellenverzeichnis];
