INSERT INTO Archiv_Mietberechnungen (
  Planjahr, Betrieb, BereichNr, BereichName,
  Bezeichnung, ID, Kostenart, Betrag,
  sort, Bruttogrundfläche, [Text],
  datum
)
SELECT
  NK_enstanden_ohne_Vorauszahlungen_DS_suchen.Haushaltsjahr,
  NK_enstanden_ohne_Vorauszahlungen_DS_suchen.Betrieb,
  NK_enstanden_ohne_Vorauszahlungen_DS_suchen.BereichNr,
  NK_enstanden_ohne_Vorauszahlungen_DS_suchen.BereichName,
  NK_enstanden_ohne_Vorauszahlungen_DS_suchen.Bezeichnung,
  NK_enstanden_ohne_Vorauszahlungen_DS_suchen.M_Objekte.ID,
  NK_enstanden_ohne_Vorauszahlungen_DS_suchen.Kostenart,
  NK_enstanden_ohne_Vorauszahlungen_DS_suchen.Betrag,
  NK_enstanden_ohne_Vorauszahlungen_DS_suchen.sort,
  NK_enstanden_ohne_Vorauszahlungen_DS_suchen.Bruttogrundfläche,
  First(
    NK_enstanden_ohne_Vorauszahlungen_DS_suchen.Text
  ) AS [ErsterWert von Text],
  Archiv_Mietberechnungen.datum
FROM
  NK_enstanden_ohne_Vorauszahlungen_DS_suchen
  LEFT JOIN Archiv_Mietberechnungen ON NK_enstanden_ohne_Vorauszahlungen_DS_suchen.Text = Archiv_Mietberechnungen.Text
GROUP BY
  NK_enstanden_ohne_Vorauszahlungen_DS_suchen.Haushaltsjahr,
  NK_enstanden_ohne_Vorauszahlungen_DS_suchen.Betrieb,
  NK_enstanden_ohne_Vorauszahlungen_DS_suchen.BereichNr,
  NK_enstanden_ohne_Vorauszahlungen_DS_suchen.BereichName,
  NK_enstanden_ohne_Vorauszahlungen_DS_suchen.Bezeichnung,
  NK_enstanden_ohne_Vorauszahlungen_DS_suchen.M_Objekte.ID,
  NK_enstanden_ohne_Vorauszahlungen_DS_suchen.Kostenart,
  NK_enstanden_ohne_Vorauszahlungen_DS_suchen.Betrag,
  NK_enstanden_ohne_Vorauszahlungen_DS_suchen.sort,
  NK_enstanden_ohne_Vorauszahlungen_DS_suchen.Bruttogrundfläche,
  Archiv_Mietberechnungen.datum;
