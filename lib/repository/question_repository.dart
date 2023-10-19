import 'package:quiz/models/question_model.dart';

import 'db_repository.dart';

class QuestionRepository {
  Future createQuestionTable() async {
    final db = await DbRepository().database;
    String id = 'id INTEGER PRIMARY KEY AUTOINCREMENT';
    String category = 'category TEXT NOT NULL';
    String categoryId = 'categoryId INTEGER NOT NULL';
    String hasImage = 'hasImage BOOLEAN NOT NULL';
    String imageUri = 'imageUri TEXT NULL';
    String question = 'question TEXT NOT NULL';
    String answer = 'answer TEXT NOT NULL';
    String option1 = 'option1 TEXT NOT NULL';
    String option2 = 'option2 TEXT NOT NULL';
    String option3 = 'option3 TEXT NOT NULL';
    String option4 = 'option4 TEXT NOT NULL';
    String fKey =
        'CONSTRAINT fk_category FOREIGN KEY (categoryId) REFERENCES category (id)';
    String sqlQuestion =
        'CREATE TABLE IF NOT EXISTS question($id, $category, $categoryId, $hasImage, $imageUri, $question, $answer, $option1, $option2, $option3, $option4, $fKey)';
    await db.execute(sqlQuestion);

    final List<Map<String, dynamic>> maps =
        await db.rawQuery('select 1 from question limit 1');
    if (maps.isEmpty) {
      final List<QuestionModel> questionList = [
        // Criminal Law and Jurisprudence
        QuestionModel(
          category: 'Criminal Law and Jurisprudence',
          categoryId: 1,
          hasImage: false,
          imageUri: '',
          question:
              'What do you call an order from court legally authorizing a police or law enforcement body to arrest, search and seize a property and perform other functions in relation to the administration of justice?',
          answer: 'b. Warrant',
          option1: 'a. Order',
          option2: 'b. Warrant',
          option3: 'c. Writ',
          option4: 'd. Warrant of arrest',
        ),
        QuestionModel(
          category: 'Criminal Law and Jurisprudence',
          categoryId: 1,
          hasImage: false,
          imageUri: '',
          question:
              'Below are the components which composed the System of the Criminal Justice in the Philippines:',
          answer:
              'd. Law enforcement, corrections, prosecution, court, and community',
          option1:
              'a. Law enforcement, community, court, prosecution, and corrections',
          option2:
              'b. Law enforcement, prosecution, court, corrections, and community',
          option3: 'c. Law enforcement, court, community, and prosecution',
          option4:
              'd. Law enforcement, corrections, prosecution, court, and community',
        ),
        QuestionModel(
          category: 'Criminal Law and Jurisprudence',
          categoryId: 1,
          hasImage: false,
          imageUri: '',
          question:
              'The law cannot make an act punishable when it is not punishable when committed.',
          answer: 'b. Prospective',
          option1: 'a. General',
          option2: 'b. Prospective',
          option3: 'c. Territorial',
          option4: 'd. Mixed',
        ),
        QuestionModel(
          category: 'Criminal Law and Jurisprudence',
          categoryId: 1,
          hasImage: false,
          imageUri: '',
          question:
              'If a person is found guilty of the crime charged on him/her, the component that would be responsible for the service of his/her sentence is:',
          answer: 'c. Corrections',
          option1: 'a. Law Enforcement',
          option2: 'b. Court',
          option3: 'c. Corrections',
          option4: 'd. Prosecutions',
        ),
        QuestionModel(
          category: 'Criminal Law and Jurisprudence',
          categoryId: 1,
          hasImage: false,
          imageUri: '',
          question:
              'When a person was arrested and put into jail without trial then it is an example of violation of the ______ of law.',
          answer: 'a. Due process',
          option1: 'a. Due process',
          option2: 'b. Criminal',
          option3: 'c. Equal protection of the laws',
          option4: 'd. Criminal Justice Process',
        ),
        QuestionModel(
          category: 'Criminal Law and Jurisprudence',
          categoryId: 1,
          hasImage: false,
          imageUri: '',
          question:
              'The maximum penalty for offenses subject to Katarungang Pambarangay is ________.',
          answer: 'c. Not more than 1 year',
          option1: 'a. Not more than 6 months',
          option2: 'b. More than 6 months regardless of fine',
          option3: 'c. Not more than 1 year',
          option4: 'd. More than 1 year regardless of fine',
        ),
        QuestionModel(
          category: 'Criminal Law and Jurisprudence',
          categoryId: 1,
          hasImage: false,
          imageUri: '',
          question:
              'This refers to the first process of settling a dispute under the Katarungang Pambarangay. It is performed by the punong barangay as lupon chairman who is given authority to summon the disputants for a face-to-face meeting before him for the purpose of expeditiously and amicably settling their differences.',
          answer: 'd. Mediation',
          option1: 'a. Conciliation',
          option2: 'c. Arbitration',
          option3: 'b. Hearing',
          option4: 'd. Mediation',
        ),
        QuestionModel(
          category: 'Criminal Law and Jurisprudence',
          categoryId: 1,
          hasImage: false,
          imageUri: '',
          question:
              'This refers to a writ issued directly by a judge to a law-enforcement officer, especially for the arrest of a person who has been held in contempt, has disobeyed a subpoena, or must appear for a hearing or trial.',
          answer: 'a. Bench warrant',
          option1: 'a. Bench warrant',
          option2: 'c. Alias warrant',
          option3: 'b. John doe warrant',
          option4: 'd. General warrant',
        ),
        QuestionModel(
          category: 'Criminal Law and Jurisprudence',
          categoryId: 1,
          hasImage: false,
          imageUri: '',
          question:
              'Which of the following is not a case where warrantless search and seizure is valid?',
          answer: 'd. None of the above',
          option1: 'a. Search of moving vehicles',
          option2: 'b. Seizure of evidence in plain view',
          option3: 'c. Consented search',
          option4: 'd. None of the above',
        ),
        QuestionModel(
          category: 'Criminal Law and Jurisprudence',
          categoryId: 1,
          hasImage: false,
          imageUri: '',
          question: 'What is the legality of search incident to lawful arrest?',
          answer:
              'a. Valid because it is an exception to rule for the necessity for a search warrant',
          option1:
              'a. Valid because it is an exception to rule for the necessity for a search warrant',
          option2:
              'b. Invalid because it is in contravention to rule of searches and seizures.',
          option3:
              'c. Valid because in the conduct of search the searching officer is armed with a search warrant',
          option4:
              'd. Invalid because the accused is not committing a crime at the time of search.',
        ),
        QuestionModel(
          category: 'Criminal Law and Jurisprudence',
          categoryId: 1,
          hasImage: false,
          imageUri: '',
          question:
              'The law enforcement officers searched the house in the presence of the wife without the presence of additional witnesses residing in the same locality. Which of the following is correct?',
          answer:
              'c. The search is valid because the rule does not require additional witnesses if it is made in the presence of the owner.',
          option1:
              'a. The search is invalid because of the absence of at least two witness rule.',
          option2:
              'b. The search is invalid because it was made without the presence of the husband.',
          option3:
              'c. The search is valid because the rule does not require additional witnesses if it is made in the presence of the owner.',
          option4:
              'd. The search is valid because the searching officers are armed with a warrant.',
        ),
        QuestionModel(
          category: 'Criminal Law and Jurisprudence',
          categoryId: 1,
          hasImage: false,
          imageUri: '',
          question:
              'When can a judge personally examine the applicant and witnesses for purposes of issuance of warrant of arrest?',
          answer:
              'c. When the warrant is issued upon the application of a peace officer.',
          option1:
              'a. When the warrant is issued after filing the information by the prosecutor.',
          option2:
              'b. When the warrant is issued before filing the information by the prosecutor.',
          option3:
              'c. When the warrant is issued upon the application of a peace officer.',
          option4:
              'd. When the warrant is issued upon the request of the people of the Philippines.',
        ),
        QuestionModel(
          category: 'Criminal Law and Jurisprudence',
          categoryId: 1,
          hasImage: false,
          imageUri: '',
          question:
              'This refers to a reasonable ground of presumption that is, or may be, well- founded does not mean actual and positive cause nor does it import actual certainty.',
          answer: 'c. Probable cause',
          option1: 'a. Preliminary conference',
          option2: 'b. Preliminary investigation',
          option3: 'c. Probable cause',
          option4: 'd. Inquest Investigation',
        ),
        QuestionModel(
          category: 'Criminal Law and Jurisprudence',
          categoryId: 1,
          hasImage: false,
          imageUri: '',
          question:
              'What refers to an informal and summary investigation conducted by a public prosecutor in criminal case involving persons arrested and detained without the benefit of a warrant of arrest issued by the court for the purpose of determining whether or not said persons should remain under custody and correspondingly be charged in court?',
          answer: 'd. Inquest Investigation',
          option1: 'a. Preliminary conference',
          option2: 'b. Preliminary investigation',
          option3: 'c. Probable cause',
          option4: 'd. Inquest Investigation',
        ),
        QuestionModel(
          category: 'Criminal Law and Jurisprudence',
          categoryId: 1,
          hasImage: false,
          imageUri: '',
          question:
              'This involves a similar issue in a civil action which was pending when the criminal action was instituted or before the amendment, in a civil action filed after the institution of the criminal action was instituted.',
          answer: 'b. Prejudicial issue',
          option1: 'a. Prejudicial question',
          option2: 'c. Preponderance of evidence',
          option3: 'b. Prejudicial issue',
          option4: 'd. Independent civil action',
        ),
        QuestionModel(
          category: 'Criminal Law and Jurisprudence',
          categoryId: 1,
          hasImage: false,
          imageUri: '',
          question:
              'X plan to rob Y, but since the former has little to chance to do it, X killed M first got the personal belonging of M. What would be the crime committed by X if any?',
          answer: 'a. Robbery with homicide',
          option1: 'a. Robbery with homicide',
          option2: 'b. Robbery only',
          option3: 'c. Murder and theft',
          option4: 'd. Murder only',
        ),
        QuestionModel(
          category: 'Criminal Law and Jurisprudence',
          categoryId: 1,
          hasImage: false,
          imageUri: '',
          question:
              'What would be the crime committed if the thing is forcibly taken by the offender from the offended party and because he was pursued by a policeman, he hid the thing taken from the offended party?',
          answer: 'c. Consummated robbery',
          option1: 'a. Theft',
          option2: 'b. Frustrated robbery',
          option3: 'c. Consummated robbery',
          option4: 'd. Attempted robbery',
        ),
        QuestionModel(
          category: 'Criminal Law and Jurisprudence',
          categoryId: 1,
          hasImage: false,
          imageUri: '',
          question:
              'It is committed by any person who shall threaten another with the infliction upon his person, honor or property or that of his family of any wrong amounting to crime or not.',
          answer: 'd. Grave threat',
          option1: 'a. Violation of domicile',
          option2: 'b. Grave coercion',
          option3: 'c. Trespass to dwelling',
          option4: 'd. Grave threat',
        ),
        QuestionModel(
          category: 'Criminal Law and Jurisprudence',
          categoryId: 1,
          hasImage: false,
          imageUri: '',
          question:
              'It is committed by any person who shall arrest or detain another without legal grounds for the purpose of delivering the offended party to the proper authorities?',
          answer: 'b. Unlawful arrest',
          option1: 'a. Arbitrary detention',
          option2: 'c. Coercion',
          option3: 'b. Unlawful arrest',
          option4: 'd. Abduction',
        ),
        QuestionModel(
          category: 'Criminal Law and Jurisprudence',
          categoryId: 1,
          hasImage: false,
          imageUri: '',
          question:
              'Any act committed without violence, but which unjustifiably annoys or vexes an innocent person.',
          answer: 'd. Unjust vexation',
          option1: 'a. Acts of lasciviousness',
          option2: 'b. Grave scandals',
          option3: 'c. Abuse against chastity',
          option4: 'd. Unjust vexation',
        ),
        QuestionModel(
          category: 'Criminal Law and Jurisprudence',
          categoryId: 1,
          hasImage: false,
          imageUri: '',
          question:
              'It is a crime committed when a public officer appropriates public funds or property under his custody.',
          answer: 'a. Embezzlement',
          option1: 'a. Embezzlement',
          option2: 'b. Technical Malversation',
          option3: 'c. Illegal use of public funds',
          option4: 'd. Estafa',
        ),
        QuestionModel(
          category: 'Criminal Law and Jurisprudence',
          categoryId: 1,
          hasImage: false,
          imageUri: '',
          question:
              'What crime is committed if by reason or on the occasion of, piracy the pirates killed some passengers of the vessel?',
          answer: 'b. Qualified Piracy',
          option1: 'a. Piracy with homicide',
          option2: 'b. Qualified Piracy',
          option3: 'c. Murder only',
          option4: 'd. Piracy and Murder',
        ),
        QuestionModel(
          category: 'Criminal Law and Jurisprudence',
          categoryId: 1,
          hasImage: false,
          imageUri: '',
          question:
              'What is a crime committed by the person who shall have made the offers or promises to the public officer?',
          answer: 'b. Corruption of public officer',
          option1: 'a. Direct bribery',
          option2: 'b. Corruption of public officer',
          option3: 'c. Indirect bribery',
          option4: 'd. Extortion',
        ),
        QuestionModel(
          category: 'Criminal Law and Jurisprudence',
          categoryId: 1,
          hasImage: false,
          imageUri: '',
          question:
              'A was arrested when the sauna bath was raided, during the initial interview, A gave all his information except his true first name. Which of the following statements is correct?',
          answer:
              'c. A is not liable for any crime because he did not conceal all his personal status.',
          option1:
              'a. A is liable for using fictitious name because he gives a false name.',
          option2:
              'b. A is liable for using fictitious name because he defrauded the police officer.',
          option3:
              'c. A is not liable for any crime because he did not conceal all his personal status.',
          option4: 'd. None of the above',
        ),
        QuestionModel(
          category: 'Criminal Law and Jurisprudence',
          categoryId: 1,
          hasImage: false,
          imageUri: '',
          question:
              'When the offender enjoys and delights in making his victim suffers slowly and gradually, causing him unnecessary physical pain in the consummation of the criminal act, this refers to ______.',
          answer: 'b. Cruelty',
          option1: 'a. Ignominy',
          option2: 'b. Cruelty',
          option3: 'c. Treachery',
          option4: 'd. Masochism',
        ),

        // CORRECTIONAL ADMINISTRATION

        QuestionModel(
          category: 'Correctional Administration',
          categoryId: 2,
          hasImage: false,
          imageUri: '',
          question:
              'Which is NOT among the social services of an Aftercare Program of the DDB?',
          answer: 'a. Psychiatric test',
          option1: 'a. Psychiatric test',
          option2: 'b. Case work',
          option3: 'c. Group work',
          option4: 'd. Recovery Training',
        ),

        QuestionModel(
          category: 'Correctional Administration',
          categoryId: 2,
          hasImage: false,
          imageUri: '',
          question:
              'During the admission of inmates at the TCC, the keeping of complete record of the inmate, such as his personal circumstances and history, is on what stage?',
          answer: 'b. Orientation',
          option1: 'a. Treatment Planning',
          option2: 'b. Orientation',
          option3: 'c. Placement',
          option4: 'd. Assessment',
        ),

        QuestionModel(
          category: 'Correctional Administration',
          categoryId: 2,
          hasImage: false,
          imageUri: '',
          question:
              'The following are the privileges of TCC recipient, EXCEPT:',
          answer: 'c. influence of prison gangs',
          option1: 'a. not overcrowded work area',
          option2: 'b. ample supply of water',
          option3: 'c. influence of prison gangs',
          option4: 'd. 24-hour electricity supply',
        ),

        QuestionModel(
          category: 'Correctional Administration',
          categoryId: 2,
          hasImage: false,
          imageUri: '',
          question:
              'The self-defense theory justifying the imposition of penalty implies that offenders to _________.',
          answer: 'C. protect the society from danger',
          option1: 'A. serve as an example to deter others',
          option2: 'B. correct and reform them',
          option3: 'C. protect the society from danger',
          option4: 'D. prevent and suppress crime',
        ),

        QuestionModel(
          category: 'Correctional Administration',
          categoryId: 2,
          hasImage: false,
          imageUri: '',
          question:
              'Which is designed to provide jail inspectors with the basic functions and responsibilities of an officer particularly on Jail Management, Administration and Operation?',
          answer: 'D. Jail Officers Basic Course',
          option1: 'A. Jail Advance Course',
          option2: 'C. Jail Officers Orientation Course',
          option3: 'B. Jail Basic Recruit Course',
          option4: 'D. Jail Officers Basic Course',
        ),

        QuestionModel(
          category: 'Correctional Administration',
          categoryId: 2,
          hasImage: false,
          imageUri: '',
          question:
              'The following are the documents required before admission of the applicant at the TCC, EXCEPT:',
          answer: 'c. Case Summary',
          option1: 'a. Intake interview',
          option2: 'b. Intake interview result',
          option3: 'c. Case Summary',
          option4: 'd. Consent form',
        ),

        QuestionModel(
          category: 'Correctional Administration',
          categoryId: 2,
          hasImage: false,
          imageUri: '',
          question:
              'Select the classification of inmates who have lesser tendencies to commit offenses and generally pose the least risk to public safety.',
          answer: 'C. minimum risk',
          option1: 'A. maximum risk',
          option2: 'B. low risk',
          option3: 'C. minimum risk',
          option4: 'D. medium risk',
        ),

        QuestionModel(
          category: 'Correctional Administration',
          categoryId: 2,
          hasImage: false,
          imageUri: '',
          question:
              'Morning Meeting in the TCMP is a daily ritual for the purpose of ___?',
          answer:
              'b. discusses attitudes and eliciting the theme of the week and word of the day.',
          option1:
              'a. addressing attitudes of previous days, performed to start the day right.',
          option2:
              'b. discusses attitudes and eliciting the theme of the week and word of the day.',
          option3:
              'c. sanction that aids residents realize the value of correcting infractions.',
          option4: 'd. to ensure the smooth and orderly flow of operation.',
        ),

        QuestionModel(
          category: 'Correctional Administration',
          categoryId: 2,
          hasImage: false,
          imageUri: '',
          question:
              'The following are the Essential Elements of Parole, EXCEPT:',
          answer: 'b. III and V',
          option1: 'a. I and II',
          option2: 'b. III and V',
          option3: 'c. II and IV',
          option4: 'd. I and V',
        ),

        QuestionModel(
          category: 'Correctional Administration',
          categoryId: 2,
          hasImage: false,
          imageUri: '',
          question:
              'The Second Officer in command of the Bureau of Corrections has the rank of ___.',
          answer: 'C. Deputy Director',
          option1: 'A. Undersecretary',
          option2: 'B. Director',
          option3: 'C. Deputy Director',
          option4: 'D. Assistant Secretary',
        ),

        QuestionModel(
          category: 'Correctional Administration',
          categoryId: 2,
          hasImage: false,
          imageUri: '',
          question:
              'What agency has general supervision and control of all National Penitentiaries?',
          answer: 'a. Bureau of Correction',
          option1: 'a. Bureau of Correction',
          option2: 'c. National Prison',
          option3: 'b. BJMP',
          option4: 'd. Jail Bureau',
        ),

        QuestionModel(
          category: 'Correctional Administration',
          categoryId: 2,
          hasImage: false,
          imageUri: '',
          question:
              'These are significant ideas and characteristics of Probation, EXCEPT:',
          answer: 'd. To gain ideas and commit another crime.',
          option1: 'a. Reduction of the incidence of recidivism.',
          option2: 'b. A more enlightened and humane correctional system.',
          option3: 'c. The method is less costly than confinement.',
          option4: 'd. To gain ideas and commit another crime.',
        ),

        QuestionModel(
          category: 'Correctional Administration',
          categoryId: 2,
          hasImage: false,
          imageUri: '',
          question:
              'The recipient of absolute pardon extinguishes one’s criminal liability imposed upon him by the sentence, while civil liability is ___?',
          answer: 'D. exempted',
          option1: 'A. not exempted',
          option2: 'C. not free',
          option3: 'B. also extinguished',
          option4: 'D. exempted',
        ),

        QuestionModel(
          category: 'Correctional Administration',
          categoryId: 2,
          hasImage: false,
          imageUri: '',
          question:
              'Which of the following is the MOST important program that aids in the rehabilitation of prisoners and is known to be the cornerstone of rehabilitation?',
          answer: 'c. Educational program',
          option1: 'a. Recreational program',
          option2: 'c. Educational program',
          option3: 'b. Religious program',
          option4: 'd. Employment of prisoners',
        ),

        QuestionModel(
          category: 'Correctional Administration',
          categoryId: 2,
          hasImage: false,
          imageUri: '',
          question:
              'The report stating the conduct of a parolee while under supervision is referred to ___?',
          answer: 'A. Progress Report',
          option1: 'A. Progress Report',
          option2: 'C. Status Report',
          option3: 'B. Infraction Report',
          option4: 'D. Violation Report',
        ),

        QuestionModel(
          category: 'Correctional Administration',
          categoryId: 2,
          hasImage: false,
          imageUri: '',
          question:
              'What do you call an investigation that is conducted by a parole officer before the grant of Parole?',
          answer: 'b. Pre-Probation and Parole',
          option1: 'a. Post-Sentence',
          option2: 'b. Pre-Probation and Parole',
          option3: 'c. Pre-parole',
          option4: 'd. Pre-parole and investigation',
        ),

        QuestionModel(
          category: 'Correctional Administration',
          categoryId: 2,
          hasImage: false,
          imageUri: '',
          question:
              'Which is the BEST reason for the segregation scheme practiced by the DRD to expand the scope of classification not only by security risk but also classifying inmates according to crimes committed?',
          answer:
              'C. For the readiness of an inmate to join the mainstream society upon release from confinement.',
          option1:
              'A. To serve as a reference of the DRD in the preparation of individual inmate reformation treatment.',
          option2:
              'B. To ensure that an inmate will not acquire other criminal’s skills brought about by his exposure.',
          option3:
              'C. For the readiness of an inmate to join the mainstream society upon release from confinement.',
          option4: 'D. To prevent physical harm against dangerous inmates.',
        ),

        QuestionModel(
          category: 'Correctional Administration',
          categoryId: 2,
          hasImage: false,
          imageUri: '',
          question:
              'Mr. Tamig has been convicted for the crime of slight physical injury which the law penalizes him a penalty of Arresto Menor. Therefore, Mr. Tamig will be classified as what type of sentence prisoner?',
          answer: 'A. Municipal prisoners',
          option1: 'A. Municipal prisoners',
          option2: 'C. Provincial or city prisoners',
          option3: 'B. National or insular prisoners',
          option4: 'D. Detention prisoner',
        ),

        QuestionModel(
          category: 'Correctional Administration',
          categoryId: 2,
          hasImage: false,
          imageUri: '',
          question:
              'What type of report is prepared when a parolee commits any violation of the terms and conditions stated in the release document?',
          answer: 'a. Violation',
          option1: 'a. Violation',
          option2: 'c. Progress',
          option3: 'b. Infraction',
          option4: 'd. Summary',
        ),

        QuestionModel(
          category: 'Correctional Administration',
          categoryId: 2,
          hasImage: false,
          imageUri: '',
          question:
              'Mr. A is a Parolee, residing at Iloilo City. He is planning to visit his parents in Bacolod. The Chief Probation and Parole Officer may authorize Mr. A to travel for a period of NOT more than ___.',
          answer: 'b. 45 days',
          option1: 'a. 15 days',
          option2: 'b. 45 days',
          option3: 'c. 30 days',
          option4: 'd. 60 days',
        ),

        QuestionModel(
          category: 'Correctional Administration',
          categoryId: 2,
          hasImage: false,
          imageUri: '',
          question:
              'What classification of prisoners are those who, by reason of their sentence, are deprived of liberty for not more than 3 years or subjected to a fine of not more than one thousand pesos?',
          answer: 'A. Municipal prisoners',
          option1: 'A. Municipal prisoners',
          option2: 'C. Provincial or city prisoners',
          option3: 'B. National or insular prisoners',
          option4: 'D. Detainee',
        ),

        QuestionModel(
          category: 'Correctional Administration',
          categoryId: 2,
          hasImage: false,
          imageUri: '',
          question:
              'Which of the following are classified as detention prisoner?',
          answer: 'b. 4, 1 and 2',
          option1: 'a. 3, 4 and 1',
          option2: 'b. 4, 1 and 2',
          option3: 'c. 2, 3 and 4',
          option4: 'd. 1, 2 and 3',
        ),

        QuestionModel(
          category: 'Correctional Administration',
          categoryId: 2,
          hasImage: false,
          imageUri: '',
          question: 'Why is probation service analogous to parole service?',
          answer:
              'a. Both have similar investigation and supervision functions.',
          option1:
              'a. Both have similar investigation and supervision functions.',
          option2: 'b. Both services are performed by the prosecutors.',
          option3: 'c. Both services are performed by alcoholics.',
          option4: 'd. Both services are under the courts.',
        ),

        QuestionModel(
          category: 'Correctional Administration',
          categoryId: 2,
          hasImage: false,
          imageUri: '',
          question:
              'Who shall approve the outside travel of the parolee for more than 30 days?',
          answer: 'b. BOARD',
          option1: 'a. Regional Director',
          option2: 'c. Probation & Parole Officer',
          option3: 'b. BOARD',
          option4: 'd. Trial Court',
        ),

        QuestionModel(
          category: 'Correctional Administration',
          categoryId: 2,
          hasImage: false,
          imageUri: '',
          question:
              'Inmates shall be served three (3) meals a day, and breakfast shall be served after the previous day’s dinner for not more than ___.',
          answer: 'B. 14 hours',
          option1: 'A. 12 hours',
          option2: 'B. 14 hours',
          option3: 'C. 6 hours',
          option4: 'D. 10 hours',
        ),
      ];

      await addQuestion(questionList);
    }
  }

  Future addQuestion(List<QuestionModel> questionList) async {
    final db = await DbRepository().database;

    for (QuestionModel x in questionList) {
      await db.insert('question', x.toMap());
    }
  }

  Future<List<Map<String, dynamic>>> loadQuestionByCategory(
      int categoryId) async {
    final db = await DbRepository().database;
    return await db.rawQuery(
        'select * from question where categoryId == ${categoryId.toString()}');
  }

  Future<List<Map<String, dynamic>>> loadQuestionByRandom() async {
    final db = await DbRepository().database;
    return await db
        .rawQuery('select * from question ORDER BY RANDOM() LIMIT 5');
  }
}
