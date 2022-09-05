
CREATE TABLE Answer
(
  AnswerID INT          NOT NULL COMMENT '대답ID',
  Answer   VARCHAR(200) NULL     COMMENT '대답',
  PRIMARY KEY (AnswerID)
) COMMENT '답변';

CREATE TABLE Customer
(
  CustomerID INT          NOT NULL COMMENT '설문참여자의 고유번호',
  Name       VARCHAR(200) NULL     COMMENT '설문참여자의 이름 / 아이디로 해도 될 듯?',
  PRIMARY KEY (CustomerID)
);

CREATE TABLE Question
(
  QuestionID INT          NOT NULL COMMENT '질문 ID',
  Question   VARCHAR(200) NULL     COMMENT '이용빈도, 개선사항, 만족도, 친절도',
  PRIMARY KEY (QuestionID)
) COMMENT '문항';

CREATE TABLE Result
(
  QuestionID INT NOT NULL COMMENT '질문 ID',
  AnswerID   INT NOT NULL COMMENT '대답 ID',
  CustomerID INT NOT NULL COMMENT '설문참여자의 고유번호'
);

ALTER TABLE Result
  ADD CONSTRAINT FK_Question_TO_Result
    FOREIGN KEY (QuestionID)
    REFERENCES Question (QuestionID);

ALTER TABLE Result
  ADD CONSTRAINT FK_Answer_TO_Result
    FOREIGN KEY (AnswerID)
    REFERENCES Answer (AnswerID);

ALTER TABLE Result
  ADD CONSTRAINT FK_Customer_TO_Result
    FOREIGN KEY (CustomerID)
    REFERENCES Customer (CustomerID);
