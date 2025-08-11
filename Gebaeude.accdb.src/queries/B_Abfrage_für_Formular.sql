SELECT
  tbl_100_20_Gebäudeteile.ID_Gebäudeteil,
  tbl_100_20_Gebäudeteile.ID_GebT_Zug_GebT,
  tbl_100_10_Liegenschaften.Bezeichnung,
  tbl_100_20_Gebäudeteile.Gebäudeteil,
  M_Strassenverzeichnis.Name,
  tbl_100_20_Gebäudeteile.Haus_Nr,
  tbl_100_20_Gebäudeteile.[Typ aus NHK-Typen],
  tbl_100_10_Liegenschaften.Fläche,
  tbl_100_10_Liegenschaften.Bodenrichtwert,
  tbl_100_10_Liegenschaften.[voll berechnen],
  tbl_100_20_Gebäudeteile.BGF,
  tbl_100_20_Gebäudeteile.BRI,
  tbl_100_20_Gebäudeteile.Baujahr_real,
  tbl_100_20_Gebäudeteile.Baujahr_mod,
  IIf(
    IsNull([Baujahr_mod]),
    [Baujahr_real],
    [Baujahr_mod]
  ) AS Baujahr,
  tbl_100_20_Gebäudeteile.[gewöhnliche Nutzungsdauer],
  tbl_100_20_Gebäudeteile.[geschätze Nutzungsdauer],
  tbl_100_20_Gebäudeteile.Neubauwert_ab_2000,
  tbl_100_20_Gebäudeteile.[Fassade (11%)],
  IIf(
    [Fassade (11%)] = "einfach",
    11,
    IIf(
      [Fassade (11%)] = "mittel",
      22,
      IIf([Fassade (11%)] = "gehoben", 33, 0)
    )
  ) AS Pkt_Fassade,
  tbl_100_20_Gebäudeteile.[Fenster (14%)],
  IIf(
    [Fenster (14%)] = "einfach",
    14,
    IIf(
      [Fenster (14%)] = "mittel",
      28,
      IIf([Fenster (14%)] = "gehoben", 42, 0)
    )
  ) AS Pkt_Fenster,
  tbl_100_20_Gebäudeteile.[Dächer (15%)],
  IIf(
    [Dächer (15%)] = "einfach",
    15,
    IIf(
      [Dächer (15%)] = "mittel",
      30,
      IIf([Dächer (15%)] = "gehoben", 45, 0)
    )
  ) AS Pkt_Dächer,
  tbl_100_20_Gebäudeteile.[Sanitär (13%)],
  IIf(
    [Sanitär (13%)] = "einfach",
    13,
    IIf(
      [Sanitär (13%)] = "mittel",
      26,
      IIf([Sanitär (13%)] = "gehoben", 39, 0)
    )
  ) AS Pkt_Sanitär,
  tbl_100_20_Gebäudeteile.[Innenwände Sanitärbereich (6%)],
  IIf(
    [Innenwände Sanitärbereich (6%)] = "einfach",
    6,
    IIf(
      [Innenwände Sanitärbereich (6%)] = "mittel",
      12,
      IIf(
        [Innenwände Sanitärbereich (6%)] = "gehoben",
        18, 0
      )
    )
  ) AS Pkt_Innenwände_S,
  tbl_100_20_Gebäudeteile.[Bodenbeläge (8 %)],
  IIf(
    [Bodenbeläge (8 %)] = "einfach",
    8,
    IIf(
      [Bodenbeläge (8 %)] = "mittel",
      16,
      IIf(
        [Bodenbeläge (8 %)] = "gehoben", 24,
        0
      )
    )
  ) AS Pkt_Bodenbeläge,
  tbl_100_20_Gebäudeteile.[Innentüren (11%)],
  IIf(
    [Innentüren (11%)] = "einfach",
    11,
    IIf(
      [Innentüren (11%)] = "mittel",
      22,
      IIf(
        [Innentüren (11%)] = "gehoben", 33,
        0
      )
    )
  ) AS Pkt_Innentüren,
  tbl_100_20_Gebäudeteile.[Heizung (15%)],
  IIf(
    [Heizung (15%)] = "einfach",
    15,
    IIf(
      [Heizung (15%)] = "mittel",
      30,
      IIf([Heizung (15%)] = "gehoben", 45, 0)
    )
  ) AS Pkt_Heizung,
  tbl_100_20_Gebäudeteile.[Elektroinstallation (7%)],
  IIf(
    [Elektroinstallation (7%)] = "einfach",
    7,
    IIf(
      [Elektroinstallation (7%)] = "mittel",
      14,
      IIf(
        [Elektroinstallation (7%)] = "gehoben",
        21, 0
      )
    )
  ) AS Pkt_Elektro,
  [Pkt_Fassade] + [Pkt_Fenster] + [Pkt_Dächer] + [Pkt_Sanitär] + [Pkt_Innenwände_S] + [Pkt_Bodenbeläge] + [Pkt_Innentüren] + [Pkt_Heizung] + [PKt_Elektro] AS PunkteAusstattung,
  IIf(
    [PunkteAusstattung] <= 166.6666,
    "einfach",
    IIf(
      [PunkteAusstattung] >= 233.3332,
      "gehoben",
      IIf(
        [PunkteAusstattung] > 166.6667
        And [PunkteAusstattung] < 233.3331,
        "mittel"
      )
    )
  ) AS Ausstattung,
  IIf(
    [Ausstattung] = "gehoben",
    [PunkteAusstattung] - 233.33,
    IIf(
      [Ausstattung] = "mittel",
      [PunkteAusstattung] - 166.66,
      IIf(
        [Ausstattung] = "einfach", [PunkteAusstattung] - 100
      )
    )
  ) AS Range,
  tbl_100_20_Gebäudeteile.[Bewertung abgeschlossen],
  tbl_100_20_Gebäudeteile.von,
  tbl_100_20_Gebäudeteile.Erläuterungen,
  tbl_100_20_Gebäudeteile.Bilanz_relevant,
  tbl_100_20_Gebäudeteile.Erläut_Bewertung,
  tbl_100_20_Gebäudeteile.LS_Grst_wert_hier_zuordn,
  tbl_100_20_Gebäudeteile.[Zuordnung Bilanz],
  tbl_100_20_Gebäudeteile.Zuschuss_Prozent,
  tbl_100_20_Gebäudeteile.Index_manuell,
  tbl_100_20_Gebäudeteile.Versicherungswert
FROM
  tbl_100_10_Liegenschaften
  INNER JOIN (
    M_Strassenverzeichnis
    RIGHT JOIN tbl_100_20_Gebäudeteile ON M_Strassenverzeichnis.Kennummer = tbl_100_20_Gebäudeteile.Kennummer_Straße
  ) ON tbl_100_10_Liegenschaften.ID_Gebäude = tbl_100_20_Gebäudeteile.ID_Gebäude
ORDER BY
  tbl_100_10_Liegenschaften.Bezeichnung,
  tbl_100_20_Gebäudeteile.Gebäudeteil,
  M_Strassenverzeichnis.Name;
