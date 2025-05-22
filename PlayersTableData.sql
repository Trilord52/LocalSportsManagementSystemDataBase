-- 11 main players and 5 substitutes

-- St. George FC Players (team_id = 1)
INSERT INTO Players (first_name, last_name, dob, phone_number, skill_level, position, team_id, status, is_main_11) VALUES
('Fitsum', 'Assefa', '1995-06-10', '0911223344', 'Professional', 'Forward', 1, 'Not Injured', TRUE),
('Tesfaye', 'Girma', '1994-03-15', '0912334455', 'Professional', 'Midfielder', 1, 'Not Injured', TRUE),
('Abdi', 'Mohammed', '1996-08-02', '0913445566', 'Advanced', 'Defender', 1, 'Not Injured', TRUE),
('Mekonnen', 'Birhanu', '1997-01-12', '0914556677', 'Intermediate', 'Midfielder', 1, 'Not Injured', TRUE),
('Fikru', 'Desta', '1994-05-21', '0915667788', 'Advanced', 'Forward', 1, 'Not Injured', TRUE),
('Abraham', 'Alemu', '1995-07-01', '0916778899', 'Professional', 'Defender', 1, 'Not Injured', TRUE),
('Girum', 'Tesfaye', '1993-09-25', '0917889900', 'Intermediate', 'Midfielder', 1, 'Not Injured', TRUE),
('Tewodros', 'Hailu', '1995-10-10', '0918990011', 'Advanced', 'Forward', 1, 'Not Injured', TRUE),
('Samuel', 'Teshome', '1996-02-15', '0919001122', 'Professional', 'Goalkeeper', 1, 'Not Injured', TRUE),
('Dawit', 'Kebede', '1997-04-20', '0919112233', 'Advanced', 'Defender', 1, 'Not Injured', TRUE),
('Hailu', 'Mengesha', '1995-11-30', '0919223344', 'Intermediate', 'Midfielder', 1, 'Not Injured', TRUE),
-- Substitutes
('Yonas', 'Abebe', '1998-03-10', '0919334455', 'Intermediate', 'Goalkeeper', 1, 'Not Injured', FALSE),
('Elias', 'Tadesse', '1996-07-25', '0919445566', 'Advanced', 'Forward', 1, 'Not Injured', FALSE),
('Nati', 'Girma', '1997-09-12', '0919556677', 'Intermediate', 'Midfielder', 1, 'Not Injured', FALSE),
('Solomon', 'Woldemariam', '1995-12-05', '0919667788', 'Advanced', 'Defender', 1, 'Not Injured', FALSE),
('Bereket', 'Yohannes', '1996-08-18', '0919778899', 'Intermediate', 'Forward', 1, 'Not Injured', FALSE);

-- Fasil Kenema FC Players (team_id = 2)
INSERT INTO Players (first_name, last_name, dob, phone_number, skill_level, position, team_id, status, is_main_11) VALUES
('Girma', 'Birru', '1994-12-25', '0922334455', 'Professional', 'Midfielder', 2, 'Not Injured', TRUE),
('Abdella', 'Mohammed', '1995-05-30', '0923445566', 'Intermediate', 'Defender', 2, 'Not Injured', TRUE),
('Ali', 'Abdi', '1997-02-11', '0924556677', 'Intermediate', 'Forward', 2, 'Not Injured', TRUE),
('Tesfaye', 'Tilahun', '1996-04-12', '0925667788', 'Professional', 'Midfielder', 2, 'Not Injured', TRUE),
('Mohammed', 'Ali', '1995-11-15', '0926778899', 'Advanced', 'Defender', 2, 'Not Injured', TRUE),
('Sisay', 'Mekonnen', '1997-03-03', '0927889900', 'Intermediate', 'Forward', 2, 'Not Injured', TRUE),
('Fikremariam', 'Yared', '1994-06-08', '0928990011', 'Advanced', 'Midfielder', 2, 'Not Injured', TRUE),
('Tewodros', 'Abate', '1995-01-22', '0929000112', 'Intermediate', 'Forward', 2, 'Not Injured', TRUE),
('Amanuel', 'Getachew', '1996-03-14', '0929111223', 'Professional', 'Goalkeeper', 2, 'Not Injured', TRUE),
('Kedir', 'Hassan', '1997-06-19', '0929222334', 'Advanced', 'Defender', 2, 'Not Injured', TRUE),
('Mulugeta', 'Ayele', '1995-10-08', '0929333445', 'Intermediate', 'Midfielder', 2, 'Not Injured', TRUE),
-- Substitutes
('Tesfaye', 'Welde', '1998-04-15', '0929444556', 'Intermediate', 'Goalkeeper', 2, 'Not Injured', FALSE),
('Habtamu', 'Dibaba', '1996-08-30', '0929555667', 'Advanced', 'Forward', 2, 'Not Injured', FALSE),
('Zerihun', 'Admassu', '1997-11-03', '0929666778', 'Intermediate', 'Midfielder', 2, 'Not Injured', FALSE),
('Assefa', 'Bekele', '1995-12-22', '0929777889', 'Advanced', 'Defender', 2, 'Not Injured', FALSE),
('Daniel', 'Fekadu', '1996-09-14', '0929888990', 'Intermediate', 'Forward', 2, 'Not Injured', FALSE);

-- Adama City FC Players (team_id = 3)
INSERT INTO Players (first_name, last_name, dob, phone_number, skill_level, position, team_id, status, is_main_11) VALUES
('Tesfaye', 'Alemu', '1993-11-04', '0932334455', 'Intermediate', 'Midfielder', 3, 'Not Injured', TRUE),
('Mohammed', 'Ali', '1997-06-18', '0933445566', 'Beginner', 'Defender', 3, 'Not Injured', TRUE),
('Haile', 'Desta', '1994-07-22', '0934556677', 'Advanced', 'Forward', 3, 'Not Injured', TRUE),
('Mekonnen', 'Alemu', '1996-01-13', '0935667788', 'Intermediate', 'Defender', 3, 'Not Injured', TRUE),
('Mulugeta', 'Tadesse', '1995-09-25', '0936778899', 'Professional', 'Midfielder', 3, 'Not Injured', TRUE),
('Getachew', 'Birhanu', '1997-05-12', '0937889900', 'Intermediate', 'Forward', 3, 'Not Injured', TRUE),
('Dawit', 'Zewdu', '1996-03-06', '0938990011', 'Advanced', 'Defender', 3, 'Not Injured', TRUE),
('Nassir', 'Abdi', '1995-12-14', '0939000112', 'Advanced', 'Midfielder', 3, 'Not Injured', TRUE),
('Belay', 'Solomon', '1996-01-17', '0939111223', 'Professional', 'Goalkeeper', 3, 'Not Injured', TRUE),
('Abebe', 'Yitbarek', '1997-05-09', '0939222334', 'Advanced', 'Defender', 3, 'Not Injured', TRUE),
('Tsegaye', 'Worku', '1995-08-13', '0939333445', 'Intermediate', 'Midfielder', 3, 'Not Injured', TRUE),
-- Substitutes
('Yirga', 'Lemma', '1998-06-20', '0939444556', 'Intermediate', 'Goalkeeper', 3, 'Not Injured', FALSE),
('Shimelis', 'Gebremedhin', '1996-10-05', '0939555667', 'Advanced', 'Forward', 3, 'Not Injured', FALSE),
('Mikael', 'Haile', '1997-12-18', '0939666778', 'Intermediate', 'Midfielder', 3, 'Not Injured', FALSE),
('Endale', 'Ferede', '1995-11-07', '0939777889', 'Advanced', 'Defender', 3, 'Not Injured', FALSE),
('Robel', 'Teshome', '1996-07-30', '0939888990', 'Intermediate', 'Forward', 3, 'Not Injured', FALSE);

-- Bahirdar City FC Players (team_id = 4)
INSERT INTO Players (first_name, last_name, dob, phone_number, skill_level, position, team_id, status, is_main_11) VALUES
('Nasser', 'Ibrahim', '1995-10-13', '0942334455', 'Professional', 'Midfielder', 4, 'Not Injured', TRUE),
('Fikru', 'Desta', '1996-01-01', '0943445566', 'Intermediate', 'Forward', 4, 'Not Injured', TRUE),
('Kebede', 'Alemu', '1997-04-28', '0944556677', 'Advanced', 'Defender', 4, 'Not Injured', TRUE),
('Tesfaye', 'Getachew', '1996-08-20', '0945667788', 'Intermediate', 'Midfielder', 4, 'Not Injured', TRUE),
('Mulugeta', 'Abebe', '1997-02-14', '0946778899', 'Intermediate', 'Forward', 4, 'Not Injured', TRUE),
('Girum', 'Tesfaye', '1995-03-05', '0947889900', 'Professional', 'Defender', 4, 'Not Injured', TRUE),
('Tesfaye', 'Mengistu', '1996-11-15', '0948990011', 'Intermediate', 'Midfielder', 4, 'Not Injured', TRUE),
('Hassan', 'Mohammed', '1997-09-02', '0949000112', 'Advanced', 'Forward', 4, 'Not Injured', TRUE),
('Ephrem', 'Tilahun', '1996-02-22', '0949111223', 'Professional', 'Goalkeeper', 4, 'Not Injured', TRUE),
('Yonas', 'Woldie', '1997-06-04', '0949222334', 'Advanced', 'Defender', 4, 'Not Injured', TRUE),
('Alemayehu', 'Gizaw', '1995-09-16', '0949333445', 'Intermediate', 'Midfielder', 4, 'Not Injured', TRUE),
-- Substitutes
('Dawit', 'Mamo', '1998-05-12', '0949444556', 'Intermediate', 'Goalkeeper', 4, 'Not Injured', FALSE),
('Chala', 'Kebede', '1996-09-27', '0949555667', 'Advanced', 'Forward', 4, 'Not Injured', FALSE),
('Tilahun', 'Asefa', '1997-11-30', '0949666778', 'Intermediate', 'Midfielder', 4, 'Not Injured', FALSE),
('Getnet', 'Haile', '1995-12-19', '0949777889', 'Advanced', 'Defender', 4, 'Not Injured', FALSE),
('Abel', 'Tesfaye', '1996-08-11', '0949888990', 'Intermediate', 'Forward', 4, 'Not Injured', FALSE);

-- Sidama Bunna FC Players (team_id = 5)
INSERT INTO Players (first_name, last_name, dob, phone_number, skill_level, position, team_id, status, is_main_11) VALUES
('Abebaw', 'Mehari', '1994-05-14', '0952334455', 'Advanced', 'Midfielder', 5, 'Not Injured', TRUE),
('Tsegaye', 'Tekle', '1996-09-05', '0953445566', 'Beginner', 'Defender', 5, 'Not Injured', TRUE),
('Abdi', 'Tiruneh', '1997-02-14', '0954556677', 'Intermediate', 'Forward', 5, 'Not Injured', TRUE),
('Mohammed', 'Alemu', '1995-08-21', '0955667788', 'Intermediate', 'Midfielder', 5, 'Not Injured', TRUE),
('Henock', 'Zewdu', '1996-10-10', '0956778899', 'Professional', 'Forward', 5, 'Not Injured', TRUE),
('Sisay', 'Fikru', '1995-04-14', '0957889900', 'Advanced', 'Defender', 5, 'Not Injured', TRUE),
('Abraham', 'Yosef', '1997-11-01', '0958990011', 'Intermediate', 'Midfielder', 5, 'Not Injured', TRUE),
('Amanuel', 'Ayenew', '1996-07-30', '0959000112', 'Advanced', 'Forward', 5, 'Not Injured', TRUE),
('Lijalem', 'Kebede', '1996-03-18', '0959111223', 'Professional', 'Goalkeeper', 5, 'Not Injured', TRUE),
('Fasil', 'Tsegaye', '1997-07-02', '0959222334', 'Advanced', 'Defender', 5, 'Not Injured', TRUE),
('Meseret', 'Girma', '1995-10-25', '0959333445', 'Intermediate', 'Midfielder', 5, 'Not Injured', TRUE),
-- Substitutes
('Yohannes', 'Adane', '1998-06-07', '0959444556', 'Intermediate', 'Goalkeeper', 5, 'Not Injured', FALSE),
('Asrat', 'Welde', '1996-10-19', '0959555667', 'Advanced', 'Forward', 5, 'Not Injured', FALSE),
('Mulualem', 'Bekele', '1997-12-04', '0959666778', 'Intermediate', 'Midfielder', 5, 'Not Injured', FALSE),
('Tamrat', 'Alemayehu', '1995-11-13', '0959777889', 'Advanced', 'Defender', 5, 'Not Injured', FALSE),
('Kaleab', 'Solomon', '1996-08-26', '0959888990', 'Intermediate', 'Forward', 5, 'Not Injured', FALSE);

-- Jimma Aba Jifar FC Players (team_id = 6)
INSERT INTO Players (first_name, last_name, dob, phone_number, skill_level, position, team_id, status, is_main_11) VALUES
('Fikremariam', 'Hailemichael', '1995-07-03', '0962334455', 'Professional', 'Forward', 6, 'Not Injured', TRUE),
('Bikila', 'Berhanu', '1996-11-09', '0963445566', 'Advanced', 'Defender', 6, 'Not Injured', TRUE),
('Ali', 'Mohammed', '1997-12-21', '0964556677', 'Intermediate', 'Midfielder', 6, 'Not Injured', TRUE),
('Hassan', 'Tadesse', '1995-08-15', '0965667788', 'Intermediate', 'Forward', 6, 'Not Injured', TRUE),
('Said', 'Yared', '1996-04-27', '0966778899', 'Advanced', 'Defender', 6, 'Not Injured', TRUE),
('Tesfaye', 'Ali', '1997-09-18', '0967889900', 'Advanced', 'Midfielder', 6, 'Not Injured', TRUE),
('Tewodros', 'Abate', '1995-06-30', '0968990011', 'Professional', 'Forward', 6, 'Not Injured', TRUE),
('Benny', 'Mulugeta', '1996-02-19', '0969000112', 'Intermediate', 'Midfielder', 6, 'Not Injured', TRUE),
('Negash', 'Bahiru', '1996-03-11', '0969111223', 'Professional', 'Goalkeeper', 6, 'Not Injured', TRUE),
('Ermias', 'Gebremichael', '1997-07-16', '0969222334', 'Advanced', 'Defender', 6, 'Not Injured', TRUE),
('Zewdu', 'Ayalew', '1995-10-29', '0969333445', 'Intermediate', 'Midfielder', 6, 'Not Injured', TRUE),
-- Substitutes
('Alem', 'Tsegaye', '1998-05-23', '0969444556', 'Intermediate', 'Goalkeeper', 6, 'Not Injured', FALSE),
('Selamawit', 'Haile', '1996-09-08', '0969555667', 'Advanced', 'Forward', 6, 'Not Injured', FALSE),
('Biruk', 'Mengistu', '1997-11-21', '0969666778', 'Intermediate', 'Midfielder', 6, 'Not Injured', FALSE),
('Dawit', 'Fekadu', '1995-12-10', '0969777889', 'Advanced', 'Defender', 6, 'Not Injured', FALSE),
('Kidus', 'Yimer', '1996-08-03', '0969888990', 'Intermediate', 'Forward', 6, 'Not Injured', FALSE);

-- Wolaitta Dicha FC Players (team_id = 7)
INSERT INTO Players (first_name, last_name, dob, phone_number, skill_level, position, team_id, status, is_main_11) VALUES
('Mulugeta', 'Tadesse', '1995-10-05', '0972334455', 'Intermediate', 'Forward', 7, 'Not Injured', TRUE),
('Tesfaye', 'Abebe', '1996-03-22', '0973445566', 'Professional', 'Midfielder', 7, 'Not Injured', TRUE),
('Ali', 'Mohammed', '1997-01-11', '0974556677', 'Intermediate', 'Defender', 7, 'Not Injured', TRUE),
('Mohammed', 'Yared', '1995-12-02', '0975667788', 'Advanced', 'Midfielder', 7, 'Not Injured', TRUE),
('Kebede', 'Mekonnen', '1996-06-01', '0976778899', 'Professional', 'Forward', 7, 'Not Injured', TRUE),
('Tesfaye', 'Bekele', '1997-07-22', '0977889900', 'Intermediate', 'Defender', 7, 'Not Injured', TRUE),
('Fikru', 'Desta', '1995-10-21', '0978990011', 'Advanced', 'Midfielder', 7, 'Not Injured', TRUE),
('Sisay', 'Tadesse', '1996-08-12', '0979000112', 'Intermediate', 'Forward', 7, 'Not Injured', TRUE),
('Mesfin', 'Welde', '1996-04-07', '0979111223', 'Professional', 'Goalkeeper', 7, 'Not Injured', TRUE),
('Abebech', 'Girma', '1997-08-13', '0979222334', 'Advanced', 'Defender', 7, 'Not Injured', TRUE),
('Bethelhem', 'Asefa', '1995-11-26', '0979333445', 'Intermediate', 'Midfielder', 7, 'Not Injured', TRUE),
-- Substitutes
('Tadesse', 'Yohannes', '1998-06-14', '0979444556', 'Intermediate', 'Goalkeeper', 7, 'Not Injured', FALSE),
('Helen', 'Kebede', '1996-10-01', '0979555667', 'Advanced', 'Forward', 7, 'Not Injured', FALSE),
('Wubishet', 'Tilahun', '1997-12-17', '0979666778', 'Intermediate', 'Midfielder', 7, 'Not Injured', FALSE),
('Aster', 'Alemayehu', '1995-11-06', '0979777889', 'Advanced', 'Defender', 7, 'Not Injured', FALSE),
('Lidya', 'Mengistu', '1996-08-19', '0979888990', 'Intermediate', 'Forward', 7, 'Not Injured', FALSE);

-- Hawassa City FC Players (team_id = 8)
INSERT INTO Players (first_name, last_name, dob, phone_number, skill_level, position, team_id, status, is_main_11) VALUES
('Tesfaye', 'Mekonnen', '1994-01-15', '0982334455', 'Intermediate', 'Midfielder', 8, 'Not Injured', TRUE),
('Tewodros', 'Hailu', '1996-03-10', '0983445566', 'Professional', 'Defender', 8, 'Not Injured', TRUE),
('Haile', 'Getachew', '1997-10-20', '0984556677', 'Advanced', 'Forward', 8, 'Not Injured', TRUE),
('Mekonnen', 'Birhanu', '1995-07-17', '0985667788', 'Intermediate', 'Defender', 8, 'Not Injured', TRUE),
('Girum', 'Tesfaye', '1996-05-25', '0986778899', 'Advanced', 'Midfielder', 8, 'Not Injured', TRUE),
('Tewodros', 'Tesfaye', '1997-09-12', '0987889900', 'Professional', 'Forward', 8, 'Not Injured', TRUE),
('Sisay', 'Getachew', '1995-04-14', '0988990011', 'Intermediate', 'Midfielder', 8, 'Not Injured', TRUE),
('Tadesse', 'Alemu', '1996-11-30', '0989000112', 'Professional', 'Defender', 8, 'Not Injured', TRUE),
('Kassahun', 'Dereje', '1996-05-09', '0989111223', 'Professional', 'Goalkeeper', 8, 'Not Injured', TRUE),
('Ephrem', 'Worku', '1997-09-15', '0989222334', 'Advanced', 'Defender', 8, 'Not Injured', TRUE),
('Alem', 'Berhanu', '1995-12-28', '0989333445', 'Intermediate', 'Midfielder', 8, 'Not Injured', TRUE),
-- Substitutes
('Mulugeta', 'Haile', '1998-07-06', '0989444556', 'Intermediate', 'Goalkeeper', 8, 'Not Injured', FALSE),
('Yohannes', 'Fekadu', '1996-11-13', '0989555667', 'Advanced', 'Forward', 8, 'Not Injured', FALSE),
('Simeon', 'Tadesse', '1997-01-26', '0989666778', 'Intermediate', 'Midfielder', 8, 'Not Injured', FALSE),
('Dawit', 'Abebe', '1995-12-15', '0989777889', 'Advanced', 'Defender', 8, 'Not Injured', FALSE),
('Getachew', 'Solomon', '1996-09-08', '0989888990', 'Intermediate', 'Forward', 8, 'Not Injured', FALSE);