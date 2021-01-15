CREATE VIEW elimina_moto AS SELECT b.licenseplate, b.brand, b.model, m.firstname, m.lastname, m.memberid FROM bikes b, members m 
WHERE b.memberid = m.memberid;


CREATE VIEW elimina_member AS SELECT m.memberid, m.firstname, m.lastname, h.headquartername FROM members m, headquarters h
WHERE m.headquarterid = h.headquarterid;


CREATE VIEW elimina_arma AS SELECT a.gunid, a.brand, a.model, a.guntype, m.firstname, m.lastname, m.memberid FROM guns a, members m
WHERE a.memberid = m.memberid;


CREATE VIEW veure_antecedents AS SELECT m.firstname, m.lastname, c.crimeid, c.crime, c.jurydate  FROM criminalrecord c, members m
WHERE c.memberid = m.memberid;


CREATE VIEW info_antecedents AS SELECT m.firstname, m.lastname, c.crimeid, c.crime, c.jurydate, c.jailin, c.jailout  FROM criminalrecord c, members m
WHERE c.memberid = m.memberid;


CREATE VIEW info_seu_ad AS SELECT h.headquarterid, h.headquartername, a.street, a.number, a.city, a.state, a.country, 
h.foundation FROM headquarters h, address a 
WHERE h.addressid = a.addressid;


CREATE VIEW info_seu_me AS SELECT h.headquarterid, COUNT(m.memberid) FROM headquarters h, members m 
WHERE m.headquarterid = h.headquarterid GROUP BY h.headquarterid;

CREATE VIEW info_seu_di AS SELECT h.headquarterid, SUM(d.deposit) ,COUNT(d.deposit) FROM headquarters h, moves d 
WHERE h.headquarterid = d.headquarterid GROUP BY h.headquarterid;


CREATE VIEW info_persona AS SELECT m.memberid, m.firstname, m.lastname, m.nickname, m.sex, m.birthday, a.street, a.number, 
a.city, a.state, a.country, m.inband, h.headquartername
FROM headquarters h, address a, members m 
WHERE m.addressid = a.addressid AND m.headquarterid = h.headquarterid;



