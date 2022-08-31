
CREATE TABLE city_me
(
  CountryCode VARCHAR(200) NOT NULL COMMENT '나라코드',
  District    VARCHAR(200) NULL     COMMENT '구역',
  Name        VARCHAR(200) NOT NULL COMMENT '이름',
  Population  INT          NOT NULL COMMENT '인구',
  PRIMARY KEY (CountryCode)
) COMMENT '도시';

CREATE TABLE country_me
(
  Code           VARCHAR(200) NULL     COMMENT '코드',
  Name           VARCHAR(200) NOT NULL COMMENT '이름',
  Continent      ENUM         NULL     COMMENT '대륙',
  Region         VARCHAR(200) NULL     COMMENT '지역',
  SurfaceArea    DECIMAL      NULL     COMMENT '표면적',
  IndepYear      SMALLINT     NULL     COMMENT '독립연도',
  Population     INT          NOT NULL COMMENT '인구',
  LifeExpectancy DECIMAL      NULL     COMMENT '기대수명',
  GNP            DECIMAL      NULL     COMMENT '지엔피',
  GNPOld         DECIMAL      NULL     COMMENT '과거지엔피',
  LocalName      VARCHAR(200) NULL     COMMENT '지역이름',
  GovermentForm  VARCHAR(200) NULL     COMMENT '정부형태',
  HeadOfState    VARCHAR(200) NULL     COMMENT '국가원수',
  Capital        INT          NULL     COMMENT '수도',
  Code2          VARCHAR(200) NULL     COMMENT '코드2',
  PRIMARY KEY (Name, Population)
) COMMENT '나라';

CREATE TABLE countrylanguage_me
(
  CountryCode VARCHAR(200) NOT NULL COMMENT '나라코드',
  Language    VARCHAR(200) NULL     COMMENT '언어',
  IsOffcial   ENUM         NULL     COMMENT '공식언어',
  Percentage  DECIMAL      NULL     COMMENT '퍼센티지'
) COMMENT '국가언어';

ALTER TABLE city_me
  ADD CONSTRAINT FK_country_me_TO_city_me
    FOREIGN KEY (Name, Population)
    REFERENCES country_me (Name, Population);

ALTER TABLE countrylanguage_me
  ADD CONSTRAINT FK_city_me_TO_countrylanguage_me
    FOREIGN KEY (CountryCode)
    REFERENCES city_me (CountryCode);
