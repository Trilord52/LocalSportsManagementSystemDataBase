-- Inserting player statistics for all 14 games
-- Game 1: St. George FC (1) vs Fasil Kenema FC (2), Result: St. George wins 2-1
INSERT INTO PlayerGameStats (player_id, game_id, goals, yellow_cards, red_cards) VALUES
(1, 1, 2, 0, 0),    -- Fitsum Assefa (St. George) scores 2
(17, 1, 1, 1, 0),   -- Girma Birru (Fasil Kenema) scores 1, 1 yellow
(2, 1, 0, 1, 0),    -- Tesfaye Girma (St. George) 1 yellow
(18, 1, 0, 0, 1),   -- Abdella Mohammed (Fasil Kenema) 1 red
(9, 1, 0, 0, 0),    -- Samuel Teshome (St. George goalkeeper)
(25, 1, 0, 0, 0);   -- Amanuel Getachew (Fasil Kenema goalkeeper)

-- Game 2: Adama City FC (3) vs Bahirdar City FC (4), Result: Adama City wins 3-0
INSERT INTO PlayerGameStats (player_id, game_id, goals, yellow_cards, red_cards) VALUES
(33, 2, 2, 0, 0),   -- Tesfaye Alemu (Adama) scores 2
(35, 2, 1, 0, 0),   -- Mulugeta Tadesse (Adama) scores 1
(49, 2, 0, 1, 0),   -- Nasser Ibrahim (Bahirdar) 1 yellow
(51, 2, 0, 0, 0),   -- Kebede Alemu (Bahirdar)
(41, 2, 0, 0, 0),   -- Belay Solomon (Adama goalkeeper)
(57, 2, 0, 1, 0);   -- Ephrem Tilahun (Bahirdar goalkeeper) 1 yellow

-- Game 3: Sidama Bunna FC (5) vs Jimma Aba Jifar FC (6), Result: Sidama Bunna wins 1-0
INSERT INTO PlayerGameStats (player_id, game_id, goals, yellow_cards, red_cards) VALUES
(65, 3, 1, 0, 0),   -- Abebaw Mehari (Sidama) scores 1
(81, 3, 0, 0, 0),   -- Fikremariam Hailemichael (Jimma)
(66, 3, 0, 1, 0),   -- Tsegaye Tekle (Sidama) 1 yellow
(82, 3, 0, 0, 0),   -- Bikila Berhanu (Jimma)
(73, 3, 0, 0, 0),   -- Lijalem Kebede (Sidama goalkeeper)
(89, 3, 0, 1, 0);   -- Negash Bahiru (Jimma goalkeeper) 1 yellow

-- Game 4: Wolaitta Dicha FC (7) vs Hawassa City FC (8), Result: Wolaitta Dicha wins 4-2
INSERT INTO PlayerGameStats (player_id, game_id, goals, yellow_cards, red_cards) VALUES
(97, 4, 2, 0, 0),   -- Mulugeta Tadesse (Wolaitta) scores 2
(98, 4, 2, 1, 0),   -- Tesfaye Abebe (Wolaitta) scores 2, 1 yellow
(113, 4, 1, 0, 0),  -- Tesfaye Mekonnen (Hawassa) scores 1
(115, 4, 1, 0, 0),  -- Haile Getachew (Hawassa) scores 1
(105, 4, 0, 0, 0),  -- Mesfin Welde (Wolaitta goalkeeper)
(121, 4, 0, 0, 0);  -- Kassahun Dereje (Hawassa goalkeeper)

-- Game 5: St. George FC (1) vs Adama City FC (3), Result: St. George wins 1-0
INSERT INTO PlayerGameStats (player_id, game_id, goals, yellow_cards, red_cards) VALUES
(1, 5, 1, 0, 0),    -- Fitsum Assefa (St. George) scores 1
(33, 5, 0, 0, 0),   -- Tesfaye Alemu (Adama)
(5, 5, 0, 1, 0),    -- Fikru Desta (St. George) 1 yellow
(36, 5, 0, 0, 1),   -- Getachew Birhanu (Adama) 1 red
(9, 5, 0, 0, 0),    -- Samuel Teshome (St. George goalkeeper)
(41, 5, 0, 0, 0);   -- Belay Solomon (Adama goalkeeper)

-- Game 6: Fasil Kenema FC (2) vs Bahirdar City FC (4), Result: Fasil Kenema wins 2-1
INSERT INTO PlayerGameStats (player_id, game_id, goals, yellow_cards, red_cards) VALUES
(17, 6, 1, 0, 0),   -- Girma Birru (Fasil) scores 1
(21, 6, 1, 0, 0),   -- Sisay Mekonnen (Fasil) scores 1
(49, 6, 1, 0, 0),   -- Nasser Ibrahim (Bahirdar) scores 1
(52, 6, 0, 1, 0),   -- Tesfaye Getachew (Bahirdar) 1 yellow
(25, 6, 0, 0, 0),   -- Amanuel Getachew (Fasil goalkeeper)
(57, 6, 0, 0, 0);   -- Ephrem Tilahun (Bahirdar goalkeeper)

-- Game 7: Sidama Bunna FC (5) vs Wolaitta Dicha FC (7), Result: Sidama Bunna wins 3-2
INSERT INTO PlayerGameStats (player_id, game_id, goals, yellow_cards, red_cards) VALUES
(65, 7, 2, 0, 0),   -- Abebaw Mehari (Sidama) scores 2
(68, 7, 1, 1, 0),   -- Amanuel Ayenew (Sidama) scores 1, 1 yellow
(97, 7, 1, 0, 0),   -- Mulugeta Tadesse (Wolaitta) scores 1
(101, 7, 1, 0, 0),  -- Sisay Tadesse (Wolaitta) scores 1
(73, 7, 0, 0, 0),   -- Lijalem Kebede (Sidama goalkeeper)
(105, 7, 0, 1, 0);  -- Mesfin Welde (Wolaitta goalkeeper) 1 yellow

-- Game 8: Jimma Aba Jifar FC (6) vs Hawassa City FC (8), Result: Jimma Aba Jifar wins 1-1 (assumed 1-1 draw, points to Jimma on tiebreaker)
INSERT INTO PlayerGameStats (player_id, game_id, goals, yellow_cards, red_cards) VALUES
(81, 8, 1, 0, 0),   -- Fikremariam Hailemichael (Jimma) scores 1
(113, 8, 1, 0, 0),  -- Tesfaye Mekonnen (Hawassa) scores 1
(83, 8, 0, 1, 0),   -- Ali Mohammed (Jimma) 1 yellow
(116, 8, 0, 0, 0),  -- Girum Tesfaye (Hawassa)
(89, 8, 0, 0, 0),   -- Negash Bahiru (Jimma goalkeeper)
(121, 8, 0, 0, 0);  -- Kassahun Dereje (Hawassa goalkeeper)

-- Game 9: St. George FC (1) vs Bahirdar City FC (4), Result: Draw 1-1
INSERT INTO PlayerGameStats (player_id, game_id, goals, yellow_cards, red_cards) VALUES
(1, 9, 1, 0, 0),    -- Fitsum Assefa (St. George) scores 1
(49, 9, 1, 0, 0),   -- Nasser Ibrahim (Bahirdar) scores 1
(3, 9, 0, 1, 0),    -- Abdi Mohammed (St. George) 1 yellow
(53, 9, 0, 0, 0),   -- Mulugeta Abebe (Bahirdar)
(9, 9, 0, 0, 0),    -- Samuel Teshome (St. George goalkeeper)
(57, 9, 0, 0, 0);   -- Ephrem Tilahun (Bahirdar goalkeeper)

-- Game 10: Fasil Kenema FC (2) vs Sidama Bunna FC (5), Result: Fasil Kenema wins 2-0
INSERT INTO PlayerGameStats (player_id, game_id, goals, yellow_cards, red_cards) VALUES
(17, 10, 1, 0, 0),  -- Girma Birru (Fasil) scores 1
(20, 10, 1, 0, 0),  -- Mohammed Ali (Fasil) scores 1
(65, 10, 0, 1, 0),  -- Abebaw Mehari (Sidama) 1 yellow
(67, 10, 0, 0, 0),  -- Henock Zewdu (Sidama)
(25, 10, 0, 0, 0),  -- Amanuel Getachew (Fasil goalkeeper)
(73, 10, 0, 0, 0);  -- Lijalem Kebede (Sidama goalkeeper)

-- Game 11: Adama City FC (3) vs Jimma Aba Jifar FC (6), Result: Adama City wins 4-1
INSERT INTO PlayerGameStats (player_id, game_id, goals, yellow_cards, red_cards) VALUES
(33, 11, 2, 0, 0),  -- Tesfaye Alemu (Adama) scores 2
(37, 11, 2, 0, 0),  -- Dawit Zewdu (Adama) scores 2
(81, 11, 1, 1, 0),  -- Fikremariam Hailemichael (Jimma) scores 1, 1 yellow
(84, 11, 0, 0, 0),  -- Hassan Tadesse (Jimma)
(41, 11, 0, 0, 0),  -- Belay Solomon (Adama goalkeeper)
(89, 11, 0, 1, 0);  -- Negash Bahiru (Jimma goalkeeper) 1 yellow

-- Game 12: Wolaitta Dicha FC (7) vs St. George FC (1), Result: Wolaitta Dicha wins 3-1
INSERT INTO PlayerGameStats (player_id, game_id, goals, yellow_cards, red_cards) VALUES
(97, 12, 2, 0, 0),  -- Mulugeta Tadesse (Wolaitta) scores 2
(100, 12, 1, 0, 0), -- Kebede Mekonnen (Wolaitta) scores 1
(1, 12, 1, 0, 0),   -- Fitsum Assefa (St. George) scores 1
(4, 12, 0, 1, 0),   -- Mekonnen Birhanu (St. George) 1 yellow
(105, 12, 0, 0, 0), -- Mesfin Welde (Wolaitta goalkeeper)
(9, 12, 0, 0, 0);   -- Samuel Teshome (St. George goalkeeper)

-- Game 13: Hawassa City FC (8) vs Fasil Kenema FC (2), Result: Hawassa City wins 2-2 (assumed tiebreaker win)
INSERT INTO PlayerGameStats (player_id, game_id, goals, yellow_cards, red_cards) VALUES
(113, 13, 1, 0, 0), -- Tesfaye Mekonnen (Hawassa) scores 1
(115, 13, 1, 0, 0), -- Haile Getachew (Hawassa) scores 1
(17, 13, 1, 0, 0),  -- Girma Birru (Fasil) scores 1
(22, 13, 1, 1, 0),  -- Fikremariam Yared (Fasil) scores 1, 1 yellow
(121, 13, 0, 0, 0), -- Kassahun Dereje (Hawassa goalkeeper)
(25, 13, 0, 0, 0);  -- Amanuel Getachew (Fasil goalkeeper)

-- Game 14: Bahirdar City FC (4) vs Sidama Bunna FC (5), Result: Bahirdar City wins 1-0
INSERT INTO PlayerGameStats (player_id, game_id, goals, yellow_cards, red_cards) VALUES
(49, 14, 1, 0, 0),  -- Nasser Ibrahim (Bahirdar) scores 1
(65, 14, 0, 1, 0),  -- Abebaw Mehari (Sidama) 1 yellow
(50, 14, 0, 0, 0),  -- Fikru Desta (Bahirdar)
(69, 14, 0, 0, 1),  -- Sisay Fikru (Sidama) 1 red
(57, 14, 0, 0, 0),  -- Ephrem Tilahun (Bahirdar goalkeeper)
(73, 14, 0, 0, 0);  -- Lijalem Kebede (Sidama goalkeeper)

SELECT game_id, COUNT(*) AS player_count, SUM(goals) AS total_goals
FROM PlayerGameStats
GROUP BY game_id;