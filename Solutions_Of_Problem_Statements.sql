-- 1. Total Seats 


SELECT 	
	COUNT(DISTINCT parliament_constituency)
FROM constituencywise_results 


-- 2. What is the total number of seats available for elections in each state



SELECT 
	sr.state_id,
	s.state,
	COUNT(DISTINCT parliament_constituency) AS Total_Seats
FROM statewise_results AS sr
JOIN states AS s
ON sr.state_id = s.state_id  
GROUP BY 1,2


-- 3.Total Seats Won by NDA Alliance


SELECT 
	SUM(CASE WHEN party IN(
				'Bharatiya Janata Party - BJP', 
                'Telugu Desam - TDP', 
				'Janata Dal  (United) - JD(U)',
                'Shiv Sena - SHS', 
                'AJSU Party - AJSUP', 
                'Apna Dal (Soneylal) - ADAL', 
                'Asom Gana Parishad - AGP',
                'Hindustani Awam Morcha (Secular) - HAMS', 
                'Janasena Party - JnP', 
				'Janata Dal  (Secular) - JD(S)',
                'Lok Janshakti Party(Ram Vilas) - LJPRV', 
                'Nationalist Congress Party - NCP',
                'Rashtriya Lok Dal - RLD', 
                'Sikkim Krantikari Morcha - SKM'
	)THEN Won
	ELSE 0 
	END)
FROM partywise_results



-- 4. Seats Won by NDA Allianz Parties

SELECT 
	party,
	won
FROM partywise_results
WHERE 
	party IN (
		 'Bharatiya Janata Party - BJP', 
         'Telugu Desam - TDP', 
		 'Janata Dal  (United) - JD(U)',
         'Shiv Sena - SHS', 
         'AJSU Party - AJSUP', 
         'Apna Dal (Soneylal) - ADAL', 
         'Asom Gana Parishad - AGP',
         'Hindustani Awam Morcha (Secular) - HAMS', 
         'Janasena Party - JnP',  
		 'Janata Dal  (Secular) - JD(S)',
         'Lok Janshakti Party(Ram Vilas) - LJPRV', 
         'Nationalist Congress Party - NCP',
         'Rashtriya Lok Dal - RLD', 
         'Sikkim Krantikari Morcha - SKM'
)
ORDER BY 2 DESC;




-- 5.Total Seats Won by I.N.D.I.A. Allianz
-- Indian National Development Inclusive Alliance(I.N.D.I.A)


SELECT 
	SUM(CASE WHEN party IN (
				'Indian National Congress - INC',
                'Aam Aadmi Party - AAAP',
                'All India Trinamool Congress - AITC',
                'Bharat Adivasi Party - BHRTADVSIP',
                'Communist Party of India  (Marxist) - CPI(M)',
                'Communist Party of India  (Marxist-Leninist)  (Liberation) - CPI(ML)(L)',
                'Communist Party of India - CPI',
                'Dravida Munnetra Kazhagam - DMK',
                'Indian Union Muslim League - IUML',
                'Nat`Jammu & Kashmir National Conference - JKN',
                'Jharkhand Mukti Morcha - JMM',
                'Jammu & Kashmir National Conference - JKN',
                'Kerala Congress - KEC',
                'Marumalarchi Dravida Munnetra Kazhagam - MDMK',
                'Nationalist Congress Party Sharadchandra Pawar - NCPSP',
                'Rashtriya Janata Dal - RJD',
                'Rashtriya Loktantrik Party - RLTP',
                'Revolutionary Socialist Party - RSP',
                'Samajwadi Party - SP',
                'Shiv Sena (Uddhav Balasaheb Thackrey) - SHSUBT',
                'Viduthalai Chiruthaigal Katchi - VCK'
	) THEN WON 
	ELSE 0
	END)
FROM partywise_results


-- 6.Seats Won by I.N.D.I.A. Allianz Parties

SELECT 
	party,
	won 
FROM partywise_results
WHERE 
	party IN (
				'Indian National Congress - INC',
                'Aam Aadmi Party - AAAP',
                'All India Trinamool Congress - AITC',
                'Bharat Adivasi Party - BHRTADVSIP',
                'Communist Party of India  (Marxist) - CPI(M)',
                'Communist Party of India  (Marxist-Leninist)  (Liberation) - CPI(ML)(L)',
                'Communist Party of India - CPI',
                'Dravida Munnetra Kazhagam - DMK',
                'Indian Union Muslim League - IUML',
                'Nat`Jammu & Kashmir National Conference - JKN',
                'Jharkhand Mukti Morcha - JMM',
                'Jammu & Kashmir National Conference - JKN',
                'Kerala Congress - KEC',
                'Marumalarchi Dravida Munnetra Kazhagam - MDMK',
                'Nationalist Congress Party Sharadchandra Pawar - NCPSP',
                'Rashtriya Janata Dal - RJD',
                'Rashtriya Loktantrik Party - RLTP',
                'Revolutionary Socialist Party - RSP',
                'Samajwadi Party - SP',
                'Shiv Sena (Uddhav Balasaheb Thackrey) - SHSUBT',
                'Viduthalai Chiruthaigal Katchi - VCK'
	)
ORDER BY 2 DESC



-- 7. Add new column field in table partywise_results to get the Party Allianz as NDA, I.N.D.I.A and OTHER


ALTER TABLE partywise_results
ADD party_alliance VARCHAR(50)

UPDATE partywise_results 
SET party_alliance = 'I.N.D.I.A'
WHERE party IN(
			'Indian National Congress - INC',
            'Aam Aadmi Party - AAAP',
            'All India Trinamool Congress - AITC',
            'Bharat Adivasi Party - BHRTADVSIP',
            'Communist Party of India  (Marxist) - CPI(M)',
            'Communist Party of India  (Marxist-Leninist)  (Liberation) - CPI(ML)(L)',
            'Communist Party of India - CPI',
            'Dravida Munnetra Kazhagam - DMK',
            'Indian Union Muslim League - IUML',
            'Nat`Jammu & Kashmir National Conference - JKN',
            'Jharkhand Mukti Morcha - JMM',
            'Jammu & Kashmir National Conference - JKN',
            'Kerala Congress - KEC',
            'Marumalarchi Dravida Munnetra Kazhagam - MDMK',
            'Nationalist Congress Party Sharadchandra Pawar - NCPSP',
            'Rashtriya Janata Dal - RJD',
            'Rashtriya Loktantrik Party - RLTP',
            'Revolutionary Socialist Party - RSP',
            'Samajwadi Party - SP',
            'Shiv Sena (Uddhav Balasaheb Thackrey) - SHSUBT',
            'Viduthalai Chiruthaigal Katchi - VCK'
)


UPDATE partywise_results
SET party_alliance = 'NDA'
WHERE party IN (
		 'Bharatiya Janata Party - BJP', 
         'Telugu Desam - TDP', 
		 'Janata Dal  (United) - JD(U)',
         'Shiv Sena - SHS', 
         'AJSU Party - AJSUP', 
         'Apna Dal (Soneylal) - ADAL', 
         'Asom Gana Parishad - AGP',
         'Hindustani Awam Morcha (Secular) - HAMS', 
         'Janasena Party - JnP',  
		 'Janata Dal  (Secular) - JD(S)',
         'Lok Janshakti Party(Ram Vilas) - LJPRV', 
         'Nationalist Congress Party - NCP',
         'Rashtriya Lok Dal - RLD', 
         'Sikkim Krantikari Morcha - SKM'
)

UPDATE partywise_results
SET party_alliance = 'Other'
WHERE party_alliance IS NULL 





-- 8. Which party alliance (NDA, I.N.D.I.A, or OTHER) won the most seats across all states?



SELECT 
	party_alliance,
	SUM(won)
FROM partywise_results 
GROUP BY 1
ORDER BY 2 DESC



-- 9. Winning candidate's name, their party name, total votes, and the margin of victory for a specific state and constituency?



SELECT 
	cr.winning_candidate,
	pr.party,
	pr.party_alliance,
	cr.total_votes,
	cr.margin,
	sr.state,
	cr.constituency_name
FROM constituencywise_results AS cr
JOIN partywise_results AS pr
ON cr.party_id = pr.party_id
JOIN statewise_results AS sr
ON sr.parliament_constituency = cr.parliament_constituency
WHERE sr.state = 'Haryana'
	AND cr.constituency_name = 'ROHTAK'



-- 10.What is the distribution of EVM votes versus postal votes for candidates in a specific constituency?



SELECT 
	cd.candidate,
	cd.party,
	cd.evm_votes,
	cd.postal_votes,
	cd.total_votes,
	cr.constituency_name
FROM constituencywise_details AS cd
JOIN constituencywise_results AS cr
ON cd.constituency_id = cr.constituency_id 
WHERE cr.constituency_name = 'ROHTAK';



-- 11. Which parties won the most seats in s State, and how many seats did each party win?



SELECT 
	s.state,
	pr.party,
	COUNT(cr.constituency_id) AS seats_won
FROM constituencywise_results AS cr
JOIN partywise_results AS pr 
ON cr.party_id = pr.party_id
JOIN statewise_results AS sr
ON cr.parliament_constituency = sr.parliament_constituency
JOIN states AS s
ON sr.state_id = s.state_id
GROUP BY 1,2
ORDER BY 1,3 DESC;



-- 12.What is the total number of seats won by each party alliance (NDA, I.N.D.I.A, and OTHER) in each state for the India Elections 2024



SELECT 
	s.state,
	SUM(CASE WHEN party_alliance = 'NDA' THEN 1 ELSE 0 END) AS NDA_seats_Won,
	SUM(CASE WHEN party_alliance = 'I.N.D.I.A' THEN 1 ELSE 0 END) AS INDIA_seats_won,
	SUM(CASE WHEN party_alliance = 'Other' THEN 1 ELSE 0 END) AS Other_seats_won
FROM constituencywise_results AS cr
JOIN partywise_results AS pr 
ON cr.party_id = pr.party_id
JOIN statewise_results AS sr
ON cr.parliament_constituency = sr.parliament_constituency
JOIN states AS s
ON sr.state_id = s.state_id
GROUP BY 1
ORDER BY 1;



-- 13.Which candidate received the highest number of EVM votes in each constituency (Top 10)?


SELECT 
	cr.constituency_name,
	cd.constituency_id,
	cd.candidate,
	cd.evm_votes
FROM constituencywise_details AS cd
JOIN constituencywise_results AS cr
ON cd.constituency_id = cr.constituency_id 
WHERE 
	cd.evm_votes = (
				SELECT MAX(cd1.evm_votes)
				FROM constituencywise_details AS cd1
				WHERE cd1.constituency_id = cd.constituency_id
	)
ORDER BY 4 DESC
LIMIT 10;





-- 14. Which candidate won and which candidate was the runner-up in each constituency of State for the 2024 elections?


WITH rc AS
(
SELECT 
	cd.constituency_id,
	cd.candidate,
	cd.party,
	cd.evm_votes,
	cd.postal_votes,
	cd.evm_votes + cd.postal_votes AS total_votes,
	ROW_NUMBER() OVER(PARTITION BY cd.constituency_id ORDER BY cd.evm_votes + cd.postal_votes DESC) AS VoteRank
FROM constituencywise_details AS cd
JOIN constituencywise_results AS cr
ON cd.constituency_id = cr.constituency_id 
JOIN statewise_results AS sr
ON cr.parliament_constituency = sr.parliament_constituency
JOIN states AS s
ON sr.state_id = s.state_id 
WHERE 
	s.state = 'Maharashtra'
)
SELECT 
	cr.constituency_name ,
	MAX(CASE WHEN rc.VoteRank = 1 THEN rc.candidate END) AS Winning_Candidate,
	MAX(CASE WHEN rc.VoteRank = 2 THEN rc.candidate END) AS Runnerup_Candidate
FROM rc
JOIN constituencywise_results AS cr
ON rc.constituency_id = cr.constituency_id 
GROUP BY 1
ORDER BY 1;




-- 15.For the state of Maharashtra, what are the total number of seats, total number of candidates, total number of parties, total votes (including EVM and postal), and the breakdown of EVM and postal votes?

SELECT 
	COUNT(DISTINCT cr.constituency_id) AS total_seats,
	COUNT(DISTINCT cd.candidate) AS Total_candidate,
	COUNT(DISTINCT pr.party) AS Total_party,
	SUM(cd.evm_votes + cd.postal_votes) AS Total_votes,
	SUM(cd.evm_votes) AS Total_evm_votes,
	SUM(cd.postal_votes) AS Total_postal_votes
FROM constituencywise_details AS cd
JOIN constituencywise_results AS cr
ON cd.constituency_id = cr.constituency_id 
JOIN statewise_results AS sr
ON cr.parliament_constituency = sr.parliament_constituency
JOIN states AS s
ON sr.state_id = s.state_id 
JOIN partywise_results AS pr
ON pr.party_id = cr.party_id
WHERE 
	s.state = 'Maharashtra'



SELECT * FROM constituencywise_details