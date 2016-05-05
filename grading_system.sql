-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2016 at 01:06 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `grading_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `lab_bee`
--

CREATE TABLE IF NOT EXISTS `lab_bee` (
  `student_id` varchar(20) NOT NULL,
  `grade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lab_chemistry2`
--

CREATE TABLE IF NOT EXISTS `lab_chemistry2` (
  `student_id` varchar(20) NOT NULL,
  `grade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lab_chemsitry`
--

CREATE TABLE IF NOT EXISTS `lab_chemsitry` (
  `student_id` varchar(20) NOT NULL,
  `grade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lab_coa`
--

CREATE TABLE IF NOT EXISTS `lab_coa` (
  `student_id` varchar(20) NOT NULL,
  `grade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lab_comm_present`
--

CREATE TABLE IF NOT EXISTS `lab_comm_present` (
  `student_id` varchar(20) NOT NULL,
  `grade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lab_comm_present`
--

INSERT INTO `lab_comm_present` (`student_id`, `grade`) VALUES
('131070002', 8),
('131070006', 8),
('131070007', 8),
('131070015', 9);

-- --------------------------------------------------------

--
-- Table structure for table `lab_cp`
--

CREATE TABLE IF NOT EXISTS `lab_cp` (
  `student_id` varchar(20) NOT NULL,
  `grade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lab_data_comm_netwrkng`
--

CREATE TABLE IF NOT EXISTS `lab_data_comm_netwrkng` (
  `student_id` varchar(20) NOT NULL,
  `grade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lab_data_struct`
--

CREATE TABLE IF NOT EXISTS `lab_data_struct` (
  `student_id` varchar(20) NOT NULL,
  `grade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lab_data_ware`
--

CREATE TABLE IF NOT EXISTS `lab_data_ware` (
  `student_id` varchar(20) NOT NULL,
  `grade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lab_db_sys`
--

CREATE TABLE IF NOT EXISTS `lab_db_sys` (
  `student_id` varchar(20) NOT NULL,
  `grade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lab_digital_logic_design`
--

CREATE TABLE IF NOT EXISTS `lab_digital_logic_design` (
  `student_id` varchar(20) NOT NULL,
  `grade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lab_distr_comp`
--

CREATE TABLE IF NOT EXISTS `lab_distr_comp` (
  `student_id` varchar(20) NOT NULL,
  `grade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lab_eng_graphics`
--

CREATE TABLE IF NOT EXISTS `lab_eng_graphics` (
  `student_id` varchar(20) NOT NULL,
  `grade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lab_ims`
--

CREATE TABLE IF NOT EXISTS `lab_ims` (
  `student_id` varchar(20) NOT NULL,
  `grade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lab_isl`
--

CREATE TABLE IF NOT EXISTS `lab_isl` (
  `student_id` varchar(20) NOT NULL,
  `grade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lab_isl`
--

INSERT INTO `lab_isl` (`student_id`, `grade`) VALUES
('131070002', 9),
('131070006', 10),
('131070007', 9),
('131070015', 10);

-- --------------------------------------------------------

--
-- Table structure for table `lab_mechanics`
--

CREATE TABLE IF NOT EXISTS `lab_mechanics` (
  `student_id` varchar(20) NOT NULL,
  `grade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lab_mis`
--

CREATE TABLE IF NOT EXISTS `lab_mis` (
  `student_id` varchar(20) NOT NULL,
  `grade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lab_npl`
--

CREATE TABLE IF NOT EXISTS `lab_npl` (
  `student_id` varchar(20) NOT NULL,
  `grade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lab_npl`
--

INSERT INTO `lab_npl` (`student_id`, `grade`) VALUES
('131070002', 9),
('131070006', 9),
('131070007', 10),
('131070015', 10);

-- --------------------------------------------------------

--
-- Table structure for table `lab_ost`
--

CREATE TABLE IF NOT EXISTS `lab_ost` (
  `student_id` varchar(20) NOT NULL,
  `grade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lab_oswl`
--

CREATE TABLE IF NOT EXISTS `lab_oswl` (
  `student_id` varchar(20) NOT NULL,
  `grade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lab_oswl`
--

INSERT INTO `lab_oswl` (`student_id`, `grade`) VALUES
('1', NULL),
('131070002', NULL),
('131070006', NULL),
('131070007', NULL),
('131070015', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lab_physics`
--

CREATE TABLE IF NOT EXISTS `lab_physics` (
  `student_id` varchar(20) NOT NULL,
  `grade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lab_physics2`
--

CREATE TABLE IF NOT EXISTS `lab_physics2` (
  `student_id` varchar(20) NOT NULL,
  `grade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lab_presentation`
--

CREATE TABLE IF NOT EXISTS `lab_presentation` (
  `student_id` varchar(20) NOT NULL,
  `grade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lab_prog_dev_oop`
--

CREATE TABLE IF NOT EXISTS `lab_prog_dev_oop` (
  `student_id` varchar(20) NOT NULL,
  `grade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lab_rts`
--

CREATE TABLE IF NOT EXISTS `lab_rts` (
  `student_id` varchar(20) NOT NULL,
  `grade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lab_sal`
--

CREATE TABLE IF NOT EXISTS `lab_sal` (
  `student_id` varchar(20) NOT NULL,
  `grade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lab_sal`
--

INSERT INTO `lab_sal` (`student_id`, `grade`) VALUES
('131070002', 10),
('131070006', 9),
('131070007', 9),
('131070015', 9);

-- --------------------------------------------------------

--
-- Table structure for table `lab_shsl`
--

CREATE TABLE IF NOT EXISTS `lab_shsl` (
  `student_id` varchar(20) NOT NULL,
  `grade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lab_shsl`
--

INSERT INTO `lab_shsl` (`student_id`, `grade`) VALUES
('131070002', 8),
('131070006', 9),
('131070007', 8),
('131070015', 10);

-- --------------------------------------------------------

--
-- Table structure for table `lab_sml`
--

CREATE TABLE IF NOT EXISTS `lab_sml` (
  `student_id` varchar(20) NOT NULL,
  `grade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lab_sml`
--

INSERT INTO `lab_sml` (`student_id`, `grade`) VALUES
('131070002', NULL),
('131070006', NULL),
('131070007', NULL),
('131070015', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lab_spm`
--

CREATE TABLE IF NOT EXISTS `lab_spm` (
  `student_id` varchar(20) NOT NULL,
  `grade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lab_spm`
--

INSERT INTO `lab_spm` (`student_id`, `grade`) VALUES
('131070002', NULL),
('131070006', NULL),
('131070007', NULL),
('131070015', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lab_workshop`
--

CREATE TABLE IF NOT EXISTS `lab_workshop` (
  `student_id` varchar(20) NOT NULL,
  `grade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lab_workshop2`
--

CREATE TABLE IF NOT EXISTS `lab_workshop2` (
  `student_id` varchar(20) NOT NULL,
  `grade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login_student`
--

CREATE TABLE IF NOT EXISTS `login_student` (
  `user_id` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  `sem` int(11) NOT NULL,
  `branch` varchar(30) NOT NULL,
  `name` varchar(100) NOT NULL,
  `dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_student`
--

INSERT INTO `login_student` (`user_id`, `password`, `sem`, `branch`, `name`, `dob`) VALUES
('131070015', 'd8578edf8458ce06fbc5bb76a58c5c', 6, 'Computer', 'Rahul Jeswani', '1995-12-25'),
('131070007', 'd8578edf8458ce06fbc5bb76a58c5c', 6, 'Computer', 'Pranay Patil', '1995-12-16'),
('131070002', 'd8578edf8458ce06fbc5bb76a58c5c', 6, 'Computer', 'Paras Avkirkar', '1996-03-16'),
('131070006', 'd8578edf8458ce06fbc5bb76a58c5c', 6, 'Computer', 'Parag Pachpute', '1995-12-16');

-- --------------------------------------------------------

--
-- Table structure for table `login_teacher`
--

CREATE TABLE IF NOT EXISTS `login_teacher` (
  `user_id` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  `branch` varchar(30) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_teacher`
--

INSERT INTO `login_teacher` (`user_id`, `password`, `branch`, `name`) VALUES
('teacher1', 'd8578edf8458ce06fbc5bb76a58c5c', 'computer', 'Faculty 1'),
('teacher2', 'd8578edf8458ce06fbc5bb76a58c5c', 'computer', 'Faculty 2'),
('teacher3', 'd8578edf8458ce06fbc5bb76a58c5c', 'computer', 'Faculty 3'),
('teacher4', 'd8578edf8458ce06fbc5bb76a58c5c', 'computer', 'Faculty 4'),
('teacher5', 'd8578edf8458ce06fbc5bb76a58c5c', 'computer', 'Faculty 5'),
('teacher6', 'd8578edf8458ce06fbc5bb76a58c5c', 'computer', 'Faculty 6');

-- --------------------------------------------------------

--
-- Table structure for table `student_attended`
--

CREATE TABLE IF NOT EXISTS `student_attended` (
  `student_id` varchar(20) NOT NULL,
  `teacher_id` varchar(20) NOT NULL,
  `sem` int(11) NOT NULL,
  `attended` int(11) NOT NULL,
  `subject` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_attended`
--

INSERT INTO `student_attended` (`student_id`, `teacher_id`, `sem`, `attended`, `subject`) VALUES
('131070002', 'teacher2', 6, 16, 'Network Security and Privacy'),
('131070006', 'teacher2', 6, 18, 'Network Security and Privacy'),
('131070007', 'teacher2', 6, 15, 'Network Security and Privacy'),
('131070015', 'teacher2', 6, 17, 'Network Security and Privacy'),
('131070006', 'teacher3', 6, 13, 'OO Software and Web Engineering'),
('131070007', 'teacher3', 6, 12, 'OO Software and Web Engineering'),
('131070002', 'teacher3', 6, 11, 'OO Software and Web Engineering'),
('131070015', 'teacher3', 6, 12, 'OO Software and Web Engineering'),
('131070007', 'teacher4', 6, 19, 'Information Storage and Management Systems'),
('131070002', 'teacher4', 6, 16, 'Information Storage and Management Systems'),
('131070006', 'teacher4', 6, 20, 'Information Storage and Management Systems'),
('131070015', 'teacher4', 6, 17, 'Information Storage and Management Systems'),
('131070002', 'teacher5', 6, 9, 'Web Technology'),
('131070006', 'teacher5', 6, 6, 'Web Technology'),
('131070007', 'teacher5', 6, 9, 'Web Technology'),
('131070015', 'teacher5', 6, 5, 'Web Technology'),
('131070002', 'teacher6', 6, 12, 'Image Processing'),
('131070006', 'teacher6', 6, 12, 'Image Processing'),
('131070007', 'teacher6', 6, 12, 'Image Processing'),
('131070015', 'teacher6', 6, 12, 'Image Processing'),
('131070007', 'teacher6', 6, 4, 'Software Project Management Lab'),
('131070002', 'teacher6', 6, 4, 'Software Project Management Lab'),
('131070006', 'teacher6', 6, 4, 'Software Project Management Lab'),
('131070015', 'teacher6', 6, 4, 'Software Project Management Lab'),
('131070002', 'teacher2', 6, 10, 'Information Security Lab'),
('131070006', 'teacher2', 6, 9, 'Information Security Lab'),
('131070007', 'teacher2', 6, 10, 'Information Security Lab'),
('131070015', 'teacher2', 6, 10, 'Information Security Lab'),
('131070002', 'teacher4', 6, 6, 'Storage Management Lab'),
('131070006', 'teacher4', 6, 6, 'Storage Management Lab'),
('131070007', 'teacher4', 6, 6, 'Storage Management Lab'),
('131070015', 'teacher4', 6, 6, 'Storage Management Lab'),
('131070002', 'teacher3', 6, 6, 'OO Software and Web Engineering Lab'),
('131070006', 'teacher3', 6, 6, 'OO Software and Web Engineering Lab'),
('131070007', 'teacher3', 6, 6, 'OO Software and Web Engineering Lab'),
('131070015', 'teacher3', 6, 6, 'OO Software and Web Engineering Lab');

-- --------------------------------------------------------

--
-- Table structure for table `student_spi`
--

CREATE TABLE IF NOT EXISTS `student_spi` (
  `student_id` varchar(20) NOT NULL,
  `spi1` float DEFAULT NULL,
  `spi2` float DEFAULT NULL,
  `spi3` float DEFAULT NULL,
  `spi4` float DEFAULT NULL,
  `spi5` float DEFAULT NULL,
  `spi6` float DEFAULT NULL,
  `spi7` float DEFAULT NULL,
  `spi8` float DEFAULT NULL,
  `curr_cpi` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_spi`
--

INSERT INTO `student_spi` (`student_id`, `spi1`, `spi2`, `spi3`, `spi4`, `spi5`, `spi6`, `spi7`, `spi8`, `curr_cpi`) VALUES
('131070002', 8.12, 8.34, 8.65, 8.98, 8.42, NULL, NULL, NULL, 8.5),
('131070006', 8.7, 8.65, 8.21, 8.45, 8.81, NULL, NULL, NULL, 8.56),
('131070007', 8.25, 8.52, 8.42, 8.63, 8.39, NULL, NULL, NULL, 8.44),
('131070015', 9.67, 9.34, 9.56, 9.2, 9.12, NULL, NULL, NULL, 9.37);

-- --------------------------------------------------------

--
-- Table structure for table `subject_list`
--

CREATE TABLE IF NOT EXISTS `subject_list` (
  `id` int(11) NOT NULL,
  `branch` varchar(30) NOT NULL,
  `sem` int(11) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `type` int(11) NOT NULL,
  `credits` float NOT NULL,
  `table_name` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject_list`
--

INSERT INTO `subject_list` (`id`, `branch`, `sem`, `subject`, `type`, `credits`, `table_name`) VALUES
(1, 'computer', 1, 'Applied Physics I', 1, 3, 'sub_physics'),
(3, 'computer', 1, 'Applied Chemistry 1', 1, 3, 'sub_chemistry'),
(4, 'computer', 1, 'Mathematics for Engg 1', 1, 4, 'sub_maths1'),
(5, 'computer', 2, 'Basic Electrical Engg', 1, 4, 'sub_bee'),
(6, 'computer', 2, 'Computer Programming Proble Solving', 1, 4, 'sub_cp'),
(7, 'computer', 1, 'Engg Mechanics', 1, 4, 'sub_mechanics'),
(8, 'computer', 1, 'Engg Graphics', 1, 4, 'sub_eng_graphics'),
(9, 'computer', 2, 'Applied Physics II', 1, 3, 'sub_physics2'),
(10, 'computer', 2, 'Applied Chemistry II', 1, 3, 'sub_chemistry2'),
(11, 'computer', 2, 'Mathematics for Engg II', 1, 4, 'sub_maths2'),
(12, 'computer', 1, 'Elements of Civil Engg', 1, 2, 'sub_ece'),
(13, 'computer', 2, 'Elements of Mechanical Engg', 1, 2, 'sub_eme'),
(14, 'computer', 3, 'Mathematics for Computer Engineering I', 1, 4, 'sub_maths3'),
(15, 'computer', 3, 'Discrete Mathematics', 1, 4, 'sub_comps_discrete_maths'),
(16, 'computer', 3, 'Environmental Studies', 1, 4, 'sub_env'),
(17, 'computer', 3, 'Data Structures', 1, 3, 'sub_comps_dsa'),
(18, 'computer', 3, 'Program Development using Object Oriented Paradigm', 1, 3, 'sub_comps_program_dev_oop'),
(19, 'computer', 3, 'Digital Logic Design', 1, 3, 'sub_comps_digital_logic_design'),
(20, 'computer', 4, 'Mathematics for Computer Engineering II', 1, 4, 'sub_maths4'),
(21, 'computer', 4, 'Algorithm Design', 1, 4, 'sub_comps_algo_design'),
(22, 'computer', 4, 'Theory of Computer Science', 1, 4, 'sub_comps_theory_cs'),
(23, 'computer', 4, 'Data Communication and Networking', 1, 3, 'sub_comps_data_comm_netwrkng'),
(24, 'computer', 4, 'Computer Organization and Architecture', 1, 3, 'sub_comps_coa'),
(25, 'computer', 4, 'Fundamentals of Database Systems', 1, 3, 'sub_comps_fundamental_db_sys'),
(26, 'computer', 5, 'Microprocessor and Microcontroller', 1, 3, 'sub_comps_mpmc'),
(27, 'computer', 5, 'Software Engineering', 1, 3, 'sub_comps_se'),
(28, 'computer', 5, 'System  Programming and Compiler Construction', 1, 4, 'sub_comps_spcc'),
(29, 'computer', 5, 'Java Network Programming', 1, 4, 'sub_comps_jnp'),
(30, 'computer', 5, 'Database Management Systems', 1, 4, 'sub_comps_dbms'),
(31, 'computer', 6, 'OO Software and Web Engineering', 1, 3, 'sub_comps_oswe'),
(32, 'computer', 6, 'Information Storage and Management Systems', 1, 3, 'sub_comps_isms'),
(33, 'computer', 6, 'Web Technology', 1, 4, 'sub_comps_wt'),
(34, 'computer', 6, 'Network Security and Privacy', 1, 4, 'sub_comps_nsp'),
(35, 'computer', 6, 'Image Processing', 1, 4, 'sub_comps_ip'),
(37, 'computer', 7, 'Real Time Systems', 1, 3, 'sub_comps_rts'),
(38, 'computer', 7, 'Human Computer Interaction', 1, 3, 'sub_comps_hci'),
(39, 'computer', 7, 'Distributed Algorithms', 1, 4, 'sub_comps_dist_algo'),
(40, 'computer', 7, 'Data Warehousing, Tools and Technologies', 1, 4, 'sub_comps_data_warehsng'),
(41, 'computer', 7, 'Software Architecture', 1, 4, 'sub_comps_soft_arch'),
(42, 'computer', 7, 'Cloud computing and security', 1, 4, 'sub_comps_cloud_comp'),
(43, 'computer', 7, 'Service oriented architecture', 1, 4, 'sub_comps_soa'),
(44, 'computer', 8, 'Software Testing and Quality Assurance', 1, 3, 'sub_comps_stqa'),
(45, 'computer', 8, 'Advanced DBMS', 1, 3, 'sub_comps_advs_dbms'),
(46, 'computer', 8, 'Multimedia Systems,Tools and Technologies', 1, 4, 'sub_comps_multimedia_sys'),
(47, 'computer', 8, 'Intelligent System and Mining', 1, 4, 'sub_comps_is_mining'),
(48, 'computer', 8, 'E-commerce and enterprise resource planning', 1, 4, 'sub_comps_e_comm'),
(49, 'computer', 8, 'Computer Simulation and modelling', 1, 4, 'sub_comps_comp_simu_modelng'),
(50, 'computer', 8, 'Mobile computing', 1, 4, 'sub_comps_mbl_comptng'),
(51, 'computer', 1, 'Applied Physics I Laboratory', 2, 0.75, 'lab_physics'),
(52, 'computer', 1, 'Applied Chemistry I Lab', 2, 0.75, 'lab_chemsitry'),
(53, 'computer', 1, 'Engineering Graphics Lab', 2, 1, 'lab_eng_graphics'),
(54, 'computer', 1, 'Engineering Mechanics Lab', 2, 1, 'lab_mechanics'),
(55, 'computer', 1, 'Workshop Practice', 2, 1.5, 'lab_workshop'),
(56, 'computer', 2, 'Applied Physics II Laboratory', 2, 0.75, 'lab_physics2'),
(57, 'computer', 2, 'Applied Chemistry II Laboratory', 2, 0.75, 'lab_chemistry2'),
(58, 'computer', 2, 'Computer programming and problem solving Lab', 2, 1, 'lab_cp'),
(59, 'computer', 2, 'Basic Electrical Engineering Lab', 2, 1, 'lab_bee'),
(60, 'computer', 2, 'Workshop Practice', 2, 1.5, 'lab_workshop2'),
(61, 'computer', 3, 'Data Structures Lab', 2, 1, 'lab_data_struct'),
(62, 'computer', 3, 'Program Development using Object Oriented Paradigm Lab', 2, 1, 'lab_prog_dev_oop'),
(64, 'computer', 3, 'Digital Logic Design Lab', 2, 1, 'lab_digital_logic_design'),
(65, 'computer', 4, 'Data Communication and Networking Lab', 2, 1, 'lab_data_comm_netwrkng'),
(66, 'computer', 4, 'Computer Organization and Architecture Lab', 2, 1, 'lab_coa'),
(67, 'computer', 4, 'Fundamentals of Database Systems  Lab', 2, 1, 'lab_db_sys'),
(68, 'computer', 4, 'Presentation and Communication Skills', 2, 2, 'lab_presentation'),
(69, 'computer', 4, 'Open Source Technologies', 2, 2, 'lab_ost'),
(70, 'computer', 5, 'System Hardware and software Lab', 2, 1.5, 'lab_shsl'),
(71, 'computer', 5, 'Network Programming Lab', 2, 1.5, 'lab_npl'),
(73, 'computer', 5, 'Communication Presentation Skills Lab', 2, 1.5, 'lab_comm_present'),
(74, 'computer', 6, 'OO Software and Web Engineering Lab', 2, 1.5, 'lab_oswl'),
(75, 'computer', 6, 'Storage Management Lab', 2, 1.5, 'lab_sml'),
(76, 'computer', 6, 'Information Security Lab', 2, 1.5, 'lab_isl'),
(77, 'computer', 6, 'Software Project Management Lab', 2, 1.5, 'lab_spm'),
(78, 'computer', 7, 'Real Time System Lab', 2, 1.5, 'lab_rts'),
(79, 'computer', 7, 'Distributed   Computing Lab', 2, 1.5, 'lab_distr_comp'),
(80, 'computer', 7, 'Data Warehousing, Tools and Technologies', 2, 2, 'lab_data_ware'),
(81, 'computer', 8, 'MIS LAB', 2, 1.5, 'lab_mis'),
(82, 'computer', 8, 'Intelligent Multimedia System Lab', 2, 1.5, 'lab_ims'),
(83, 'computer', 5, 'Software Architecture Lab', 2, 1.5, 'lab_sal');

-- --------------------------------------------------------

--
-- Table structure for table `sub_bee`
--

CREATE TABLE IF NOT EXISTS `sub_bee` (
  `student_id` varchar(20) NOT NULL,
  `ta` int(11) DEFAULT NULL,
  `ist1` int(11) DEFAULT NULL,
  `ist2` int(11) DEFAULT NULL,
  `ese` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sub_chemistry`
--

CREATE TABLE IF NOT EXISTS `sub_chemistry` (
  `student_id` varchar(20) NOT NULL,
  `ta` int(11) DEFAULT NULL,
  `ist1` int(11) DEFAULT NULL,
  `ist2` int(11) DEFAULT NULL,
  `ese` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sub_chemistry2`
--

CREATE TABLE IF NOT EXISTS `sub_chemistry2` (
  `student_id` varchar(20) NOT NULL,
  `ta` int(11) DEFAULT NULL,
  `ist1` int(11) DEFAULT NULL,
  `ist2` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sub_comps_advs_dbms`
--

CREATE TABLE IF NOT EXISTS `sub_comps_advs_dbms` (
  `student_id` varchar(20) NOT NULL,
  `ta` int(11) DEFAULT NULL,
  `ist1` int(11) DEFAULT NULL,
  `ist2` int(11) DEFAULT NULL,
  `ese` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sub_comps_algo_design`
--

CREATE TABLE IF NOT EXISTS `sub_comps_algo_design` (
  `student_id` varchar(20) NOT NULL,
  `ta` int(11) DEFAULT NULL,
  `ist1` int(11) DEFAULT NULL,
  `ist2` int(11) DEFAULT NULL,
  `ese` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sub_comps_cloud_comp`
--

CREATE TABLE IF NOT EXISTS `sub_comps_cloud_comp` (
  `student_id` varchar(20) NOT NULL,
  `ta` int(11) DEFAULT NULL,
  `ist1` int(11) DEFAULT NULL,
  `ist2` int(11) DEFAULT NULL,
  `ese` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sub_comps_coa`
--

CREATE TABLE IF NOT EXISTS `sub_comps_coa` (
  `student_id` varchar(20) NOT NULL,
  `ta` int(11) DEFAULT NULL,
  `ist1` int(11) DEFAULT NULL,
  `ist2` int(11) DEFAULT NULL,
  `ese` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sub_comps_comm_skills`
--

CREATE TABLE IF NOT EXISTS `sub_comps_comm_skills` (
  `student_id` varchar(20) NOT NULL,
  `ta` int(11) DEFAULT NULL,
  `ist1` int(11) DEFAULT NULL,
  `ist2` int(11) DEFAULT NULL,
  `ese` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sub_comps_comp_simu_modelng`
--

CREATE TABLE IF NOT EXISTS `sub_comps_comp_simu_modelng` (
  `student_id` varchar(20) NOT NULL,
  `ta` int(11) DEFAULT NULL,
  `ist1` int(11) DEFAULT NULL,
  `ist2` int(11) DEFAULT NULL,
  `ese` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sub_comps_data_comm_netwrkng`
--

CREATE TABLE IF NOT EXISTS `sub_comps_data_comm_netwrkng` (
  `student_id` varchar(20) NOT NULL,
  `ta` int(11) DEFAULT NULL,
  `ist1` int(11) DEFAULT NULL,
  `ist2` int(11) DEFAULT NULL,
  `ese` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sub_comps_data_warehsng`
--

CREATE TABLE IF NOT EXISTS `sub_comps_data_warehsng` (
  `student_id` varchar(20) NOT NULL,
  `ta` int(11) DEFAULT NULL,
  `ist1` int(11) DEFAULT NULL,
  `ist2` int(11) DEFAULT NULL,
  `ese` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sub_comps_dbms`
--

CREATE TABLE IF NOT EXISTS `sub_comps_dbms` (
  `student_id` varchar(20) NOT NULL,
  `ta` int(11) DEFAULT NULL,
  `ist1` int(11) DEFAULT NULL,
  `ist2` int(11) DEFAULT NULL,
  `ese` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_comps_dbms`
--

INSERT INTO `sub_comps_dbms` (`student_id`, `ta`, `ist1`, `ist2`, `ese`, `grade`) VALUES
('131070007', 9, 27, 26, 87, 10),
('131070002', 9, 20, 23, 82, 9),
('131070006', 8, 19, 20, 78, 8),
('131070015', 9, 17, 23, 77, 9);

-- --------------------------------------------------------

--
-- Table structure for table `sub_comps_digital_logic_design`
--

CREATE TABLE IF NOT EXISTS `sub_comps_digital_logic_design` (
  `student_id` varchar(20) NOT NULL,
  `ta` int(11) DEFAULT NULL,
  `ist1` int(11) DEFAULT NULL,
  `ist2` int(11) DEFAULT NULL,
  `ese` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sub_comps_discrete_maths`
--

CREATE TABLE IF NOT EXISTS `sub_comps_discrete_maths` (
  `student_id` varchar(20) NOT NULL,
  `ta` int(11) DEFAULT NULL,
  `ist1` int(11) DEFAULT NULL,
  `ist2` int(11) DEFAULT NULL,
  `ese` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sub_comps_dist_algo`
--

CREATE TABLE IF NOT EXISTS `sub_comps_dist_algo` (
  `student_id` varchar(20) NOT NULL,
  `ta` int(11) DEFAULT NULL,
  `ist1` int(11) DEFAULT NULL,
  `ist2` int(11) DEFAULT NULL,
  `ese` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sub_comps_dsa`
--

CREATE TABLE IF NOT EXISTS `sub_comps_dsa` (
  `student_id` varchar(20) NOT NULL,
  `ta` int(11) DEFAULT NULL,
  `ist1` int(11) DEFAULT NULL,
  `ist2` int(11) DEFAULT NULL,
  `ese` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sub_comps_e_comm`
--

CREATE TABLE IF NOT EXISTS `sub_comps_e_comm` (
  `student_id` varchar(20) NOT NULL,
  `ta` int(11) DEFAULT NULL,
  `ist1` int(11) DEFAULT NULL,
  `ist2` int(11) DEFAULT NULL,
  `ese` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sub_comps_fundamental_db_sys`
--

CREATE TABLE IF NOT EXISTS `sub_comps_fundamental_db_sys` (
  `student_id` varchar(20) NOT NULL,
  `ta` int(11) DEFAULT NULL,
  `ist1` int(11) DEFAULT NULL,
  `ist2` int(11) DEFAULT NULL,
  `ese` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sub_comps_hci`
--

CREATE TABLE IF NOT EXISTS `sub_comps_hci` (
  `student_id` varchar(20) NOT NULL,
  `ta` int(11) DEFAULT NULL,
  `ist1` int(11) DEFAULT NULL,
  `ist2` int(11) DEFAULT NULL,
  `ese` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sub_comps_ip`
--

CREATE TABLE IF NOT EXISTS `sub_comps_ip` (
  `student_id` varchar(20) NOT NULL,
  `ta` int(11) DEFAULT NULL,
  `ist1` int(11) DEFAULT NULL,
  `ist2` int(11) DEFAULT NULL,
  `ese` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_comps_ip`
--

INSERT INTO `sub_comps_ip` (`student_id`, `ta`, `ist1`, `ist2`, `ese`, `grade`) VALUES
('131070007', NULL, 24, NULL, NULL, NULL),
('131070006', NULL, 24, NULL, NULL, NULL),
('131070002', NULL, 22, NULL, NULL, NULL),
('131070015', NULL, 26, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sub_comps_isms`
--

CREATE TABLE IF NOT EXISTS `sub_comps_isms` (
  `student_id` varchar(20) NOT NULL,
  `ta` int(11) DEFAULT NULL,
  `ist1` int(11) DEFAULT NULL,
  `ist2` int(11) DEFAULT NULL,
  `ese` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_comps_isms`
--

INSERT INTO `sub_comps_isms` (`student_id`, `ta`, `ist1`, `ist2`, `ese`, `grade`) VALUES
('131070007', 9, 23, 24, 82, NULL),
('131070002', 10, 23, 30, 84, NULL),
('131070006', 8, 24, 24, 80, NULL),
('131070015', 8, 25, 26, 78, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sub_comps_is_mining`
--

CREATE TABLE IF NOT EXISTS `sub_comps_is_mining` (
  `student_id` varchar(20) NOT NULL,
  `ta` int(11) DEFAULT NULL,
  `ist1` int(11) DEFAULT NULL,
  `ist2` int(11) DEFAULT NULL,
  `ese` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sub_comps_jnp`
--

CREATE TABLE IF NOT EXISTS `sub_comps_jnp` (
  `student_id` varchar(20) NOT NULL,
  `ta` int(11) DEFAULT NULL,
  `ist1` int(11) DEFAULT NULL,
  `ist2` int(11) DEFAULT NULL,
  `ese` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_comps_jnp`
--

INSERT INTO `sub_comps_jnp` (`student_id`, `ta`, `ist1`, `ist2`, `ese`, `grade`) VALUES
('131070007', 8, 23, 27, 87, 9),
('131070002', 8, 23, 23, 78, 9),
('131070006', 9, 25, 29, 92, 10),
('131070015', 9, 27, 25, 84, 9);

-- --------------------------------------------------------

--
-- Table structure for table `sub_comps_mbl_comptng`
--

CREATE TABLE IF NOT EXISTS `sub_comps_mbl_comptng` (
  `student_id` varchar(20) NOT NULL,
  `ta` int(11) DEFAULT NULL,
  `ist1` int(11) DEFAULT NULL,
  `ist2` int(11) DEFAULT NULL,
  `ese` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sub_comps_mpmc`
--

CREATE TABLE IF NOT EXISTS `sub_comps_mpmc` (
  `student_id` varchar(20) NOT NULL,
  `ta` int(11) DEFAULT NULL,
  `ist1` int(11) DEFAULT NULL,
  `ist2` int(11) DEFAULT NULL,
  `ese` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_comps_mpmc`
--

INSERT INTO `sub_comps_mpmc` (`student_id`, `ta`, `ist1`, `ist2`, `ese`, `grade`) VALUES
('131070007', 8, 9, 17, 65, 7),
('131070006', 8, 9, 17, 76, 8),
('131070002', 8, 9, 17, 78, 8),
('131070015', 8, 8, 17, 72, 8);

-- --------------------------------------------------------

--
-- Table structure for table `sub_comps_multimedia_sys`
--

CREATE TABLE IF NOT EXISTS `sub_comps_multimedia_sys` (
  `student_id` varchar(20) NOT NULL,
  `ta` int(11) DEFAULT NULL,
  `ist1` int(11) DEFAULT NULL,
  `ist2` int(11) DEFAULT NULL,
  `ese` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sub_comps_nms`
--

CREATE TABLE IF NOT EXISTS `sub_comps_nms` (
  `student_id` varchar(20) NOT NULL,
  `ta` int(11) DEFAULT NULL,
  `ist1` int(11) DEFAULT NULL,
  `ist2` int(11) DEFAULT NULL,
  `ese` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sub_comps_nsp`
--

CREATE TABLE IF NOT EXISTS `sub_comps_nsp` (
  `student_id` varchar(20) NOT NULL,
  `ta` int(11) DEFAULT NULL,
  `ist1` int(11) DEFAULT NULL,
  `ist2` int(11) DEFAULT NULL,
  `ese` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_comps_nsp`
--

INSERT INTO `sub_comps_nsp` (`student_id`, `ta`, `ist1`, `ist2`, `ese`, `grade`) VALUES
('131070007', 9, 23, 28, 93, 10),
('131070006', 9, 23, 26, 88, 9),
('131070002', 10, 21, 27, 79, 8),
('131070015', 9, 25, 26, 88, 9);

-- --------------------------------------------------------

--
-- Table structure for table `sub_comps_open_src_tech`
--

CREATE TABLE IF NOT EXISTS `sub_comps_open_src_tech` (
  `student_id` varchar(20) NOT NULL,
  `ta` int(11) DEFAULT NULL,
  `ist1` int(11) DEFAULT NULL,
  `ist2` int(11) DEFAULT NULL,
  `ese` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sub_comps_oswe`
--

CREATE TABLE IF NOT EXISTS `sub_comps_oswe` (
  `student_id` varchar(20) NOT NULL,
  `ta` int(11) DEFAULT NULL,
  `ist1` int(11) DEFAULT NULL,
  `ist2` int(11) DEFAULT NULL,
  `ese` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_comps_oswe`
--

INSERT INTO `sub_comps_oswe` (`student_id`, `ta`, `ist1`, `ist2`, `ese`, `grade`) VALUES
('131070007', NULL, 18, 22, NULL, NULL),
('131070006', NULL, 17, 20, NULL, NULL),
('131070002', NULL, 17, 20, NULL, NULL),
('131070015', NULL, 21, 19, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sub_comps_program_dev_oop`
--

CREATE TABLE IF NOT EXISTS `sub_comps_program_dev_oop` (
  `student_id` varchar(20) NOT NULL,
  `ta` int(11) DEFAULT NULL,
  `ist1` int(11) DEFAULT NULL,
  `ist2` int(11) DEFAULT NULL,
  `ese` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sub_comps_rts`
--

CREATE TABLE IF NOT EXISTS `sub_comps_rts` (
  `student_id` varchar(20) NOT NULL,
  `ta` int(11) DEFAULT NULL,
  `ist1` int(11) DEFAULT NULL,
  `ist2` int(11) DEFAULT NULL,
  `ese` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sub_comps_se`
--

CREATE TABLE IF NOT EXISTS `sub_comps_se` (
  `student_id` varchar(20) NOT NULL,
  `ta` int(11) DEFAULT NULL,
  `ist1` int(11) DEFAULT NULL,
  `ist2` int(11) DEFAULT NULL,
  `ese` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_comps_se`
--

INSERT INTO `sub_comps_se` (`student_id`, `ta`, `ist1`, `ist2`, `ese`, `grade`) VALUES
('131070007', 8, 19, 23, 75, 8),
('131070002', 8, 19, 27, 78, 8),
('131070006', 8, 23, 27, 80, 9),
('131070015', 8, 21, 29, 85, 10);

-- --------------------------------------------------------

--
-- Table structure for table `sub_comps_soa`
--

CREATE TABLE IF NOT EXISTS `sub_comps_soa` (
  `student_id` varchar(20) NOT NULL,
  `ta` int(11) DEFAULT NULL,
  `ist1` int(11) DEFAULT NULL,
  `ist2` int(11) DEFAULT NULL,
  `ese` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sub_comps_soft_arch`
--

CREATE TABLE IF NOT EXISTS `sub_comps_soft_arch` (
  `student_id` varchar(20) NOT NULL,
  `ta` int(11) DEFAULT NULL,
  `ist1` int(11) DEFAULT NULL,
  `ist2` int(11) DEFAULT NULL,
  `ese` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sub_comps_spcc`
--

CREATE TABLE IF NOT EXISTS `sub_comps_spcc` (
  `student_id` varchar(20) NOT NULL,
  `ta` int(11) DEFAULT NULL,
  `ist1` int(11) DEFAULT NULL,
  `ist2` int(11) DEFAULT NULL,
  `ese` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_comps_spcc`
--

INSERT INTO `sub_comps_spcc` (`student_id`, `ta`, `ist1`, `ist2`, `ese`, `grade`) VALUES
('131070007', 8, 23, 27, 70, 7),
('131070002', 8, 23, 23, 75, 7),
('131070006', 9, 25, 29, 86, 9),
('131070015', 9, 27, 25, 87, 9);

-- --------------------------------------------------------

--
-- Table structure for table `sub_comps_stqa`
--

CREATE TABLE IF NOT EXISTS `sub_comps_stqa` (
  `student_id` varchar(20) NOT NULL,
  `ta` int(11) DEFAULT NULL,
  `ist1` int(11) DEFAULT NULL,
  `ist2` int(11) DEFAULT NULL,
  `ese` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sub_comps_theory_cs`
--

CREATE TABLE IF NOT EXISTS `sub_comps_theory_cs` (
  `student_id` varchar(20) NOT NULL,
  `ta` int(11) DEFAULT NULL,
  `ist1` int(11) DEFAULT NULL,
  `ist2` int(11) DEFAULT NULL,
  `ese` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sub_comps_wt`
--

CREATE TABLE IF NOT EXISTS `sub_comps_wt` (
  `student_id` varchar(20) NOT NULL,
  `ta` int(11) DEFAULT NULL,
  `ist1` int(11) DEFAULT NULL,
  `ist2` int(11) DEFAULT NULL,
  `ese` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_comps_wt`
--

INSERT INTO `sub_comps_wt` (`student_id`, `ta`, `ist1`, `ist2`, `ese`, `grade`) VALUES
('131070007', NULL, 28, NULL, NULL, NULL),
('131070002', NULL, 28, NULL, NULL, NULL),
('131070006', NULL, 28, NULL, NULL, NULL),
('131070015', NULL, 28, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sub_cp`
--

CREATE TABLE IF NOT EXISTS `sub_cp` (
  `student_id` varchar(20) NOT NULL,
  `ta` int(11) DEFAULT NULL,
  `ist1` int(11) DEFAULT NULL,
  `ist2` int(11) DEFAULT NULL,
  `ese` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sub_ece`
--

CREATE TABLE IF NOT EXISTS `sub_ece` (
  `student_id` varchar(20) NOT NULL,
  `ta` int(11) DEFAULT NULL,
  `ist1` int(11) DEFAULT NULL,
  `ist2` int(11) DEFAULT NULL,
  `ese` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sub_eme`
--

CREATE TABLE IF NOT EXISTS `sub_eme` (
  `student_id` varchar(20) NOT NULL,
  `ta` int(11) DEFAULT NULL,
  `ist1` int(11) DEFAULT NULL,
  `ist2` int(11) DEFAULT NULL,
  `ese` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sub_eng_graphics`
--

CREATE TABLE IF NOT EXISTS `sub_eng_graphics` (
  `student_id` varchar(20) NOT NULL,
  `ta` int(11) DEFAULT NULL,
  `ist1` int(11) DEFAULT NULL,
  `ist2` int(11) DEFAULT NULL,
  `ese` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sub_env`
--

CREATE TABLE IF NOT EXISTS `sub_env` (
  `student_id` varchar(20) NOT NULL,
  `ta` int(11) DEFAULT NULL,
  `ist1` int(11) DEFAULT NULL,
  `ist2` int(11) DEFAULT NULL,
  `ese` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sub_maths1`
--

CREATE TABLE IF NOT EXISTS `sub_maths1` (
  `student_id` varchar(20) NOT NULL,
  `ta` int(11) DEFAULT NULL,
  `ist1` int(11) DEFAULT NULL,
  `ist2` int(11) DEFAULT NULL,
  `ese` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sub_maths2`
--

CREATE TABLE IF NOT EXISTS `sub_maths2` (
  `student_id` varchar(20) NOT NULL,
  `ta` int(11) DEFAULT NULL,
  `ist1` int(11) DEFAULT NULL,
  `ist2` int(11) DEFAULT NULL,
  `ese` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sub_maths3`
--

CREATE TABLE IF NOT EXISTS `sub_maths3` (
  `student_id` varchar(20) NOT NULL,
  `ta` int(11) DEFAULT NULL,
  `ist1` int(11) DEFAULT NULL,
  `ist2` int(11) DEFAULT NULL,
  `ese` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sub_maths4`
--

CREATE TABLE IF NOT EXISTS `sub_maths4` (
  `student_id` varchar(20) NOT NULL,
  `ta` int(11) DEFAULT NULL,
  `ist1` int(11) DEFAULT NULL,
  `ist2` int(11) DEFAULT NULL,
  `ese` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sub_mechanics`
--

CREATE TABLE IF NOT EXISTS `sub_mechanics` (
  `student_id` varchar(20) NOT NULL,
  `ta` int(11) DEFAULT NULL,
  `ist1` int(11) DEFAULT NULL,
  `ist2` int(11) DEFAULT NULL,
  `ese` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sub_physics`
--

CREATE TABLE IF NOT EXISTS `sub_physics` (
  `student_id` varchar(20) NOT NULL,
  `ta` int(11) DEFAULT NULL,
  `ist1` int(11) DEFAULT NULL,
  `ist2` int(11) DEFAULT NULL,
  `ese` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sub_physics2`
--

CREATE TABLE IF NOT EXISTS `sub_physics2` (
  `student_id` varchar(20) NOT NULL,
  `ta` int(11) DEFAULT NULL,
  `ist1` int(11) DEFAULT NULL,
  `ist2` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teaches`
--

CREATE TABLE IF NOT EXISTS `teaches` (
  `teacher_id` varchar(20) NOT NULL,
  `branch` varchar(30) NOT NULL,
  `total_lecs` int(11) NOT NULL,
  `sem` int(11) NOT NULL,
  `subject` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teaches`
--

INSERT INTO `teaches` (`teacher_id`, `branch`, `total_lecs`, `sem`, `subject`) VALUES
('teacher1', 'computer', 34, 6, 'Network Management Systems'),
('teacher2', 'computer', 20, 6, 'Network Security and Privacy'),
('teacher3', 'computer', 13, 6, 'OO Software and Web Engineering'),
('teacher4', 'computer', 20, 6, 'Information Storage and Management Systems'),
('teacher5', 'computer', 9, 6, 'Web Technology'),
('teacher6', 'computer', 12, 6, 'Image Processing'),
('teacher6', 'computer', 5, 6, 'Software Project Management Lab'),
('teacher2', 'computer', 10, 6, 'Information Security Lab'),
('teacher4', 'computer', 7, 6, 'Storage Management Lab'),
('teacher3', 'computer', 7, 6, 'OO Software and Web Engineering Lab');

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE IF NOT EXISTS `uploads` (
  `id` int(11) NOT NULL,
  `branch` varchar(30) DEFAULT NULL,
  `sem` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(10) NOT NULL,
  `uploader_id` varchar(20) NOT NULL,
  `title` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `branch`, `sem`, `date`, `name`, `type`, `uploader_id`, `title`) VALUES
(10, 'Computer', 2, '2016-03-31', 'deploymnt.png', 'png', 'teacher3', 'Deployment Diagram'),
(11, 'Computer', 6, '2016-03-31', 'GRADING SYSTEM.docx', 'docx', 'teacher2', 'GS'),
(12, 'Computer', 6, '2016-03-31', 'indiProbStmnt.pdf', 'pdf', 'teacher2', 'Indi PS'),
(13, 'Computer', 6, '2016-03-31', 'css.ppt', 'ppt', 'teacher2', 'CSS'),
(14, 'Computer', 6, '2016-04-02', 'time_table.jpg', 'jpg', 'teacher2', 'T.Y.Comps Time Table');

-- --------------------------------------------------------

--
-- Table structure for table `workshop2`
--

CREATE TABLE IF NOT EXISTS `workshop2` (
  `student_id` varchar(20) NOT NULL,
  `grade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lab_bee`
--
ALTER TABLE `lab_bee`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `lab_chemistry2`
--
ALTER TABLE `lab_chemistry2`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `lab_chemsitry`
--
ALTER TABLE `lab_chemsitry`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `lab_coa`
--
ALTER TABLE `lab_coa`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `lab_comm_present`
--
ALTER TABLE `lab_comm_present`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `lab_cp`
--
ALTER TABLE `lab_cp`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `lab_data_comm_netwrkng`
--
ALTER TABLE `lab_data_comm_netwrkng`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `lab_data_struct`
--
ALTER TABLE `lab_data_struct`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `lab_data_ware`
--
ALTER TABLE `lab_data_ware`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `lab_db_sys`
--
ALTER TABLE `lab_db_sys`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `lab_digital_logic_design`
--
ALTER TABLE `lab_digital_logic_design`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `lab_distr_comp`
--
ALTER TABLE `lab_distr_comp`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `lab_eng_graphics`
--
ALTER TABLE `lab_eng_graphics`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `lab_ims`
--
ALTER TABLE `lab_ims`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `lab_isl`
--
ALTER TABLE `lab_isl`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `lab_mechanics`
--
ALTER TABLE `lab_mechanics`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `lab_mis`
--
ALTER TABLE `lab_mis`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `lab_npl`
--
ALTER TABLE `lab_npl`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `lab_ost`
--
ALTER TABLE `lab_ost`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `lab_oswl`
--
ALTER TABLE `lab_oswl`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `lab_physics`
--
ALTER TABLE `lab_physics`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `lab_physics2`
--
ALTER TABLE `lab_physics2`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `lab_presentation`
--
ALTER TABLE `lab_presentation`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `lab_prog_dev_oop`
--
ALTER TABLE `lab_prog_dev_oop`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `lab_rts`
--
ALTER TABLE `lab_rts`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `lab_sal`
--
ALTER TABLE `lab_sal`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `lab_shsl`
--
ALTER TABLE `lab_shsl`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `lab_sml`
--
ALTER TABLE `lab_sml`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `lab_spm`
--
ALTER TABLE `lab_spm`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `lab_workshop`
--
ALTER TABLE `lab_workshop`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `lab_workshop2`
--
ALTER TABLE `lab_workshop2`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `login_teacher`
--
ALTER TABLE `login_teacher`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `student_spi`
--
ALTER TABLE `student_spi`
  ADD UNIQUE KEY `student_id` (`student_id`);

--
-- Indexes for table `subject_list`
--
ALTER TABLE `subject_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_chemistry2`
--
ALTER TABLE `sub_chemistry2`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `sub_physics2`
--
ALTER TABLE `sub_physics2`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `workshop2`
--
ALTER TABLE `workshop2`
  ADD PRIMARY KEY (`student_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `subject_list`
--
ALTER TABLE `subject_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=84;
--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
