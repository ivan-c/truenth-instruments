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
(@page_id,NULL,NULL,'1. Over the <strong>past 4 weeks</strong>, how often have you leaked urine?',NULL,'left','vertical',1,'normal',1,0,0,0,0,NULL,NULL,NULL,NULL),
(@page_id + 1,NULL,NULL,'2. Which of the following best describes your urinary control <strong>during the last 4 weeks</strong>?',NULL,'left','vertical',1,'normal',2,0,0,0,0,NULL,NULL,NULL,NULL),
(@page_id + 2,NULL,NULL,'3. How many pads or adult diapers per day did you usually use to control leakage <strong>during the last 4 weeks</strong>?',NULL,'left','vertical',1,'normal',3,0,0,0,0,NULL,NULL,NULL,NULL),
(@page_id + 3,NULL,NULL,'a. Dripping or leaking urine',NULL,'left','matrix-top',1,'normal',4,0,0,0,0,NULL,NULL,NULL,NULL),
(@page_id + 3,NULL,NULL,'b. Pain or burning on urination',NULL,'left','matrix',1,'normal',5,0,0,0,0,NULL,NULL,NULL,NULL),
(@page_id + 3,NULL,NULL,'c. Bleeding with urination',NULL,'left','matrix',1,'normal',6,0,0,0,0,NULL,NULL,NULL,NULL),
(@page_id + 3,NULL,NULL,'d. Weak urine stream or incomplete emptying',NULL,'left','matrix',1,'normal',7,0,0,0,0,NULL,NULL,NULL,NULL),
(@page_id + 3,NULL,NULL,'e. Need to urinate frequently during the day',NULL,'left','matrix-bottom',1,'normal',8,0,0,0,0,NULL,NULL,NULL,NULL),
(@page_id + 4,NULL,NULL,'5. Overall, how big a problem has your urinary function been for you <strong>during the last 4 weeks</strong>?',NULL,'left','vertical',1,'normal',9,0,0,0,0,NULL,NULL,NULL,NULL),
(@page_id + 5,NULL,NULL,'a. Urgency to have a bowel movement',NULL,'left','matrix-top',1,'normal',10,0,0,0,0,NULL,NULL,NULL,NULL),
(@page_id + 5,NULL,NULL,'b. Increased frequency of bowel movements',NULL,'left','matrix',1,'normal',11,0,0,0,0,NULL,NULL,NULL,NULL),
(@page_id + 5,NULL,NULL,'c. Losing control of your stools',NULL,'left','matrix',1,'normal',12,0,0,0,0,NULL,NULL,NULL,NULL),
(@page_id + 5,NULL,NULL,'d. Blood stools',NULL,'left','matrix',1,'normal',13,0,0,0,0,NULL,NULL,NULL,NULL),
(@page_id + 5,NULL,NULL,'e. Abdominal / Pelvic / Rectal Pain',NULL,'left','matrix-bottom',1,'normal',14,0,0,0,0,NULL,NULL,NULL,NULL),
(@page_id + 6,NULL,NULL,'7. Overall, how big a problem have your bowel habits been for you <strong>during the past 4 weeks</strong>?',NULL,'left','vertical',1,'normal',15,0,0,0,0,NULL,NULL,NULL,NULL),
(@page_id + 7,NULL,NULL,'a. Your ability to have an erection?',NULL,'left','matrix-top',1,'normal',16,0,0,0,0,NULL,NULL,NULL,NULL),
(@page_id + 7,NULL,NULL,'b. Your ability to reach orgasm (climax)?',NULL,'left','matrix-bottom',1,'normal',17,0,0,0,0,NULL,NULL,NULL,NULL),
(@page_id + 8,NULL,NULL,'9. How would you describe the usual QUALITY of your erections <strong>during the last 4 weeks</strong>?',NULL,'left','vertical',1,'normal',18,0,0,0,0,NULL,NULL,NULL,NULL),
(@page_id + 9,NULL,NULL,'10. How would you describe the FREQUENCY of your erections <strong>during the last 4 weeks</strong>?',NULL,'left','vertical',1,'normal',19,0,0,0,0,NULL,NULL,NULL,NULL),
(@page_id + 10,NULL,NULL,'11. Overall, how would you rate your ability to function sexually <strong>during the last 4 weeks</strong>?',NULL,'left','vertical',1,'normal',20,0,0,0,0,NULL,NULL,NULL,NULL),
(@page_id + 11,NULL,NULL,'12. Overall, how big a problem has your sexual function or lack of sexual function been for you <strong>during the last 4 weeks</strong>?',NULL,'left','vertical',1,'normal',21,0,0,0,0,NULL,NULL,NULL,NULL),
(@page_id + 12,NULL,NULL,'a. Hot flashes',NULL,'left','matrix-top',1,'normal',22,0,0,0,0,NULL,NULL,NULL,NULL),
(@page_id + 12,NULL,NULL,'b. Breast tenderness / enlargement',NULL,'left','matrix',1,'normal',23,0,0,0,0,NULL,NULL,NULL,NULL),
(@page_id + 12,NULL,NULL,'c. Feeling depressed',NULL,'left','matrix',1,'normal',24,0,0,0,0,NULL,NULL,NULL,NULL),
(@page_id + 12,NULL,NULL,'d. Lack of energy',NULL,'left','matrix',1,'normal',25,0,0,0,0,NULL,NULL,NULL,NULL),
(@page_id + 12,NULL,NULL,'e. Change in body weight',NULL,'left','matrix-bottom',1,'normal',26,0,0,0,0,NULL,NULL,NULL,NULL);
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
(@question_id + 2,'radio',0,0,NULL,'1',NULL,'1 pad <u>per day</u>',NULL,'visible',NULL,2),
(@question_id + 2,'radio',0,0,NULL,'2',NULL,'2 pads <u>per day</u>',NULL,'visible',NULL,3),
(@question_id + 2,'radio',0,0,NULL,'3',NULL,'3 or more pads <u>per day</u>',NULL,'visible',NULL,4),
(@question_id + 3,'radio',0,0,NULL,'0',NULL,'No problem<br/>0',NULL,'visible',NULL,1),
(@question_id + 3,'radio',0,0,NULL,'1',NULL,'Very Small Problem<br/>1',NULL,'visible',NULL,2),
(@question_id + 3,'radio',0,0,NULL,'2',NULL,'Small Problem<br/>2',NULL,'visible',NULL,3),
(@question_id + 3,'radio',0,0,NULL,'3',NULL,'Moderate Problem<br/>3',NULL,'visible',NULL,4),
(@question_id + 3,'radio',0,0,NULL,'4',NULL,'Big Problem<br/>4',NULL,'visible',NULL,5),
(@question_id + 4,'radio',0,0,NULL,'0',NULL,'0',NULL,'visible',NULL,1),
(@question_id + 4,'radio',0,0,NULL,'1',NULL,'1',NULL,'visible',NULL,2),
(@question_id + 4,'radio',0,0,NULL,'2',NULL,'2',NULL,'visible',NULL,3),
(@question_id + 4,'radio',0,0,NULL,'3',NULL,'3',NULL,'visible',NULL,4),
(@question_id + 4,'radio',0,0,NULL,'4',NULL,'4',NULL,'visible',NULL,5),
(@question_id + 5,'radio',0,0,NULL,'0',NULL,'0',NULL,'visible',NULL,1),
(@question_id + 5,'radio',0,0,NULL,'1',NULL,'1',NULL,'visible',NULL,2),
(@question_id + 5,'radio',0,0,NULL,'2',NULL,'2',NULL,'visible',NULL,3),
(@question_id + 5,'radio',0,0,NULL,'3',NULL,'3',NULL,'visible',NULL,4),
(@question_id + 5,'radio',0,0,NULL,'4',NULL,'4',NULL,'visible',NULL,5),
(@question_id + 6,'radio',0,0,NULL,'0',NULL,'0',NULL,'visible',NULL,1),
(@question_id + 6,'radio',0,0,NULL,'1',NULL,'1',NULL,'visible',NULL,2),
(@question_id + 6,'radio',0,0,NULL,'2',NULL,'2',NULL,'visible',NULL,3),
(@question_id + 6,'radio',0,0,NULL,'3',NULL,'3',NULL,'visible',NULL,4),
(@question_id + 6,'radio',0,0,NULL,'4',NULL,'4',NULL,'visible',NULL,5),
(@question_id + 7,'radio',0,0,NULL,'0',NULL,'0',NULL,'visible',NULL,1),
(@question_id + 7,'radio',0,0,NULL,'1',NULL,'1',NULL,'visible',NULL,2),
(@question_id + 7,'radio',0,0,NULL,'2',NULL,'2',NULL,'visible',NULL,3),
(@question_id + 7,'radio',0,0,NULL,'3',NULL,'3',NULL,'visible',NULL,4),
(@question_id + 7,'radio',0,0,NULL,'4',NULL,'4',NULL,'visible',NULL,5),
(@question_id + 8,'radio',0,0,NULL,'1',NULL,'No problem',NULL,'visible',NULL,1),
(@question_id + 8,'radio',0,0,NULL,'2',NULL,'Very small problem',NULL,'visible',NULL,2),
(@question_id + 8,'radio',0,0,NULL,'3',NULL,'Small Problem',NULL,'visible',NULL,3),
(@question_id + 8,'radio',0,0,NULL,'4',NULL,'Moderate Problem',NULL,'visible',NULL,4),
(@question_id + 8,'radio',0,0,NULL,'5',NULL,'Big Problem',NULL,'visible',NULL,5),
(@question_id + 9,'radio',0,0,NULL,'0',NULL,'No problem<br/>0',NULL,'visible',NULL,1),
(@question_id + 9,'radio',0,0,NULL,'1',NULL,'Very Small Problem<br/>1',NULL,'visible',NULL,2),
(@question_id + 9,'radio',0,0,NULL,'2',NULL,'Small Problem<br/>2',NULL,'visible',NULL,3),
(@question_id + 9,'radio',0,0,NULL,'3',NULL,'Moderate Problem<br/>3',NULL,'visible',NULL,4),
(@question_id + 9,'radio',0,0,NULL,'4',NULL,'Big Problem<br/>4',NULL,'visible',NULL,5),
(@question_id + 10,'radio',0,0,NULL,'0',NULL,'0',NULL,'visible',NULL,1),
(@question_id + 10,'radio',0,0,NULL,'1',NULL,'1',NULL,'visible',NULL,2),
(@question_id + 10,'radio',0,0,NULL,'2',NULL,'2',NULL,'visible',NULL,3),
(@question_id + 10,'radio',0,0,NULL,'3',NULL,'3',NULL,'visible',NULL,4),
(@question_id + 10,'radio',0,0,NULL,'4',NULL,'4',NULL,'visible',NULL,5),
(@question_id + 11,'radio',0,0,NULL,'0',NULL,'0',NULL,'visible',NULL,1),
(@question_id + 11,'radio',0,0,NULL,'1',NULL,'1',NULL,'visible',NULL,2),
(@question_id + 11,'radio',0,0,NULL,'2',NULL,'2',NULL,'visible',NULL,3),
(@question_id + 11,'radio',0,0,NULL,'3',NULL,'3',NULL,'visible',NULL,4),
(@question_id + 11,'radio',0,0,NULL,'4',NULL,'4',NULL,'visible',NULL,5),
(@question_id + 12,'radio',0,0,NULL,'0',NULL,'0',NULL,'visible',NULL,1),
(@question_id + 12,'radio',0,0,NULL,'1',NULL,'1',NULL,'visible',NULL,2),
(@question_id + 12,'radio',0,0,NULL,'2',NULL,'2',NULL,'visible',NULL,3),
(@question_id + 12,'radio',0,0,NULL,'3',NULL,'3',NULL,'visible',NULL,4),
(@question_id + 12,'radio',0,0,NULL,'4',NULL,'4',NULL,'visible',NULL,5),
(@question_id + 13,'radio',0,0,NULL,'0',NULL,'0',NULL,'visible',NULL,1),
(@question_id + 13,'radio',0,0,NULL,'1',NULL,'1',NULL,'visible',NULL,2),
(@question_id + 13,'radio',0,0,NULL,'2',NULL,'2',NULL,'visible',NULL,3),
(@question_id + 13,'radio',0,0,NULL,'3',NULL,'3',NULL,'visible',NULL,4),
(@question_id + 13,'radio',0,0,NULL,'4',NULL,'4',NULL,'visible',NULL,5),
(@question_id + 14,'radio',0,0,NULL,'1',NULL,'No problem',NULL,'visible',NULL,1),
(@question_id + 14,'radio',0,0,NULL,'2',NULL,'Very small problem',NULL,'visible',NULL,2),
(@question_id + 14,'radio',0,0,NULL,'3',NULL,'Small Problem',NULL,'visible',NULL,3),
(@question_id + 14,'radio',0,0,NULL,'4',NULL,'Moderate Problem',NULL,'visible',NULL,4),
(@question_id + 14,'radio',0,0,NULL,'5',NULL,'Big Problem',NULL,'visible',NULL,5),
(@question_id + 15,'radio',0,0,NULL,'1',NULL,'Very Poor to None<br/>1',NULL,'visible',NULL,1),
(@question_id + 15,'radio',0,0,NULL,'2',NULL,'Poor<br/>2',NULL,'visible',NULL,2),
(@question_id + 15,'radio',0,0,NULL,'3',NULL,'Fair<br/>3',NULL,'visible',NULL,3),
(@question_id + 15,'radio',0,0,NULL,'4',NULL,'Good<br/>4',NULL,'visible',NULL,4),
(@question_id + 15,'radio',0,0,NULL,'5',NULL,'Very Good<br/>5',NULL,'visible',NULL,5),
(@question_id + 16,'radio',0,0,NULL,'1',NULL,'1',NULL,'visible',NULL,1),
(@question_id + 16,'radio',0,0,NULL,'2',NULL,'2',NULL,'visible',NULL,2),
(@question_id + 16,'radio',0,0,NULL,'3',NULL,'3',NULL,'visible',NULL,3),
(@question_id + 16,'radio',0,0,NULL,'4',NULL,'4',NULL,'visible',NULL,4),
(@question_id + 16,'radio',0,0,NULL,'100',NULL,'5',NULL,'visible',NULL,5),
(@question_id + 17,'radio',0,0,NULL,'1',NULL,'None at all',NULL,'visible',NULL,1),
(@question_id + 17,'radio',0,0,NULL,'2',NULL,'Not firm enough for any sexual activity',NULL,'visible',NULL,2),
(@question_id + 17,'radio',0,0,NULL,'3',NULL,'Firm enough for masturbation and foreplay only',NULL,'visible',NULL,3),
(@question_id + 17,'radio',0,0,NULL,'4',NULL,'Firm enough for intercourse',NULL,'visible',NULL,4),
(@question_id + 18,'radio',0,0,NULL,'1',NULL,'I NEVER had an erection when I wanted one',NULL,'visible',NULL,1),
(@question_id + 18,'radio',0,0,NULL,'2',NULL,'I had an erection LESS THAN HALF the time I wanted one',NULL,'visible',NULL,2),
(@question_id + 18,'radio',0,0,NULL,'3',NULL,'I had an erection ABOUT HALF the time I wanted one',NULL,'visible',NULL,3),
(@question_id + 18,'radio',0,0,NULL,'4',NULL,'I had an erection MORE THAN HALF the time I wanted one',NULL,'visible',NULL,4),
(@question_id + 18,'radio',0,0,NULL,'5',NULL,'I had an erection WHENEVER I wanted one',NULL,'visible',NULL,5),
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
(@question_id + 21,'radio',0,0,NULL,'0',NULL,'No problem<br/>0',NULL,'visible',NULL,1),
(@question_id + 21,'radio',0,0,NULL,'1',NULL,'Very Small Problem<br/>1',NULL,'visible',NULL,2),
(@question_id + 21,'radio',0,0,NULL,'2',NULL,'Small Problem<br/>2',NULL,'visible',NULL,3),
(@question_id + 21,'radio',0,0,NULL,'3',NULL,'Moderate Problem<br/>3',NULL,'visible',NULL,4),
(@question_id + 21,'radio',0,0,NULL,'4',NULL,'Big Problem<br/>4',NULL,'visible',NULL,5),
(@question_id + 22,'radio',0,0,NULL,'0',NULL,'0',NULL,'visible',NULL,1),
(@question_id + 22,'radio',0,0,NULL,'1',NULL,'1',NULL,'visible',NULL,2),
(@question_id + 22,'radio',0,0,NULL,'2',NULL,'2',NULL,'visible',NULL,3),
(@question_id + 22,'radio',0,0,NULL,'3',NULL,'3',NULL,'visible',NULL,4),
(@question_id + 22,'radio',0,0,NULL,'4',NULL,'4',NULL,'visible',NULL,5),
(@question_id + 23,'radio',0,0,NULL,'0',NULL,'0',NULL,'visible',NULL,1),
(@question_id + 23,'radio',0,0,NULL,'1',NULL,'1',NULL,'visible',NULL,2),
(@question_id + 23,'radio',0,0,NULL,'2',NULL,'2',NULL,'visible',NULL,3),
(@question_id + 23,'radio',0,0,NULL,'3',NULL,'3',NULL,'visible',NULL,4),
(@question_id + 23,'radio',0,0,NULL,'4',NULL,'4',NULL,'visible',NULL,5),
(@question_id + 24,'radio',0,0,NULL,'0',NULL,'0',NULL,'visible',NULL,1),
(@question_id + 24,'radio',0,0,NULL,'1',NULL,'1',NULL,'visible',NULL,2),
(@question_id + 24,'radio',0,0,NULL,'2',NULL,'2',NULL,'visible',NULL,3),
(@question_id + 24,'radio',0,0,NULL,'3',NULL,'3',NULL,'visible',NULL,4),
(@question_id + 24,'radio',0,0,NULL,'4',NULL,'4',NULL,'visible',NULL,5),
(@question_id + 25,'radio',0,0,NULL,'0',NULL,'0',NULL,'visible',NULL,1),
(@question_id + 25,'radio',0,0,NULL,'1',NULL,'1',NULL,'visible',NULL,2),
(@question_id + 25,'radio',0,0,NULL,'2',NULL,'2',NULL,'visible',NULL,3),
(@question_id + 25,'radio',0,0,NULL,'3',NULL,'3',NULL,'visible',NULL,4),
(@question_id + 25,'radio',0,0,NULL,'4',NULL,'4',NULL,'visible',NULL,5);

INSERT INTO `scales` (`invert`, `combination`, `questionnaire_id`, `range`, `name`, `order`, `base`, `critical`) VALUES 
(NULL,NULL,@questionnaire_id,NULL,'EPIC-26',0,1,NULL),

-- from original p3p
(NULL,NULL,@questionnaire_id,NULL,'Influential Factors - Symptoms (EPIC Short Form)',2,NULL,NULL),
(NULL,'sum_or_any_null',@questionnaire_id,NULL,'EPIC-CP',0,NULL,NULL)
;
SELECT LAST_INSERT_ID() INTO @scale_id;


INSERT INTO `subscales` (`scale_id`, `range`, `invert`, `base`, `critical`, `combination`, `name`, `internal_note`, `order`, `category_id`) VALUES 
(@scale_id,100,0,0,0,'mean_or_fifth_null','Urinary Incontinence',NULL,0,NULL),
(@scale_id,100,0,0,0,'mean_or_fifth_null','Urinary Irritation/Obstruction',NULL,0,NULL),
(@scale_id,100,0,0,0,'mean_or_fifth_null','Bowel',NULL,0,NULL),
(@scale_id,100,0,0,0,'mean_or_fifth_null','Sexual',NULL,0,NULL),
(@scale_id,100,0,0,0,'mean_or_fifth_null','Vitality/Hormonal',NULL,0,NULL),
(@scale_id,100,0,0,0,'not_null','Urinary Bother',NULL,0,NULL),
(@scale_id,100,0,0,0,'not_null','Bowel Bother',NULL,0,NULL),
(@scale_id,100,0,0,0,'not_null','Sexual Bother',NULL,0,NULL),

-- from original p3p
(@scale_id + 1,5,0,1,3,'mean_or_all_null','Current Symptoms',NULL,1,NULL),

(@scale_id + 2,12,0,0,0,'sum_or_any_null','Urinary Incontinence Symptom Score',NULL,0,NULL),
(@scale_id + 2,12,0,0,0,'sum_or_any_null','Urinary Irritation/Obstruction Symptom Score',NULL,0,NULL),
(@scale_id + 2,12,0,0,0,'sum_or_any_null','Bowel Symptom Score',NULL,0,NULL),
(@scale_id + 2,12,0,0,0,'sum_or_any_null','Sexual Symptom Score',NULL,0,NULL),
(@scale_id + 2,12,0,0,0,'sum_or_any_null','Vitality/Hormonal Symptom Score',NULL,0,NULL)
;
SELECT LAST_INSERT_ID() INTO @subscale_id;


INSERT INTO `items` (`name`, `name_es_MX`, `question_id`, `subscale_id`, `base`, `range`, `critical`, `sequence`) VALUES 
('1. Over the <strong>past 4 weeks</strong>, how often have you leaked urine?','',@question_id,@subscale_id,1,4,NULL,NULL),
('2. Which of the following best describes your urinary control <strong>during the last 4 weeks</strong>?','',@question_id + 1,@subscale_id,1,3,NULL,NULL),
('3. How many pads or adult diapers per day did you usually use to control leakage <strong>during the last 4 weeks</strong>?','',@question_id + 2,@subscale_id,0,3,NULL,NULL),
('a. Dripping or leaking urine','',@question_id + 3,@subscale_id,0,4,NULL,NULL),
('b. Pain or burning on urination','',@question_id + 4,@subscale_id + 1,0,4,NULL,NULL),
('c. Bleeding with urination','',@question_id + 5,@subscale_id + 1,0,4,NULL,NULL),
('d. Weak urine stream or incomplete emptying','',@question_id + 6,@subscale_id + 1,0,4,NULL,NULL),
('e. Need to urinate frequently during the day','',@question_id + 7,@subscale_id + 1,0,4,NULL,NULL),
('Urinary Bother','',@question_id + 8,@subscale_id + 5,1,4,NULL,NULL),
('a. Urgency to have a bowel movement','',@question_id + 9,@subscale_id + 2,0,4,NULL,NULL),
('b. Increased frequency of bowel movements','',@question_id + 10,@subscale_id + 2,0,4,NULL,NULL),
('c. Losing control of your stools','',@question_id + 11,@subscale_id + 2,0,4,NULL,NULL),
('d. Blood stools','',@question_id + 12,@subscale_id + 2,0,4,NULL,NULL),
('e. Abdominal / Pelvic / Rectal Pain','',@question_id + 13,@subscale_id + 2,0,4,NULL,NULL),
('Bowel Bother','',@question_id + 14,@subscale_id + 6,1,4,NULL,NULL),
('7. Overall, how big a problem have your bowel habits been for you <strong>during the past 4 weeks</strong>?','',@question_id + 14,@subscale_id + 2,1,4,NULL,NULL),
('a. Your ability to have an erection?','',@question_id + 15,@subscale_id + 3,1,4,NULL,NULL),
('b. Your ability to reach orgasm (climax)?','',@question_id + 16,@subscale_id + 3,1,4,NULL,NULL),
('9. How would you describe the usual QUALITY of your erections <strong>during the last 4 weeks</strong>?','',@question_id + 17,@subscale_id + 3,1,3,NULL,NULL),
('10. How would you describe the FREQUENCY of your erections <strong>during the last 4 weeks</strong>?','',@question_id + 18,@subscale_id + 3,1,4,NULL,NULL),
('11. Overall, how would you rate your ability to function sexually <strong>during the last 4 weeks</strong>?','',@question_id + 19,@subscale_id + 3,1,4,NULL,NULL),
('12. Overall, how big a problem has your sexual function or lack of sexual function been for you <strong>during the last 4 weeks<','',@question_id + 20,@subscale_id + 3,1,4,NULL,NULL),
('Sexual Bother','',@question_id + 20,@subscale_id + 7,1,4,NULL,NULL),
('a. Hot flashes','',@question_id + 21,@subscale_id + 4,0,4,NULL,NULL),
('b. Breast tenderness / enlargement','',@question_id + 22,@subscale_id + 4,0,4,NULL,NULL),
('c. Feeling depressed','',@question_id + 23,@subscale_id + 4,0,4,NULL,NULL),
('d. Lack of energy','',@question_id + 24,@subscale_id + 4,0,4,NULL,NULL),
('e. Change in body weight','',@question_id + 25,@subscale_id + 4,0,4,NULL,NULL),

-- from original p3p id subscale_id=55 
('Sexual','Síntomas sexuales',@question_id + 20,@subscale_id + 8,0,3,NULL,2),
('Bladder','Síntomas de la Vejiga ',@question_id + 8,@subscale_id + 8,0,3,NULL,1),
('Bowel','Síntomas de los Intestinos',@question_id + 14,@subscale_id + 8,0,3,NULL,3),

('Dribbling','',@question_id + 1,@subscale_id + 9,0,NULL,2,NULL),
('Pad use','',@question_id + 2,@subscale_id + 9,0,NULL,2,NULL),
('Leaking','',@question_id + 3,@subscale_id + 9,0,NULL,3,NULL),

('Pain/burning','',@question_id + 4,@subscale_id + 10,0,NULL,3,NULL),
('Stream','',@question_id + 6,@subscale_id + 10,0,NULL,3,NULL),
('Frequency','',@question_id + 7,@subscale_id + 10,0,NULL,3,NULL),

-- combination of 2 items?
-- ('Pain/urgency','',1895,@subscale_id + 11,0,NULL,3,NULL),
('Rectal Pain','',@question_id + 13,@subscale_id + 11,0,NULL,3,NULL),
('Bowel Urgency','',@question_id + 9,@subscale_id + 11,0,NULL,3,NULL),

('Frequency','',@question_id + 10,@subscale_id + 11,0,NULL,3,NULL),
('Overall problems','',@question_id + 14,@subscale_id + 11,0,NULL,3,NULL),

('Orgasm ability','',@question_id + 16,@subscale_id + 12,0,NULL,3,NULL),
('Erections','',@question_id + 17,@subscale_id + 12,0,NULL,2,NULL),
('Overall function','',@question_id + 20,@subscale_id + 12,0,NULL,3,NULL),

-- combination of 2 items?
-- ('Hot flashes/breasts','',1902,@subscale_id + 13,0,NULL,3,NULL),
('Hot flashes','',@question_id + 21,@subscale_id + 13,0,NULL,3,NULL),
('Breast tenderness / enlargement','',@question_id + 22,@subscale_id + 13,0,NULL,3,NULL),


('Feeling depressed','',@question_id + 23,@subscale_id + 13,0,NULL,3,NULL),
('Lack of energy','',@question_id + 24,@subscale_id + 13,0,NULL,3,NULL)

;

update projects_questionnaires set questionnaire_id = @questionnaire_id where questionnaire_id=57 and project_id=3;