
INSERT INTO `questionnaires` (`Title`, `Title_es_MX`, `BodyText`, `FriendlyTitle`, `FriendlyTitle_es_MX`) VALUES
('Baseline Additional Questions', NULL,NULL, NULL, NULL);
SELECT LAST_INSERT_ID() INTO @questionnaire_id;

INSERT INTO `projects_questionnaires` (`project_id`, `questionnaire_id`, `Sequence`) VALUES
(3, @questionnaire_id, 500);


INSERT INTO `pages` (`questionnaire_id`, `Title`, `Title_es_MX`, `Header`, `Header_es_MX`, `BodyText`, `BodyText_es_MX`, `NavigationType`, `TargetType`, `ProgressType`, `LayoutType`, `Sequence`, `iterable`) VALUES
(@questionnaire_id,NULL,NULL,NULL,NULL,'The following questions are about your sexual interest and satisfaction:',NULL,'prev-next',NULL,'graphical','basic',5,NULL),
(@questionnaire_id,NULL,NULL,NULL,NULL,NULL,NULL,'prev-next',NULL,'graphical','basic',10,NULL),
(@questionnaire_id,NULL,NULL,NULL,NULL,NULL,NULL,'prev-next',NULL,'graphical','basic',15,NULL),
(@questionnaire_id,NULL,NULL,NULL,NULL,'The following questions are about your use of erectile aids:',NULL,'prev-next',NULL,'graphical','basic',20,NULL),
(@questionnaire_id,NULL,NULL,NULL,NULL,NULL,NULL,'prev-next',NULL,'graphical','basic',25,NULL),
(@questionnaire_id,NULL,NULL,NULL,NULL,NULL,NULL,'prev-next',NULL,'graphical','basic',30,NULL)
;
SELECT LAST_INSERT_ID() INTO @page_id;

INSERT INTO `questions` (`page_id`, `ShortTitle`, `ShortTitle_es_MX`, `BodyText`, `BodyText_es_MX`, `BodyTextPosition`, `Orientation`, `Groups`, `Style`, `Sequence`, `has_conditional_options`, `ignore_skipped`, `num_user_controlled`, `cross_session`, `RangeLeft`, `RangeLeft_es_MX`, `RangeRight`, `RangeRight_es_MX`) VALUES
(@page_id,NULL,NULL,'In the PAST 4 WEEKS, how interested have you been in sexual activity?',NULL,'left','vertical',1,'normal',5,0,0,0,0,NULL,NULL,NULL,NULL),
(@page_id + 1,NULL,NULL,'In the PAST 4 WEEKS , how many times have you tried to have any sexual activity?',NULL,'left','vertical',1,'normal',5,0,0,0,0,NULL,NULL,NULL,NULL),
(@page_id + 2,NULL,NULL,'When you have had a sexual activity, how satisfying has it been?',NULL,'left','vertical',1,'normal',5,0,0,0,0,NULL,NULL,NULL,NULL),
(@page_id + 3,NULL,NULL,'Please select the erectile aids you may have used in the PAST 4 WEEKS for sexual activity. Please choose all that apply.',NULL,'left','vertical',1,'normal',5,0,0,0,0,NULL,NULL,NULL,NULL),
(@page_id + 4,NULL,NULL,'When you have been sexually active over the PAST 4 WEEKS, did you use erectile aids:',NULL,'left','vertical',1,'normal',5,0,0,0,0,NULL,NULL,NULL,NULL),
(@page_id + 5,NULL,NULL,'Why have you not been sexually active? Please choose all that apply.',NULL,'left','vertical',1,'normal',5,0,0,0,0,NULL,NULL,NULL,NULL)
;
SELECT LAST_INSERT_ID() INTO @question_id;


INSERT INTO `options` (`question_id`, `OptionType`, `Height`, `Width`, `MaxCharacters`, `AnalysisValue`, `ValueRestriction`, `BodyText`, `BodyText_es_MX`, `BodyTextType`, `AncillaryText`, `Sequence`) VALUES
(@question_id,'radio',0,0,NULL,NULL,NULL,'Not at all',NULL,'visible',NULL,5),
(@question_id,'radio',0,0,NULL,NULL,NULL,'A little bit',NULL,'visible',NULL,10),
(@question_id,'radio',0,0,NULL,NULL,NULL,'Somewhat',NULL,'visible',NULL,15),
(@question_id,'radio',0,0,NULL,NULL,NULL,'Quite a bit',NULL,'visible',NULL,20),
(@question_id,'radio',0,0,NULL,NULL,NULL,'Very much',NULL,'visible',NULL,25),

(@question_id + 1,'radio',0,0,NULL,NULL,NULL,'0 times',NULL,'visible',NULL,5),
(@question_id + 1,'radio',0,0,NULL,NULL,NULL,'1 times',NULL,'visible',NULL,10),
(@question_id + 1,'radio',0,0,NULL,NULL,NULL,'2 times',NULL,'visible',NULL,15),
(@question_id + 1,'radio',0,0,NULL,NULL,NULL,'3 times',NULL,'visible',NULL,20),
(@question_id + 1,'radio',0,0,NULL,NULL,NULL,'4 or more times',NULL,'visible',NULL,25),

(@question_id + 2,'radio',0,0,NULL,NULL,NULL,'Not at all',NULL,'visible',NULL,5),
(@question_id + 2,'radio',0,0,NULL,NULL,NULL,'A little bit',NULL,'visible',NULL,10),
(@question_id + 2,'radio',0,0,NULL,NULL,NULL,'Somewhat',NULL,'visible',NULL,15),
(@question_id + 2,'radio',0,0,NULL,NULL,NULL,'Quite a bit',NULL,'visible',NULL,20),
(@question_id + 2,'radio',0,0,NULL,NULL,NULL,'Very much',NULL,'visible',NULL,25),

(@question_id + 3,'checkbox',0,0,NULL,NULL,NULL,'None',NULL,'visible',NULL,5),
(@question_id + 3,'checkbox',0,0,NULL,NULL,NULL,'Pills (Viagra, Cialis, Levitra, Stendra, Sildenafil, Staxyn)',NULL,'visible',NULL,10),
(@question_id + 3,'checkbox',0,0,NULL,NULL,NULL,'Urethral Suppository (MUSE)',NULL,'visible',NULL,15),
(@question_id + 3,'checkbox',0,0,NULL,NULL,NULL,'Penile Injection',NULL,'visible',NULL,20),
(@question_id + 3,'checkbox',0,0,NULL,NULL,NULL,'Vacuum Erection Device',NULL,'visible',NULL,25),
(@question_id + 3,'combo-check',0,0,NULL,NULL,NULL,'Other',NULL,'visible',NULL,30),

(@question_id + 4,'radio',0,0,NULL,NULL,NULL,'Almost never/never',NULL,'visible',NULL,5),
(@question_id + 4,'radio',0,0,NULL,NULL,NULL,'A few times (less than half of the time)',NULL,'visible',NULL,10),
(@question_id + 4,'radio',0,0,NULL,NULL,NULL,'Sometimes (about half of the time)',NULL,'visible',NULL,15),
(@question_id + 4,'radio',0,0,NULL,NULL,NULL,'Most times (more than half of the time)',NULL,'visible',NULL,20),
(@question_id + 4,'radio',0,0,NULL,NULL,NULL,'Almost always/always',NULL,'visible',NULL,25),

(@question_id + 5,'checkbox',0,0,NULL,NULL,NULL,'Lack of a willing partner',NULL,'visible',NULL,5),
(@question_id + 5,'checkbox',0,0,NULL,NULL,NULL,'Lack of interest',NULL,'visible',NULL,10),
(@question_id + 5,'checkbox',0,0,NULL,NULL,NULL,'Lack of confidence',NULL,'visible',NULL,15),
(@question_id + 5,'checkbox',0,0,NULL,NULL,NULL,'No ejaculate',NULL,'visible',NULL,20),
(@question_id + 5,'checkbox',0,0,NULL,NULL,NULL,'Urine leak during intercourse',NULL,'visible','Urine leak',25),
(@question_id + 5,'checkbox',0,0,NULL,NULL,NULL,'Pain/discomfort during intercourse',NULL,'visible','Pain/discomfort',30),
(@question_id + 5,'combo-check',0,0,NULL,NULL,NULL,'Other',NULL,'visible',NULL,35)
;

INSERT INTO `conditions` (`target_type`, `target_id`, `condition`) VALUES
('Page',@page_id + 2,CONCAT('%(comparisonQuestion ',@question_id + 1,' > 5)')),
('Page',@page_id + 3,CONCAT('%(comparisonQuestion ',@question_id + 1,' > 5)')),
('Page',@page_id + 4,CONCAT('%(comparisonQuestion ',@question_id + 1,' > 5)')),
('Page',@page_id + 5,CONCAT('%(comparisonQuestion ',@question_id + 1,' == 5)'))

;
