SELECT
  [Buchungsstellen _Doppik].Buchungsstelle,
  [Buchungsstellen _Doppik].Kennummer
FROM
  MonatsAO_temp_Buchungssatz_BuSt
  LEFT JOIN [Buchungsstellen _Doppik] ON MonatsAO_temp_Buchungssatz_BuSt.[ID aus Buchungsstellen] = [Buchungsstellen _Doppik].Kennummer;
