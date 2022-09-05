-- select * from
-- Result;

insert into customer(Name, CustomerID)
values ('강은정', 1)
;
insert into customer(Name, CustomerID)
values ('정수영', 2)
;
insert into customer(Name, CustomerID)
values ('이소현', 3)
;
insert into customer(Name, CustomerID)
values ('김보성', 4)
;
insert into customer(Name, CustomerID)
values ('이예지', 5)
;
insert into customer(Name, CustomerID)
values ('송정환', 6)
;
insert into customer(Name, CustomerID)
values ('김세화', 7)
;
insert into customer(Name, CustomerID)
values ('김종규', 8)
;
insert into customer(Name, CustomerID)
values ('남궁기태', 9)
;
insert into customer(Name, CustomerID)
values ('정지환', 10)
;
insert into customer(Name, CustomerID)
values ('신우진', 11)
;
insert into customer(Name, CustomerID)
values ('이애연', 12)
;
insert into customer(Name, CustomerID)
values ('정명훈', 13)
;
insert into customer(Name, CustomerID)
values ('윤소정', 14)
;
insert into customer(Name, CustomerID)
values ('진효영', 15)
;
insert into customer(Name, CustomerID)
values ('서인혁', 16)
;
insert into customer(Name, CustomerID)
values ('이종수', 17)
;
insert into customer(Name, CustomerID)
values ('권소현', 18)
;
insert into customer(Name, CustomerID)
values ('허성백', 19)
;
insert into customer(Name, CustomerID)
values ('이호재', 20)
;
insert into customer(Name, CustomerID)
values ('김윤호', 21)
;

insert into question(Question, QuestionID)
values ('당신은 빽다방을 일주일에 몇 번 이용하십니까?', 1)
;
insert into question(Question, QuestionID)
values ('당신은 빽다방의 서비스에 만족하십니까?', 2)
;
insert into question(Question, QuestionID)
values ('빽다방의 최우선 개선사항이 무엇이라 생각하십니까?', 3)
;
insert into question(Question, QuestionID)
values ('직원의 친절도에는 만족하십니까?', 4)
;

insert into answer(Answer, AnswerID)
values ('이용안함', 1)
;
insert into answer(Answer, AnswerID)
values ('주 1~2회', 2)
;
insert into answer(Answer, AnswerID)
values ('주 3~4회', 3)
;
insert into answer(Answer, AnswerID)
values ('주 5회 이상', 4)
;
insert into answer(Answer, AnswerID)
values ('매우 만족', 5)
;
insert into answer(Answer, AnswerID)
values ('만족', 6)
;
insert into answer(Answer, AnswerID)
values ('보통', 7)
;
insert into answer(Answer, AnswerID)
values ('불만족', 8)
;
insert into answer(Answer, AnswerID)
values ('매우 불만족', 9)
;
insert into answer(Answer, AnswerID)
values ('픽업대기 시간', 10)
;
insert into answer(Answer, AnswerID)
values ('직원의 친절도', 11)
;
insert into answer(Answer, AnswerID)
values ('음료의 맛', 12)
;
insert into answer(Answer, AnswerID)
values ('매장 위치', 13)
;
insert into answer(Answer, AnswerID)
values ('영업시간', 14)
;

insert into Result(CustomerID, QuestionID, AnswerID)
values (1, 1, 2)
;
insert into Result(CustomerID, QuestionID, AnswerID)
values (1, 2, 7)
;
insert into Result(CustomerID, QuestionID, AnswerID)
values (1, 3, 10)
;
insert into Result(CustomerID, QuestionID, AnswerID)
values (1, 4, 7)
;
insert into Result(CustomerID, QuestionID, AnswerID)
values (2, 1, 4)
;
insert into Result(CustomerID, QuestionID, AnswerID)
values (2, 2, 6)
;
insert into Result(CustomerID, QuestionID, AnswerID)
values (2, 3, 10)
;
insert into Result(CustomerID, QuestionID, AnswerID)
values (2, 4, 6)
;
insert into Result(CustomerID, QuestionID, AnswerID)
values (3, 1, 1)
;
insert into Result(CustomerID, QuestionID, AnswerID)
values (3, 2, 8)
;
insert into Result(CustomerID, QuestionID, AnswerID)
values (3, 3, 12)
;
insert into Result(CustomerID, QuestionID, AnswerID)
values (3, 4, 8)
;


select CustomerID, QuestionID, AnswerID
from Result
where CustomerID = 1
;



-- update Result
-- set Population = 2000
-- where Name = 'Name'
-- ;


-- delete from Result
-- where CustomerID = 1
-- ;

