-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 19, 2025 at 01:54 PM
-- Server version: 8.2.0
-- PHP Version: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `autoletter`
--

-- --------------------------------------------------------

--
-- Table structure for table `letter_template`
--

DROP TABLE IF EXISTS `letter_template`;
CREATE TABLE IF NOT EXISTS `letter_template` (
  `id` int NOT NULL AUTO_INCREMENT,
  `template_text` text,
  `sub_title_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `letter_template`
--

INSERT INTO `letter_template` (`id`, `template_text`, `sub_title_id`) VALUES
(1, 'To,\\n Bank Manager\\n${var8}\\n ${var7} \\n\\n \\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\tSubject : Request ${subtitlemain}\\n\\n Requested Sir/Madam,\\n \\u200B\\t I am writing to request a bank statement for my savings account with your esteemed bank. My account number is${var6}and the account is in the name of ${var5} I would like to request the bank statement for the past, starting from ${var9} to ${var10}.\\n\\nYours Sincerely\\n ${var5}\n', 9),
(3, 'To,\\n Bank Manager\\n${var4}\\n ${var3} \\n\\n  \n\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t  Subject : Request ${subtitlemain}\\n\\n Requested Sir/Madam,\\n \\u200B\\t This is to bring to your attention that I am an account holder of your ${var4} for a long time. My account number is ${var2} Your employees are very helpful and I am completely satisfied with your services.\\nI am writing this application letter to inform you that my old cheque book has just finished and I would need another one on an urgent basis. It would be very kind of you if you do the needful and issue me a new cheque book as soon as possible.\\n\\nThanking You,\\nYours Sincerely\\n${var1}', 35),
(2, 'To,\\n Bank Manager\\n${var4}\\n ${var3}\\n \\n  \\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t Subject : ${subtitlemain}\\n\\n Requested Sir/Madam,\\n \\u200B\\t I would like to inform you that  I am ${var1} an account holder in your branch.My account holder name is ${var1} and my account number is ${var2} . I request you kindly issue me an ATM card as I do not have an ATM card. I need an ATM card for my work.\\n\\n Therefore, kindly issue me an ATM card as soon as possible.\\n\\n Thanking You,\\n Yours Faithfully \\n ${var1}', 10),
(5, 'To,\\n Admissions Committee\\n${var5}\\n ${var4} \\n \\n \\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t Subject : ${subtitlemain}\\n\\n Dear Admissions Committee,\\n \\u200B\\t I am writing to express my interest in applying for admission to ${var2} at  ${var5}. Enclosed, please find my completed application form, transcripts, test scores, and recommendation letters. I am confident that my academic background and experiences align well with the programs objectives. Thank you for considering my application. I look forward to the opportunity to contribute positively to  ${var5}. \\n\\n Yours Sincerely\\n${var1} \\n Contact No. ${var3}', 12),
(7, 'To,\\n The Principal\\n${var14}\\n ${var13}\\n \\n \\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t Subject :Request ${subtitlemain}\\n \\nDear Principal Sir/Madam,\\n \\u200B\\t I am ${var12}, the father of ${var11} studying in Class  ${var15}  in your esteemed institution. I am writing this letter to request you for a fee concession. reason of concussion is ${var16}.\\n Duration of Concession is From ${var17} To   ${var18}. \\n\\n Yours Sincerely \\n  ${var11}', 13),
(12, 'Dear ${var2} \\n  Happy Birthday! \\n \\n \r\n \\u200B\\t Wishing you a day filled with laughter, love, and all your favorite things. You bring so much joy to everyone around you, and today is all about celebrating the wonderful person you are. \\n As you blow out the candles and make your wishes, know that I\'m cheering you on every step of the way. Here\'s to another year of amazing adventures, cherished memories, and endless happiness.\\n Enjoy every moment of your special day, and may the year ahead be filled with even more love, success, and happiness. \\n\\n Happy Birthday! \\n Warmest wishes, \\n ${var1}', 19),
(11, '${var3} \\n ${var5} \\n\\n Dear ${var3}, \\n \\u200B\\t Congratulations on your well-deserved promotion to ${var4}! Your hard work and dedication have made a significant impact on our team, and we are excited to see you excel in your new role.\\n Your commitment to  ${var6} has been exemplary, and we have every confidence that you will continue to thrive and make valuable contributions to our organization.\\n We look forward to supporting you in your new position and witnessing your continued success. \\n \\n Congratulations once again! \\n \\nBest regards, \\n  ${var1}\\n ${var2}', 17),
(10, '${var1} \\n ${var2} \\n ${var5} \\n ${var3} \\n ${var4} \\n\\n ${var7} \\n ${var8} \\n ${var9} \\n ${var6} \\n\\n \\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t  Subject : ${subtitlemain}.\\n\\n Dear ${var7}, \\n I am writing to schedule a business meeting to  ${var10}. The meeting is proposed to take place on  ${var13}  at  ${var14} at  ${var15}.\\n Your presence and input at this meeting are highly valued, as we aim to ${var11}. Please confirm your availability for the proposed date and time, or suggest an alternative if necessary.\\n We believe that this meeting will be instrumental in ${var12}\\n Looking forward to our productive discussion. \\n\\n Yours Sincerely \\n ${var1}', 16),
(13, '${var1} \\n  ${var2} \\n\\n  ${var4} \\n  ${var5} \\n \\n \\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t Subject : ${subtitlemain} \\n\\n Dear Sir/Madam, \\n \\u200B\\t I am writing to express my dissatisfaction with the service I received on ${var3}. Despite my expectations, I encountered ${var6} I kindly request  ${var7} Your prompt attention to this matter would be greatly appreciated. \\n \\n Sincerely, \\n ${var1}', 23),
(14, '${var54} \\n  ${var55} \\n\\n \\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t Subject : ${subtitlemain} \\n\\n Dear ${var56} \\n \\u200B\\t I hope this message finds you well. Recently, I\'ve noticed an increase in noise coming from your residence, especially during ${var57}. As your neighbor, I kindly request your cooperation in finding a solution to reduce the disturbance. Open communication and mutual respect for each other\'s living spaces are key to maintaining a harmonious neighborhood. I appreciate your understanding and willingness to address this matter.\\n \\n Sincerely, \\n ${var54}', 24),
(15, '${var77} \\n ${var78} \\n ${var79} \\n ${var80} \\n\\n ${var81} \\n ${var82} \\n ${var83} \\n ${var84} \\n ${var85} \\n\\n \\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t  Subject : ${subtitlemain} \\n\\n Dear ${var81} \\n \\u200B\\t I am writing to address a tax-related matter concerning ${var86}. I have attached all necessary documents and information to support my request/query. \\n Your prompt attention to this matter would be greatly appreciated. Should you require any further information, please feel free to contact me at ${var80} or via email at ${var79}\\n Thank you for your assistance. \\n\\n Sincerely, \\n ${var77}', 38),
(16, '${var87}  \\n ${var88} \\n ${var89} \\n ${var90} \\n ${var91} \\n\\n ${var92} \\n ${var93} \\n ${var94}  \\n\\n \\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t Subject : ${subtitlemain} \\n\\n Dear  ${var92} \\n \\u200B\\t I hope this letter finds you well. I am writing to formally request the cancellation of my name as a candidate for the upcoming Gram Panchayat election scheduled to be held on  ${var95}.\\n Due to unforeseen personal circumstances  ${var96}, I am unable to continue my candidacy for the aforementioned election. After careful consideration, I have decided to withdraw my nomination and kindly request the necessary steps be taken to cancel my name from the official list of candidates.\\nI understand the importance of the election process and the responsibility that comes with running for public office. It is with regret that I find myself in a position where I must withdraw, but I believe it is in the best interest of the community and the electoral process.\\n I assure you that this decision has not been made lightly, and I remain committed to supporting the democratic process in any capacity possible.\\n Please acknowledge receipt of this request and confirm the cancellation of my candidacy at your earliest convenience. If there are any formalities or procedures I need to follow to complete this process, kindly provide guidance, and I will ensure prompt compliance. \\n Thank you for your attention to this matter. I apologize for any inconvenience caused and appreciate your understanding.\\n \\n Yours Sincerely \\n ${var87}', 39),
(17, '${var1} \\n ${var2} \\n ${var3} \\n ${var4} \\n\\n ${var6} \\n ${var7} \\n\\n \\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t Subject : ${subtitlemain}\\n \\n Dear  ${var6} \\n \\u200B\\t I hope this letter finds you well. I am writing to request a renewal of my prescription for  ${var8}, which I have been taking under your care for ${var5}. As my current prescription is nearing its expiration date, I am reaching out to ensure continuity of treatment.\\n I understand the importance of regular check-ups and would be more than willing to schedule an appointment at your earliest convenience to discuss my treatment plan and any adjustments that may be necessary. Please let me know if you require any further information or if there are any specific protocols I should follow regarding this renewal request.\\n I sincerely appreciate your attention to this matter and the care you have provided me with thus far. Your guidance and expertise have been invaluable in managing my health, and I trust your judgment in determining the best course of action regarding my medication. \\nThank you for your time and consideration. I look forward to hearing from you soon. \\n\\n Warm regards,\\n ${var1}', 43),
(18, '${var97} \\n ${var98} \\n ${var99} \\n ${var100} \\n\\n ${var101} \\n ${var102} \\n\\n \\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t Subject : ${subtitlemain} \\n\\n Dear  ${var101} \\n \\u200B\\t I hope this letter finds you well. I am writing to request a copy of my medical records maintained by your healthcare facility. As a patient under your care, I believe it is essential to have access to my complete medical history for personal reference and to facilitate continuity of care. \\n Please find below the details necessary for processing my request:\\n Patient Name: ${var103} \\n Date of Birth: ${var104} \\n Medical Record Number : ${var105} \\n Dates of Treatment:  ${var106} \\n  I understand that there may be administrative fees associated with the duplication of medical records. Please inform me of any applicable charges and the preferred method of payment.\\n Additionally, if there are any specific forms or procedures required to fulfill this request, please do not hesitate to provide instructions, and I will promptly comply with the necessary requirements. \\n I appreciate your attention to this matter and your assistance in facilitating the release of my medical records. Should you require any further information or clarification, please feel free to contact me at your earliest convenience. \\n Thank you for your prompt attention to this request.\\n \\n Yours Sincerely \\n ${var97}', 40),
(19, '${var1} \\n ${var2} \\n ${var3} \\n ${var4} \\n\\n ${var7} \\n ${var8}\\n ${var9} \\n ${var10} \\n\\n \\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t Subject : ${subtitlemain} \\n\\n Dear  ${var7} \\n \\u200B\\t I am writing to formally tender my resignation from my position as ${var5} at ${var9}, effective ${var6} \\n Please accept this letter as formal notification of my decision to resign from ${var9}. I have valued my time here and have made this decision after careful consideration and reflection. \\n I am committed to ensuring a smooth transition during the remainder of my tenure. I am willing to assist in training my replacement, documenting processes, and completing any outstanding tasks to the best of my ability. \\n I would like to express my gratitude for the opportunities I have been given during my time at ${var9}. I have learned a great deal and have appreciated the support of my colleagues and supervisors.\\n Thank you for your understanding. I wish ${var9} continued success in the future.\\n\\n Yours Sincerely \\n ${var1}', 37),
(20, '${var1} \\n ${var2} \\n ${var3} \\n ${var4} \\n\\n ${var6} \\n ${var7}\\n ${var8} \\n ${var9} \\n\\n \\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t\\u200B\\t Subject : ${subtitlemain} \\n\\n Dear ${var6} \\n \\u200B\\t I am writing to formally request a transfer to  ${var5}. I believe this move aligns better with my career goals and would allow me to contribute more effectively to ${var8}. I have discussed this with my supervisor, and I am eager to work closely with both teams for a smooth transition. Thank you for considering my request. \\n\\n Yours Sincerely \\n ${var1}', 34);

-- --------------------------------------------------------

--
-- Table structure for table `letter_title`
--

DROP TABLE IF EXISTS `letter_title`;
CREATE TABLE IF NOT EXISTS `letter_title` (
  `title_id` int NOT NULL AUTO_INCREMENT,
  `title_name` text,
  `icon_name` text,
  PRIMARY KEY (`title_id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `letter_title`
--

INSERT INTO `letter_title` (`title_id`, `title_name`, `icon_name`) VALUES
(1, 'Bank Letters', 'bank'),
(2, 'School/College Letters', 'book-half'),
(3, 'Business Letters', 'briefcase'),
(4, 'Family Letters', 'house'),
(5, 'Complaint Letters', 'pencil-square'),
(6, 'Government Letters', 'vector-pen'),
(26, 'Medical Letters', 'file-medical'),
(8, 'Job Applications', 'person-square');

-- --------------------------------------------------------

--
-- Table structure for table `sub_title`
--

DROP TABLE IF EXISTS `sub_title`;
CREATE TABLE IF NOT EXISTS `sub_title` (
  `SRNO` int NOT NULL AUTO_INCREMENT,
  `subtitle` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `title_id` int DEFAULT NULL,
  `no_of_var` int NOT NULL,
  `modal_name` text,
  PRIMARY KEY (`SRNO`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sub_title`
--

INSERT INTO `sub_title` (`SRNO`, `subtitle`, `title_id`, `no_of_var`, `modal_name`) VALUES
(10, 'Application for ATM Card', 1, 4, 'bk_chk_atm'),
(9, 'Letter for issuing bank statement.', 1, 6, 'bk_stmt'),
(13, 'Request for Fee Concession', 2, 8, 'Concession'),
(12, 'Application for Admission', 2, 5, 'Admission'),
(16, 'Appointment for Business Meeting', 3, 15, 'Meeting'),
(17, 'Congratulations on Your Promotion!', 3, 6, 'Promotion'),
(19, 'Birthday Letter', 4, 2, 'Birth'),
(23, 'Service Complaint', 5, 7, 'Service'),
(24, 'Noise Disturbance Complaint', 5, 4, 'Noise'),
(37, 'Resignation', 8, 10, 'Resignation'),
(38, 'Tax related Inquiry', 6, 10, 'Tax'),
(43, 'Prescription Renewal Request', 26, 8, 'Renewal'),
(40, 'Medical Records Request', 26, 10, 'Records'),
(39, 'To cancel the name for the upcoming Gram panchayat election', 6, 10, 'election'),
(34, 'Transfer Department Request ', 8, 9, 'Transfer'),
(35, 'Letter for issue of a new cheque book.', 1, 4, 'bk_chk_atm');

-- --------------------------------------------------------

--
-- Table structure for table `userdata`
--

DROP TABLE IF EXISTS `userdata`;
CREATE TABLE IF NOT EXISTS `userdata` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` text NOT NULL,
  `email` text NOT NULL,
  `password` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `userdata`
--

INSERT INTO `userdata` (`user_id`, `username`, `email`, `password`) VALUES
(4, 'AnilTaur99', 'aniltaur9921@gmail.com', '1234');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
