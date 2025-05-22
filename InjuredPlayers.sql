INSERT INTO InjuryRecords (player_id, case_of_injury) VALUES
(2, 'Hamstring strain during training'),   
(18, 'Ankle sprain during match'),         
(34, 'Knee injury from tackle'),           
(50, 'Concussion from header clash'),      
(66, 'Groin pull during sprint'),          
(82, 'Shoulder dislocation from fall'),    
(98, 'Calf strain during warm-up'),        
(114, 'Thigh bruise from collision');      

-- Status of players
UPDATE Players
SET status = 'Injured'
WHERE player_id IN (2, 18, 34, 50, 66, 82, 98, 114);