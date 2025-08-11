Select
  distinctrow *
from
  qry_030_05_20_Tats_Gepl_Finanz_Umstimmigkeiten_01
UNION
select
  distinctrow *
from
  qry_030_05_40_Tats_Gepl_Finanz_Umstimmigkeiten_03
UNION
select
  distinctrow *
from
  qry_030_05_45_Tats_Gepl_Finanz_Umstimmigkeiten_04;
