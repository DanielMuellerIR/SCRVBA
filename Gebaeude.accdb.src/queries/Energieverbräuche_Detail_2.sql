SELECT
  V_Energieverbrauch_3_Verbrauch.von,
  V_Energieverbrauch_3_Verbrauch.bis,
  V_Energieverbrauch_3_Verbrauch.Zeitraum,
  V_Energieverbrauch_3_Verbrauch.Zählerstand_Anfang,
  V_Energieverbrauch_3_Verbrauch.Zählerstand_Ende,
  Energieverbräuche_Detail_1.Einheit,
  V_Energieverbrauch_3_Verbrauch.Verbrauch_,
  Energieverbräuche_Detail_1.Energieart,
  V_Energieverbrauch_3_Verbrauch.Verbrauch AS [Verbrauch in KwH],
  Energieverbräuche_Detail_1.Bezeichnung,
  Energieverbräuche_Detail_1.Zählernummer,
  Year([bis]) AS Verbrauchsjahr,
  IIf(
    [Energieart] = "Fernwärme kWh"
    Or [energieart] = "Gas m³",
    3180
  ) AS [Gradtagszahl Normaljahr],
  IIf(
    [Energieart] = "Fernwärme kWh"
    Or [energieart] = "Gas m³",
    IIf(
      Year([bis])= 2008,
      3199,
      IIf(
        Year([bis])= 2007,
        2910.2,
        IIf(
          Year([bis])= 2006,
          3070.9,
          IIf(
            Year([bis])= 2005,
            3187,
            3180
          )
        )
      )
    )
  ) AS [Jahreszahl Verbrauchsjahr],
  IIf(
    [Energieart] = "Fernwärme kWh"
    Or [energieart] = "Gas m³",
    [Verbrauch in KwH] * [Gradtagszahl Normaljahr] / [Jahreszahl Verbrauchsjahr]
  ) AS witterungsbereinigt
FROM
  V_Energieverbrauch_3_Verbrauch
  LEFT JOIN Energieverbräuche_Detail_1 ON V_Energieverbrauch_3_Verbrauch.[ID aus Energiezähler] = Energieverbräuche_Detail_1.ID;
