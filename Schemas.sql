CREATE TABLE partywise_results (
    Party VARCHAR(100),
    Won INT,
    Party_ID INT PRIMARY KEY
);

CREATE TABLE states (
    State_ID VARCHAR(20) PRIMARY KEY,
    State VARCHAR(60)
);

CREATE TABLE constituencywise_results (
    S_No INT,
    Parliament_Constituency VARCHAR(40),
    Constituency_Name VARCHAR(50),
    Winning_Candidate VARCHAR(80),
    Total_Votes BIGINT,
    Margin BIGINT,
    Constituency_ID VARCHAR(40) PRIMARY KEY,
    Party_ID INT,
    CONSTRAINT fk_party_id FOREIGN KEY (Party_ID) REFERENCES partywise_results(Party_ID)
);

CREATE TABLE constituencywise_details (
    S_N INT,
    Candidate VARCHAR(100),	
    Party VARCHAR(90),
    EVM_Votes INT,
    Postal_Votes INT,
    Total_Votes INT,
    Percentage_of_Votes FLOAT,
    Constituency_ID VARCHAR(40),
    CONSTRAINT fk_constituency_id FOREIGN KEY (Constituency_ID) REFERENCES constituencywise_results(Constituency_ID)
);

CREATE TABLE statewise_results (
    Constituency VARCHAR(40),
    Const_No INT,
    Parliament_Constituency VARCHAR(40) PRIMARY KEY,
    Leading_Candidate VARCHAR(70),
    Trailing_Candidate VARCHAR(60),
    Margin BIGINT,
    Status VARCHAR(30),
    State_ID VARCHAR(10),
    State VARCHAR(30),
    CONSTRAINT fk_state_id FOREIGN KEY (State_ID) REFERENCES states(State_ID)
);

select count(*) from statewise_results
