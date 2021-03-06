INSERT INTO `projects` ( `Title`, `roles_that_can_assess`, `header`, `start_survey_txt`, `taken_break_txt`, `continue_survey_txt`, `finish_survey_txt`) VALUES
(
'epic26', 'aroPatient', 'QOL Tracker assessment', 'Begin a QOL Tracker assessment', 'You''ve taken a break.', 'Continue your QOL Tracker assessment', 'Thank you for your input.');
SELECT LAST_INSERT_ID() INTO @project_id;


INSERT INTO `questionnaires` (`Title`, `Title_es_MX`, `BodyText`, `FriendlyTitle`, `FriendlyTitle_es_MX`) VALUES
('epic26', NULL, '<p>This questionnaire is designed to measure Quality of Life issues in patients with Prostate cancer. To help us get the most accurate measurement, it is important that you answer all questions honestly and completely.</p>\r\n\r\n<p>Remember, as with all medical records, information contained within this survey will remain strictly confidential.</p>', 'EPIC 26 Short Form', NULL);
SELECT LAST_INSERT_ID() INTO @questionnaire_id;

INSERT INTO `projects_questionnaires` (`project_id`, `questionnaire_id`, `Sequence`) VALUES
(@project_id, @questionnaire_id, 5);


INSERT INTO `pages` (`questionnaire_id`, `Title`, `Title_es_MX`, `Header`, `Header_es_MX`, `BodyText`, `BodyText_es_MX`, `NavigationType`, `TargetType`, `ProgressType`, `LayoutType`, `Sequence`, `iterable`) VALUES
(@questionnaire_id,'EPIC-1',NULL,NULL,NULL,NULL,NULL,'prev-next',NULL,'graphical','basic',2,NULL),
(@questionnaire_id,'EPIC-2',NULL,NULL,NULL,NULL,NULL,'prev-next',NULL,'graphical','basic',3,NULL),
(@questionnaire_id,'EPIC-3',NULL,NULL,NULL,NULL,NULL,'prev-next',NULL,'graphical','basic',4,NULL),
(@questionnaire_id,'EPIC-4',NULL,NULL,NULL,'4. How big a problem, if any, has each of the following been for you during the last 4 weeks?',NULL,'prev-next',NULL,'graphical','basic',5,NULL),
(@questionnaire_id,'EPIC-5',NULL,NULL,NULL,NULL,NULL,'prev-next',NULL,'graphical','basic',6,NULL),
(@questionnaire_id,'EPIC-6',NULL,NULL,NULL,'6. How big a problem, if any, has each of the following been for you?',NULL,'prev-next',NULL,'graphical','basic',7,NULL),
(@questionnaire_id,'EPIC-7',NULL,NULL,NULL,NULL,NULL,'prev-next',NULL,'graphical','basic',8,NULL),
(@questionnaire_id,'EPIC-8',NULL,NULL,NULL,'8. How would you rate each of the following <strong>during the last 4 weeks</strong>?',NULL,'prev-next',NULL,'graphical','basic',9,NULL),
(@questionnaire_id,'EPIC-9',NULL,NULL,NULL,NULL,NULL,'prev-next',NULL,'graphical','basic',10,NULL),
(@questionnaire_id,'EPIC-10',NULL,NULL,NULL,NULL,NULL,'prev-next',NULL,'graphical','basic',11,NULL),
(@questionnaire_id,'EPIC-11',NULL,NULL,NULL,NULL,NULL,'prev-next',NULL,'graphical','basic',12,NULL),
(@questionnaire_id,'EPIC-12',NULL,NULL,NULL,NULL,NULL,'prev-next',NULL,'graphical','basic',13,NULL),
(@questionnaire_id,'EPIC-13',NULL,NULL,NULL,'13. How big a problem <strong>during the last 4 weeks</strong>, if any, has each of the following been for you?',NULL,'prev-next',NULL,'graphical','basic',14,NULL),
(@questionnaire_id,'EPIC-0',NULL,'EPIC-26<br/>The Expanded Prostate Cancer Index Composite<br/>Short Form',NULL,'<p>This questionnaire is designed to measure Quality of Life issues in patients with Prostate cancer. To help us get the most accurate measurement, it is important that you answer all questions honestly and completely.</p>\n<p>Remember, as with all medical records, information contained within this survey will remain strictly confidential.</p>',NULL,'prev-next',NULL,'graphical','basic',1,NULL)
;
SELECT LAST_INSERT_ID() INTO @page_id;

INSERT INTO `questions` (`page_id`, `ShortTitle`, `ShortTitle_es_MX`, `BodyText`, `BodyText_es_MX`, `BodyTextPosition`, `Orientation`, `Groups`, `Style`, `Sequence`, `has_conditional_options`, `ignore_skipped`, `num_user_controlled`, `cross_session`, `RangeLeft`, `RangeLeft_es_MX`, `RangeRight`, `RangeRight_es_MX`) VALUES
(@page_id,NULL,NULL,'Over the <strong>past 4 weeks</strong>, how often have you leaked urine?',NULL,'left','vertical',1,'normal',1,0,0,0,0,NULL,NULL,NULL,NULL),
(@page_id + 1,NULL,NULL,'Which of the following best describes your urinary control <strong>during the last 4 weeks</strong>?',NULL,'left','vertical',1,'normal',2,0,0,0,0,NULL,NULL,NULL,NULL),
(@page_id + 2,NULL,NULL,'How many pads or adult diapers per day did you usually use to control leakage <strong>during the last 4 weeks</strong>?',NULL,'left','vertical',1,'normal',3,0,0,0,0,NULL,NULL,NULL,NULL),
(@page_id + 3,NULL,NULL,'Dripping or leaking urine',NULL,'left','matrix-top',1,'normal',4,0,0,0,0,NULL,NULL,NULL,NULL),
(@page_id + 3,NULL,NULL,'Pain or burning on urination',NULL,'left','matrix',1,'normal',5,0,0,0,0,NULL,NULL,NULL,NULL),
(@page_id + 3,NULL,NULL,'Bleeding with urination',NULL,'left','matrix',1,'normal',6,0,0,0,0,NULL,NULL,NULL,NULL),
(@page_id + 3,NULL,NULL,'Weak urine stream or incomplete emptying',NULL,'left','matrix',1,'normal',7,0,0,0,0,NULL,NULL,NULL,NULL),
(@page_id + 3,NULL,NULL,'Need to urinate frequently during the day',NULL,'left','matrix-bottom',1,'normal',8,0,0,0,0,NULL,NULL,NULL,NULL),
(@page_id + 4,NULL,NULL,'Overall, how big a problem has your urinary function been for you <strong>during the last 4 weeks</strong>?',NULL,'left','vertical',1,'normal',9,0,0,0,0,NULL,NULL,NULL,NULL),
(@page_id + 5,NULL,NULL,'Urgency to have a bowel movement',NULL,'left','matrix-top',1,'normal',10,0,0,0,0,NULL,NULL,NULL,NULL),
(@page_id + 5,NULL,NULL,'Increased frequency of bowel movements',NULL,'left','matrix',1,'normal',11,0,0,0,0,NULL,NULL,NULL,NULL),
(@page_id + 5,NULL,NULL,'Losing control of your stools',NULL,'left','matrix',1,'normal',12,0,0,0,0,NULL,NULL,NULL,NULL),
(@page_id + 5,NULL,NULL,'Blood stools',NULL,'left','matrix',1,'normal',13,0,0,0,0,NULL,NULL,NULL,NULL),
(@page_id + 5,NULL,NULL,'Abdominal / Pelvic / Rectal Pain',NULL,'left','matrix-bottom',1,'normal',14,0,0,0,0,NULL,NULL,NULL,NULL),
(@page_id + 6,NULL,NULL,'Overall, how big a problem have your bowel habits been for you <strong>during the past 4 weeks</strong>?',NULL,'left','vertical',1,'normal',15,0,0,0,0,NULL,NULL,NULL,NULL),
(@page_id + 7,NULL,NULL,'Your ability to have an erection?',NULL,'left','matrix-top',1,'normal',16,0,0,0,0,NULL,NULL,NULL,NULL),
(@page_id + 7,NULL,NULL,'Your ability to reach orgasm (climax)?',NULL,'left','matrix-bottom',1,'normal',17,0,0,0,0,NULL,NULL,NULL,NULL),
(@page_id + 8,NULL,NULL,'How would you describe the usual QUALITY of your erections <strong>during the last 4 weeks</strong>?',NULL,'left','vertical',1,'normal',18,0,0,0,0,NULL,NULL,NULL,NULL),
(@page_id + 9,NULL,NULL,'How would you describe the FREQUENCY of your erections <strong>during the last 4 weeks</strong>?',NULL,'left','vertical',1,'normal',19,0,0,0,0,NULL,NULL,NULL,NULL),
(@page_id + 10,NULL,NULL,'Overall, how would you rate your ability to function sexually <strong>during the last 4 weeks</strong>?',NULL,'left','vertical',1,'normal',20,0,0,0,0,NULL,NULL,NULL,NULL),
(@page_id + 11,NULL,NULL,'Overall, how big a problem has your sexual function or lack of sexual function been for you <strong>during the last 4 weeks</strong>?',NULL,'left','vertical',1,'normal',21,0,0,0,0,NULL,NULL,NULL,NULL),
(@page_id + 12,NULL,NULL,'Hot flashes',NULL,'left','matrix-top',1,'normal',22,0,0,0,0,NULL,NULL,NULL,NULL),
(@page_id + 12,NULL,NULL,'Breast tenderness / enlargement',NULL,'left','matrix',1,'normal',23,0,0,0,0,NULL,NULL,NULL,NULL),
(@page_id + 12,NULL,NULL,'Feeling depressed',NULL,'left','matrix',1,'normal',24,0,0,0,0,NULL,NULL,NULL,NULL),
(@page_id + 12,NULL,NULL,'Lack of energy',NULL,'left','matrix',1,'normal',25,0,0,0,0,NULL,NULL,NULL,NULL),
(@page_id + 12,NULL,NULL,'Change in body weight',NULL,'left','matrix-bottom',1,'normal',26,0,0,0,0,NULL,NULL,NULL,NULL);
SELECT LAST_INSERT_ID() INTO @question_id;


INSERT INTO `options` (`question_id`, `OptionType`, `Height`, `Width`, `MaxCharacters`, `AnalysisValue`, `ValueRestriction`, `BodyText`, `BodyText_es_MX`, `BodyTextType`, `AncillaryText`, `Sequence`) VALUES
(@question_id,'radio',0,0,NULL,'1',NULL,'More than once a day',NULL,'visible',NULL,1),
(@question_id,'radio',0,0,NULL,'2',NULL,'About once a day',NULL,'visible',NULL,2),
(@question_id,'radio',0,0,NULL,'3',NULL,'More than once a week',NULL,'visible',NULL,3),
(@question_id,'radio',0,0,NULL,'4',NULL,'About once a week',NULL,'visible',NULL,4),
(@question_id,'radio',0,0,NULL,'5',NULL,'Rarely or never',NULL,'visible',NULL,5),
(@question_id + 1,'radio',0,0,NULL,'1',NULL,'No urinary control whatsoever',NULL,'visible',NULL,1),
(@question_id + 1,'radio',0,0,NULL,'2',NULL,'Frequent dribbling',NULL,'visible',NULL,2),
(@question_id + 1,'radio',0,0,NULL,'3',NULL,'Occasional dribbling',NULL,'visible',NULL,3),
(@question_id + 1,'radio',0,0,NULL,'4',NULL,'Total control',NULL,'visible',NULL,4),
(@question_id + 2,'radio',0,0,NULL,'0',NULL,'None',NULL,'visible',NULL,1),
(@question_id + 2,'radio',0,0,NULL,'1',NULL,'1 pad <u>per day</u>',NULL,'visible','1 pad per day',2),
(@question_id + 2,'radio',0,0,NULL,'2',NULL,'2 pads <u>per day</u>',NULL,'visible','2 pads per day',3),
(@question_id + 2,'radio',0,0,NULL,'3',NULL,'3 or more pads <u>per day</u>',NULL,'visible','3 or more pads per day',4),
(@question_id + 3,'radio',0,0,NULL,'0',NULL,'No problem',NULL,'visible','No problem',1),
(@question_id + 3,'radio',0,0,NULL,'1',NULL,'Very Small Problem',NULL,'visible','Very Small Problem',2),
(@question_id + 3,'radio',0,0,NULL,'2',NULL,'Small Problem',NULL,'visible','Small Problem',3),
(@question_id + 3,'radio',0,0,NULL,'3',NULL,'Moderate Problem',NULL,'visible','Moderate Problem',4),
(@question_id + 3,'radio',0,0,NULL,'4',NULL,'Big Problem',NULL,'visible','Big Problem',5),
(@question_id + 4,'radio',0,0,NULL,'0',NULL,'0',NULL,'visible','No problem',1),
(@question_id + 4,'radio',0,0,NULL,'1',NULL,'1',NULL,'visible','Very Small Problem',2),
(@question_id + 4,'radio',0,0,NULL,'2',NULL,'2',NULL,'visible','Small Problem',3),
(@question_id + 4,'radio',0,0,NULL,'3',NULL,'3',NULL,'visible','Moderate Problem',4),
(@question_id + 4,'radio',0,0,NULL,'4',NULL,'4',NULL,'visible','Big Problem',5),
(@question_id + 5,'radio',0,0,NULL,'0',NULL,'0',NULL,'visible','No problem',1),
(@question_id + 5,'radio',0,0,NULL,'1',NULL,'1',NULL,'visible','Very Small Problem',2),
(@question_id + 5,'radio',0,0,NULL,'2',NULL,'2',NULL,'visible','Small Problem',3),
(@question_id + 5,'radio',0,0,NULL,'3',NULL,'3',NULL,'visible','Moderate Problem',4),
(@question_id + 5,'radio',0,0,NULL,'4',NULL,'4',NULL,'visible','Big Problem',5),
(@question_id + 6,'radio',0,0,NULL,'0',NULL,'0',NULL,'visible','No problem',1),
(@question_id + 6,'radio',0,0,NULL,'1',NULL,'1',NULL,'visible','Very Small Problem',2),
(@question_id + 6,'radio',0,0,NULL,'2',NULL,'2',NULL,'visible','Small Problem',3),
(@question_id + 6,'radio',0,0,NULL,'3',NULL,'3',NULL,'visible','Moderate Problem',4),
(@question_id + 6,'radio',0,0,NULL,'4',NULL,'4',NULL,'visible','Big Problem',5),
(@question_id + 7,'radio',0,0,NULL,'0',NULL,'0',NULL,'visible','No problem',1),
(@question_id + 7,'radio',0,0,NULL,'1',NULL,'1',NULL,'visible','Very Small Problem',2),
(@question_id + 7,'radio',0,0,NULL,'2',NULL,'2',NULL,'visible','Small Problem',3),
(@question_id + 7,'radio',0,0,NULL,'3',NULL,'3',NULL,'visible','Moderate Problem',4),
(@question_id + 7,'radio',0,0,NULL,'4',NULL,'4',NULL,'visible','Big Problem',5),
(@question_id + 8,'radio',0,0,NULL,'1',NULL,'No problem',NULL,'visible',NULL,1),
(@question_id + 8,'radio',0,0,NULL,'2',NULL,'Very small problem',NULL,'visible',NULL,2),
(@question_id + 8,'radio',0,0,NULL,'3',NULL,'Small Problem',NULL,'visible',NULL,3),
(@question_id + 8,'radio',0,0,NULL,'4',NULL,'Moderate Problem',NULL,'visible',NULL,4),
(@question_id + 8,'radio',0,0,NULL,'5',NULL,'Big Problem',NULL,'visible',NULL,5),
(@question_id + 9,'radio',0,0,NULL,'0',NULL,'No problem',NULL,'visible','No problem',1),
(@question_id + 9,'radio',0,0,NULL,'1',NULL,'Very Small Problem',NULL,'visible','Very Small Problem',2),
(@question_id + 9,'radio',0,0,NULL,'2',NULL,'Small Problem',NULL,'visible','Small Problem',3),
(@question_id + 9,'radio',0,0,NULL,'3',NULL,'Moderate Problem',NULL,'visible','Moderate Problem',4),
(@question_id + 9,'radio',0,0,NULL,'4',NULL,'Big Problem',NULL,'visible','Big Problem',5),
(@question_id + 10,'radio',0,0,NULL,'0',NULL,'0',NULL,'visible','No problem',1),
(@question_id + 10,'radio',0,0,NULL,'1',NULL,'1',NULL,'visible','Very Small Problem',2),
(@question_id + 10,'radio',0,0,NULL,'2',NULL,'2',NULL,'visible','Small Problem',3),
(@question_id + 10,'radio',0,0,NULL,'3',NULL,'3',NULL,'visible','Moderate Problem',4),
(@question_id + 10,'radio',0,0,NULL,'4',NULL,'4',NULL,'visible','Big Problem',5),
(@question_id + 11,'radio',0,0,NULL,'0',NULL,'0',NULL,'visible','No problem',1),
(@question_id + 11,'radio',0,0,NULL,'1',NULL,'1',NULL,'visible','Very Small Problem',2),
(@question_id + 11,'radio',0,0,NULL,'2',NULL,'2',NULL,'visible','Small Problem',3),
(@question_id + 11,'radio',0,0,NULL,'3',NULL,'3',NULL,'visible','Moderate Problem',4),
(@question_id + 11,'radio',0,0,NULL,'4',NULL,'4',NULL,'visible','Big Problem',5),
(@question_id + 12,'radio',0,0,NULL,'0',NULL,'0',NULL,'visible','No problem',1),
(@question_id + 12,'radio',0,0,NULL,'1',NULL,'1',NULL,'visible','Very Small Problem',2),
(@question_id + 12,'radio',0,0,NULL,'2',NULL,'2',NULL,'visible','Small Problem',3),
(@question_id + 12,'radio',0,0,NULL,'3',NULL,'3',NULL,'visible','Moderate Problem',4),
(@question_id + 12,'radio',0,0,NULL,'4',NULL,'4',NULL,'visible','Big Problem',5),
(@question_id + 13,'radio',0,0,NULL,'0',NULL,'0',NULL,'visible','No problem',1),
(@question_id + 13,'radio',0,0,NULL,'1',NULL,'1',NULL,'visible','Very Small Problem',2),
(@question_id + 13,'radio',0,0,NULL,'2',NULL,'2',NULL,'visible','Small Problem',3),
(@question_id + 13,'radio',0,0,NULL,'3',NULL,'3',NULL,'visible','Moderate Problem',4),
(@question_id + 13,'radio',0,0,NULL,'4',NULL,'4',NULL,'visible','Big Problem',5),
(@question_id + 14,'radio',0,0,NULL,'1',NULL,'No problem',NULL,'visible',NULL,1),
(@question_id + 14,'radio',0,0,NULL,'2',NULL,'Very small problem',NULL,'visible',NULL,2),
(@question_id + 14,'radio',0,0,NULL,'3',NULL,'Small Problem',NULL,'visible',NULL,3),
(@question_id + 14,'radio',0,0,NULL,'4',NULL,'Moderate Problem',NULL,'visible',NULL,4),
(@question_id + 14,'radio',0,0,NULL,'5',NULL,'Big Problem',NULL,'visible',NULL,5),
(@question_id + 15,'radio',0,0,NULL,'1',NULL,'Very Poor to None',NULL,'visible','Very Poor to None',1),
(@question_id + 15,'radio',0,0,NULL,'2',NULL,'Poor',NULL,'visible','Poor',2),
(@question_id + 15,'radio',0,0,NULL,'3',NULL,'Fair',NULL,'visible','Fair',3),
(@question_id + 15,'radio',0,0,NULL,'4',NULL,'Good',NULL,'visible','Good',4),
(@question_id + 15,'radio',0,0,NULL,'5',NULL,'Very Good',NULL,'visible','Very Good',5),
(@question_id + 16,'radio',0,0,NULL,'1',NULL,'1',NULL,'visible','Very Poor to None',1),
(@question_id + 16,'radio',0,0,NULL,'2',NULL,'2',NULL,'visible','Poor',2),
(@question_id + 16,'radio',0,0,NULL,'3',NULL,'3',NULL,'visible','Fair',3),
(@question_id + 16,'radio',0,0,NULL,'4',NULL,'4',NULL,'visible','Good',4),
(@question_id + 16,'radio',0,0,NULL,'5',NULL,'5',NULL,'visible','Very Good',5),
(@question_id + 17,'radio',0,0,NULL,'1',NULL,'None at all',NULL,'visible',NULL,1),
(@question_id + 17,'radio',0,0,NULL,'2',NULL,'Not firm enough for any activity',NULL,'visible',NULL,2),
(@question_id + 17,'radio',0,0,NULL,'3',NULL,'Enough for masturbation & foreplay',NULL,'visible',NULL,3),
(@question_id + 17,'radio',0,0,NULL,'4',NULL,'Enough for intercourse',NULL,'visible',NULL,4),
(@question_id + 18,'radio',0,0,NULL,'1',NULL,'Never',NULL,'visible',NULL,1),
(@question_id + 18,'radio',0,0,NULL,'2',NULL,'Less than half the time',NULL,'visible',NULL,2),
(@question_id + 18,'radio',0,0,NULL,'3',NULL,'About half the time',NULL,'visible',NULL,3),
(@question_id + 18,'radio',0,0,NULL,'4',NULL,'More then half the time',NULL,'visible',NULL,4),
(@question_id + 18,'radio',0,0,NULL,'5',NULL,'Always',NULL,'visible',NULL,5),
(@question_id + 19,'radio',0,0,NULL,'1',NULL,'Very poor',NULL,'visible',NULL,1),
(@question_id + 19,'radio',0,0,NULL,'2',NULL,'Poor',NULL,'visible',NULL,2),
(@question_id + 19,'radio',0,0,NULL,'3',NULL,'Fair',NULL,'visible',NULL,3),
(@question_id + 19,'radio',0,0,NULL,'4',NULL,'Good',NULL,'visible',NULL,4),
(@question_id + 19,'radio',0,0,NULL,'5',NULL,'Very good',NULL,'visible',NULL,5),
(@question_id + 20,'radio',0,0,NULL,'1',NULL,'No problem',NULL,'visible',NULL,1),
(@question_id + 20,'radio',0,0,NULL,'2',NULL,'Very small problem',NULL,'visible',NULL,2),
(@question_id + 20,'radio',0,0,NULL,'3',NULL,'Small problem',NULL,'visible',NULL,3),
(@question_id + 20,'radio',0,0,NULL,'4',NULL,'Moderate problem',NULL,'visible',NULL,4),
(@question_id + 20,'radio',0,0,NULL,'5',NULL,'Big problem',NULL,'visible',NULL,5),
(@question_id + 21,'radio',0,0,NULL,'0',NULL,'No problem',NULL,'visible','No problem',1),
(@question_id + 21,'radio',0,0,NULL,'1',NULL,'Very Small Problem',NULL,'visible','Very Small Problem',2),
(@question_id + 21,'radio',0,0,NULL,'2',NULL,'Small Problem',NULL,'visible','Small Problem',3),
(@question_id + 21,'radio',0,0,NULL,'3',NULL,'Moderate Problem',NULL,'visible','Moderate Problem',4),
(@question_id + 21,'radio',0,0,NULL,'4',NULL,'Big Problem',NULL,'visible','Big Problem',5),
(@question_id + 22,'radio',0,0,NULL,'0',NULL,'0',NULL,'visible','No problem',1),
(@question_id + 22,'radio',0,0,NULL,'1',NULL,'1',NULL,'visible','Very Small Problem',2),
(@question_id + 22,'radio',0,0,NULL,'2',NULL,'2',NULL,'visible','Small Problem',3),
(@question_id + 22,'radio',0,0,NULL,'3',NULL,'3',NULL,'visible','Moderate Problem',4),
(@question_id + 22,'radio',0,0,NULL,'4',NULL,'4',NULL,'visible','Big Problem',5),
(@question_id + 23,'radio',0,0,NULL,'0',NULL,'0',NULL,'visible','No problem',1),
(@question_id + 23,'radio',0,0,NULL,'1',NULL,'1',NULL,'visible','Very Small Problem',2),
(@question_id + 23,'radio',0,0,NULL,'2',NULL,'2',NULL,'visible','Small Problem',3),
(@question_id + 23,'radio',0,0,NULL,'3',NULL,'3',NULL,'visible','Moderate Problem',4),
(@question_id + 23,'radio',0,0,NULL,'4',NULL,'4',NULL,'visible','Big Problem',5),
(@question_id + 24,'radio',0,0,NULL,'0',NULL,'0',NULL,'visible','No problem',1),
(@question_id + 24,'radio',0,0,NULL,'1',NULL,'1',NULL,'visible','Very Small Problem',2),
(@question_id + 24,'radio',0,0,NULL,'2',NULL,'2',NULL,'visible','Small Problem',3),
(@question_id + 24,'radio',0,0,NULL,'3',NULL,'3',NULL,'visible','Moderate Problem',4),
(@question_id + 24,'radio',0,0,NULL,'4',NULL,'4',NULL,'visible','Big Problem',5),
(@question_id + 25,'radio',0,0,NULL,'0',NULL,'0',NULL,'visible','No problem',1),
(@question_id + 25,'radio',0,0,NULL,'1',NULL,'1',NULL,'visible','Very Small Problem',2),
(@question_id + 25,'radio',0,0,NULL,'2',NULL,'2',NULL,'visible','Small Problem',3),
(@question_id + 25,'radio',0,0,NULL,'3',NULL,'3',NULL,'visible','Moderate Problem',4),
(@question_id + 25,'radio',0,0,NULL,'4',NULL,'4',NULL,'visible','Big Problem',5);

INSERT INTO `scales` (`invert`, `combination`, `questionnaire_id`, `range`, `name`, `order`, `base`, `critical`) VALUES
(NULL,NULL,@questionnaire_id,500,'EPIC-26',0,1,NULL),

-- from original p3p
(NULL,NULL,@questionnaire_id,NULL,'Influential Factors - Symptoms (EPIC Short Form)',2,NULL,NULL),
(NULL,'sum_or_any_null',@questionnaire_id,NULL,'EPIC-CP',0,NULL,NULL)
;
SELECT LAST_INSERT_ID() INTO @scale_id;


INSERT INTO `subscales` (`scale_id`, `range`, `invert`, `base`, `critical`, `combination`, `name`, `internal_note`, `order`, `category_id`) VALUES
-- EPIC items 23, 26-28
(@scale_id,100,0,0,0,'weighted_sum_abs','Urinary Incontinence',NULL,0,NULL),
-- EPIC items 29-31, 33
(@scale_id,100,0,0,0,'weighted_sum_abs','Urinary Irritation/Obstruction',NULL,0,NULL),
-- EPIC items 49, 50, 52-55
(@scale_id,100,0,0,0,'weighted_sum_abs','Bowel',NULL,0,NULL),
-- EPIC items 57-60, 64, 68
(@scale_id,100,0,0,0,'weighted_sum_abs','Sexual',NULL,0,NULL),
-- EPIC items 74, 75, 77-79
(@scale_id,100,0,0,0,'weighted_sum_abs','Vitality/Hormonal',NULL,0,NULL),

-- 1-item scales, needed for self-management
(NULL,100,0,0,0,'weighted_sum_abs','Urinary Bother',NULL,0,NULL), -- 'not_null'
(NULL,100,0,0,0,'weighted_sum_abs','Bowel Bother',NULL,0,NULL), -- 'not_null'
(NULL,100,0,0,0,'weighted_sum_abs','Sexual Bother',NULL,0,NULL), -- 'not_null'

-- from original p3p, still used? CURRENT_SYMPTOMS_EPIC_SUBSCALE
(@scale_id + 1,5,0,1,3,'mean_or_all_null','Current Symptoms',NULL,1,NULL),

(@scale_id + 2,100,0,0,0,'weighted_sum_abs','Urinary Incontinence Symptom Score',NULL,0,NULL),
(@scale_id + 2,100,0,0,0,'weighted_sum_abs','Urinary Irritation/Obstruction Symptom Score',NULL,0,NULL),
(@scale_id + 2,100,0,0,0,'weighted_sum_abs','Bowel Symptom Score',NULL,0,NULL),
(@scale_id + 2,100,0,0,0,'weighted_sum_abs','Sexual Symptom Score',NULL,0,NULL),
(@scale_id + 2,100,0,0,0,'weighted_sum_abs','Vitality/Hormonal Symptom Score',NULL,0,NULL)
;
SELECT LAST_INSERT_ID() INTO @subscale_id;


INSERT INTO `items` (`name`, `name_es_MX`, `question_id`, `subscale_id`, `base`, `range`, `critical`, `sequence`) VALUES
-- EPIC item 23
('Frequency','',@question_id,@subscale_id,1,4,3,NULL),
-- EPIC item 26
('Dribbling','',@question_id + 1,@subscale_id,1,3,2,NULL),
-- EPIC item 27
('Pad use','',@question_id + 2,@subscale_id,3,3,2,NULL),
-- EPIC item 28
('Leaking ','',@question_id + 3,@subscale_id,4,4,3,NULL),

-- EPIC item 29
('Pain/burning','',@question_id + 4,@subscale_id + 1,4,4,3,NULL),
-- EPIC item 30
('Bleeding ','',@question_id + 5,@subscale_id + 1,4,4,3,NULL),
-- EPIC item 31
('Stream','',@question_id + 6,@subscale_id + 1,4,4,3,NULL),
-- EPIC item 33
('Frequency ','',@question_id + 7,@subscale_id + 1,4,4,3,NULL),

-- EPIC item 34
('Urinary Bother','',@question_id + 8,@subscale_id + 5,5,4,NULL,NULL),

-- EPIC item 49
('Urgency','',@question_id + 9,@subscale_id + 2,4,4,3,NULL),
-- EPIC item 50
('Frequency','',@question_id + 10,@subscale_id + 2,4,4,3,NULL),
-- EPIC item 52
('Control','',@question_id + 11,@subscale_id + 2,4,4,3,NULL),
-- EPIC item 53
('Blood','',@question_id + 12,@subscale_id + 2,4,4,3,NULL),
-- EPIC item 54
('Abd/pelvic/rectal pain','',@question_id + 13,@subscale_id + 2,4,4,3,NULL),

-- EPIC item 55 ---
('Bowel Bother','',@question_id + 14,@subscale_id + 6,5,4,NULL,NULL),

-- EPIC item 55
('Overall bowel','',@question_id + 14,@subscale_id + 2,5,4,4,NULL),

-- EPIC item 57
('Erectile ability','',@question_id + 15,@subscale_id + 3,1,4,2,NULL),
-- EPIC item 58
('Orgasm ability','',@question_id + 16,@subscale_id + 3,1,4,2,NULL),
-- EPIC item 59
('Erections quality','',@question_id + 17,@subscale_id + 3,1,3,2,NULL),
-- EPIC item 60
('Erections when I want','',@question_id + 18,@subscale_id + 3,1,4,2,NULL),
-- EPIC item 64
('Overall sexual ability','',@question_id + 19,@subscale_id + 3,1,4,2,NULL),
-- EPIC item 68
('Overall sexual problem','',@question_id + 20,@subscale_id + 3,5,4,4,NULL),

-- EPIC item 68
('Sexual Bother','',@question_id + 20,@subscale_id + 7,5,4,NULL,NULL),

-- EPIC item 74
('Hot flashes','',@question_id + 21,@subscale_id + 4,4,4,3,NULL),
-- EPIC item 75
('Breasts tender/larger','',@question_id + 22,@subscale_id + 4,4,4,3,NULL),
-- EPIC item 77
('Feeling depressed','',@question_id + 23,@subscale_id + 4,4,4,3,NULL),
-- EPIC item 78
('Energy','',@question_id + 24,@subscale_id + 4,4,4,3,NULL),
-- EPIC item 79
('Weight change','',@question_id + 25,@subscale_id + 4,4,4,3,NULL),

-- from original p3p id subscale_id=55
('Sexual','Síntomas sexuales',@question_id + 20,@subscale_id + 8,5,4,NULL,2),
('Bladder','Síntomas de la Vejiga ',@question_id + 8,@subscale_id + 8,5,4,NULL,1),
('Bowel','Síntomas de los Intestinos',@question_id + 14,@subscale_id + 8,5,4,NULL,3),

('Dribbling','',@question_id + 1,@subscale_id + 9,1,3,2,NULL),
('Pad use','',@question_id + 2,@subscale_id + 9,3,3,2,NULL),
('Leaking','',@question_id + 3,@subscale_id + 9,4,4,3,NULL),

('Pain/burning','',@question_id + 4,@subscale_id + 10,4,4,3,NULL),
('Stream','',@question_id + 6,@subscale_id + 10,4,4,3,NULL),
('Frequency','',@question_id + 7,@subscale_id + 10,4,4,3,NULL),

-- combination of 2 items?
-- ('Pain/urgency','',1895,@subscale_id + 11,0,NULL,3,NULL),
('Rectal Pain','',@question_id + 13,@subscale_id + 11,4,4,3,NULL),
('Bowel Urgency','',@question_id + 9,@subscale_id + 11,4,4,3,NULL),

('Frequency','',@question_id + 10,@subscale_id + 11,4,4,3,NULL),
('Overall problems','',@question_id + 14,@subscale_id + 11,5,4,3,NULL),

('Orgasm ability','',@question_id + 16,@subscale_id + 12,1,4,3,NULL),
('Erections','',@question_id + 17,@subscale_id + 12,1,3,2,NULL),
('Overall function','',@question_id + 20,@subscale_id + 12,5,4,3,NULL),

-- combination of 2 items?
-- ('Hot flashes/breasts','',1902,@subscale_id + 13,0,NULL,3,NULL),
('Hot flashes','',@question_id + 21,@subscale_id + 13,4,4,3,NULL),
('Breast tenderness / enlargement','',@question_id + 22,@subscale_id + 13,4,4,3,NULL),


('Feeling depressed','',@question_id + 23,@subscale_id + 13,4,4,3,NULL),
('Lack of energy','',@question_id + 24,@subscale_id + 13,4,4,3,NULL)
;

update projects_questionnaires set questionnaire_id = @questionnaire_id where questionnaire_id=57 and project_id=3;
