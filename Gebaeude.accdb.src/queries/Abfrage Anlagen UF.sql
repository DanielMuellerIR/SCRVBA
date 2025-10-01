SELECT
  IIf(
    IsDate([BeendetB20]),
    False,
    True
  ) AS Offen,
  Anlagen.*
FROM
  Anlagen
WHERE
  (
    (
      (Anlagen.ID_Massnahme)= F_Variable ("lng_ID_Massn")
    )
  )
ORDER BY
  IIf(
    IsDate([BeendetB20]),
    False,
    True
  ),
  Anlagen.BeendetB20 DESC,
  Angelegt DESC;
