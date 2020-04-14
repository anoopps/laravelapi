-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2020 at 11:52 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pulse_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `ch_pulse_address`
--

CREATE TABLE `ch_pulse_address` (
  `id` int(11) NOT NULL,
  `addr_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `addr_type` int(11) NOT NULL,
  `addresses` text DEFAULT NULL,
  `city` varchar(250) NOT NULL,
  `state` varchar(250) NOT NULL,
  `country` varchar(250) NOT NULL,
  `zip_code` varchar(250) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `partner_sys_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='address type as shipping or  permanent';

--
-- Dumping data for table `ch_pulse_address`
--

INSERT INTO `ch_pulse_address` (`id`, `addr_id`, `patient_id`, `addr_type`, `addresses`, `city`, `state`, `country`, `zip_code`, `status`, `created_date`, `created_by`, `modified_date`, `modified_by`, `partner_sys_id`) VALUES
(1, 1, 1, 1, '16 Sarget Road, Sandown, NH ', 'amrtsir', 'Rajastan', 'India', '03873', 1, '2020-03-23 15:45:10', 20, NULL, NULL, 1246),
(2, 2, 1, 1, '16 Sarget Road, Sandown, NH ', 'amrtsir', 'Rajastan', 'India', '03873', 1, '2020-03-23 15:48:11', 20, NULL, NULL, 1246),
(3, 3, 3, 1, '16 Sarget Road, Sandown, NH ', 'amrtsir', 'Rajastan', 'India', '03873', 1, '2020-03-23 15:48:11', 20, NULL, NULL, 1290),
(4, 4, 4, 1, '16 Sarget Road, Sandown, NH ', 'amrtsir', 'Rajastan', 'India', '03873', 1, '2020-03-23 15:48:11', 20, NULL, NULL, 1350),
(5, 5, 5, 1, '16 Sarget Road, Sandown, NH ', 'amrtsir', 'Rajastan', 'India', '03873', 1, '2020-03-23 15:48:11', 20, NULL, NULL, 1320);

-- --------------------------------------------------------

--
-- Table structure for table `ch_pulse_address_type`
--

CREATE TABLE `ch_pulse_address_type` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='address type as shipping or  permanent';

--
-- Dumping data for table `ch_pulse_address_type`
--

INSERT INTO `ch_pulse_address_type` (`id`, `name`, `created_date`, `created_by`, `modified_date`, `modified_by`, `status`) VALUES
(1, 'Shipping Address', '2020-03-23 15:16:34', 20, '2020-03-23 00:00:00', 20, 1),
(2, 'Permanant Address', '2020-03-23 15:16:34', 20, '2020-03-23 00:00:00', 20, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ch_pulse_allergy`
--

CREATE TABLE `ch_pulse_allergy` (
  `id` int(11) NOT NULL,
  `allergy_name` varchar(250) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `partner_sys_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ch_pulse_blog_subject`
--

CREATE TABLE `ch_pulse_blog_subject` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `partner_sys_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ch_pulse_category`
--

CREATE TABLE `ch_pulse_category` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `code` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ch_pulse_diagnosis`
--

CREATE TABLE `ch_pulse_diagnosis` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `partner_sys_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ch_pulse_document_category`
--

CREATE TABLE `ch_pulse_document_category` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ch_pulse_document_class`
--

CREATE TABLE `ch_pulse_document_class` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ch_pulse_edocs`
--

CREATE TABLE `ch_pulse_edocs` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `filename` text NOT NULL,
  `file_path` text NOT NULL,
  `webdescription` text DEFAULT NULL,
  `document_type` varchar(250) NOT NULL,
  `document_category` int(11) DEFAULT NULL,
  `document_class` int(11) DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ch_pulse_location`
--

CREATE TABLE `ch_pulse_location` (
  `id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `location_name` varchar(250) NOT NULL,
  `abbreviation` varchar(150) DEFAULT NULL,
  `type` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `partner_sys_id` int(11) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ch_pulse_location`
--

INSERT INTO `ch_pulse_location` (`id`, `location_id`, `location_name`, `abbreviation`, `type`, `status`, `partner_sys_id`, `created_date`, `created_by`, `modified_date`, `modified_by`) VALUES
(1, 104, 'Alice Peck Day Hospital', 'APD', 0, 1, 0, '0000-00-00 00:00:00', 0, NULL, NULL),
(2, 47, 'Anna Jaques Hospital', 'AJH', 0, 1, 0, '0000-00-00 00:00:00', 0, NULL, NULL),
(3, 50, 'Beth Israel - East', 'BIE', 0, 0, 0, '0000-00-00 00:00:00', 0, NULL, NULL),
(4, 138, 'Beth Israel - West', 'BIDMC', 0, 1, 0, '0000-00-00 00:00:00', 0, NULL, NULL),
(5, 145, 'Beth Israel Deaconess Hospital - Needham', 'BIDHN', 0, 1, 0, '0000-00-00 00:00:00', 0, NULL, NULL),
(6, 146, 'Beth Israel Deaconess Hospital-Milton', 'BIDHM', 0, 1, 0, '0000-00-00 00:00:00', 0, NULL, NULL),
(7, 51, 'Beverly Hospital', 'BEVH', 0, 1, 0, '0000-00-00 00:00:00', 0, NULL, NULL),
(8, 110, 'Boston Medical Center', 'BMC', 0, 1, 0, '0000-00-00 00:00:00', 0, NULL, NULL),
(9, 64, 'Bridgton Hospital', 'BH', 0, 1, 0, '0000-00-00 00:00:00', 0, NULL, NULL),
(10, 42, 'BWH Assignment 1', 'BWH', 0, 1, 0, '0000-00-00 00:00:00', 0, NULL, NULL),
(11, 79, 'BWH Assignment 2', 'BWH', 0, 1, 0, '0000-00-00 00:00:00', 0, NULL, NULL),
(12, 112, 'BWH Assignment 3', 'BWH', 0, 1, 0, '0000-00-00 00:00:00', 0, NULL, NULL),
(13, 143, 'Brigham & Woman\'s Physicians Org', 'BWPO', 0, 1, 0, '0000-00-00 00:00:00', 0, NULL, NULL),
(14, 147, 'Beth Israel Deaconess - Plymouth', 'BIDHP', 0, 0, 0, '0000-00-00 00:00:00', 0, NULL, NULL),
(25, 151, 'BWH assignment 4 ', 'BWH', 0, 1, 0, '2020-04-06 00:00:00', 1, NULL, NULL),
(26, 83, 'BWH Out Patient', 'BWH', 0, 1, 0, '2020-04-06 00:00:00', 1, NULL, NULL),
(27, 52, 'Cape Cod Hospital', 'CCH', 0, 1, 0, '2020-04-06 00:00:00', 1, NULL, NULL),
(28, 35, 'Catholic Medical Center', 'CCTH', 0, 1, 0, '2020-04-06 00:00:00', 1, NULL, NULL),
(29, 22, 'Central Maine Medical Center', 'CMMC', 0, 1, 0, '2020-04-06 00:00:00', 1, NULL, NULL),
(104, 95, 'Alice Peck Day Hospital', 'APD', 1, 1, 206, '2020-03-31 18:30:49', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ch_pulse_lov`
--

CREATE TABLE `ch_pulse_lov` (
  `id` int(11) NOT NULL,
  `lov_code` int(11) NOT NULL,
  `lov_name` varchar(250) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `is_required` tinyint(1) NOT NULL,
  `is_default` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='all List Of Items ';

-- --------------------------------------------------------

--
-- Table structure for table `ch_pulse_lov_items`
--

CREATE TABLE `ch_pulse_lov_items` (
  `id` int(11) NOT NULL,
  `lov_id` int(11) NOT NULL,
  `item_code` int(11) NOT NULL,
  `item_name` varchar(150) NOT NULL,
  `attribute` varchar(250) DEFAULT NULL,
  `control_type` varchar(200) NOT NULL,
  `sort_order` varchar(250) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ch_pulse_lov_item_link_values`
--

CREATE TABLE `ch_pulse_lov_item_link_values` (
  `id` int(11) NOT NULL,
  `lov_item_id` int(11) NOT NULL,
  `item_value` int(11) NOT NULL,
  `sort_id` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='list of items in the drop down';

-- --------------------------------------------------------

--
-- Table structure for table `ch_pulse_miscellaneous`
--

CREATE TABLE `ch_pulse_miscellaneous` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `partner_sys_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ch_pulse_moa`
--

CREATE TABLE `ch_pulse_moa` (
  `id` int(11) NOT NULL,
  `code` varchar(250) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `partner_sys_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ch_pulse_moa`
--

INSERT INTO `ch_pulse_moa` (`id`, `code`, `description`, `status`, `created_date`, `created_by`, `modified_date`, `modified_by`, `partner_sys_id`) VALUES
(1, 'ENT', 'Elastometric', 1, '2020-03-23 14:54:34', 20, '2020-03-23 00:00:00', 20, 1246),
(2, 'ENTINFY', 'ENT Infinity', 1, '2020-03-23 15:05:51', 20, '2020-03-23 00:00:00', 20, 1290),
(3, 'ENTCoTIN', 'ENT Joey Contin', 1, '2020-03-23 15:05:51', 20, '2020-03-23 00:00:00', 20, 1350),
(4, 'ENTFISH', 'ENT Joey Fish', 1, '2020-03-23 15:05:51', 20, '2020-03-23 00:00:00', 20, 1246),
(5, 'ENTSYR', 'ENT Syr Bolus', 1, '2020-03-23 15:05:51', 20, '2020-03-23 00:00:00', 20, 1246),
(6, 'ENTREGULATOR', 'Flow Regulator', 1, '2020-03-23 15:05:51', 20, '2020-03-23 00:00:00', 20, 1320),
(7, 'IVPUSH', 'IV Push', 1, '2020-03-23 15:05:51', 20, '2020-03-23 00:00:00', 20, 1246),
(8, 'OTH', 'Other', 1, '2020-03-23 15:05:51', 20, '2020-03-23 00:00:00', 20, 1246),
(9, 'AMB', 'Pump Ambulatory', 1, '2020-03-23 15:05:51', 20, '2020-03-23 00:00:00', 20, 1246),
(10, 'ENT', 'Pumb Stationary', 1, '2020-03-23 15:05:51', 20, '2020-03-23 00:00:00', 20, 1246),
(11, 'ENTSYRINGE', 'Pumb Syringe', 1, '2020-03-23 15:05:51', 20, '2020-03-23 00:00:00', 20, 1246),
(12, 'PO', 'PO', 1, '2020-03-23 15:05:51', 20, '2020-03-23 00:00:00', 20, 139),
(13, 'UNKNOWN', 'UnKnown', 1, '2020-03-23 15:05:51', 20, '2020-03-23 00:00:00', 20, 1320);

-- --------------------------------------------------------

--
-- Table structure for table `ch_pulse_notes`
--

CREATE TABLE `ch_pulse_notes` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `blog_subject_id` int(11) NOT NULL,
  `subject` text NOT NULL,
  `body` text DEFAULT NULL COMMENT 'main content of note',
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ch_pulse_notes`
--

INSERT INTO `ch_pulse_notes` (`id`, `patient_id`, `category_id`, `blog_subject_id`, `subject`, `body`, `created_date`, `created_by`, `modified_date`, `modified_by`, `status`) VALUES
(1, 1, 1, 1, 'qLzW', 'AHlDPx8lwR', '2020-04-13 04:55:34', 20, NULL, NULL, 1),
(2, 1, 1, 1, 'pRLO', '2eQPFGOawH', '2020-04-13 04:55:34', 20, NULL, NULL, 1),
(3, 1, 1, 1, 'TECy', 'D6RDKcLZ5q', '2020-04-13 04:55:34', 20, NULL, NULL, 1),
(4, 1, 1, 1, 'Jy29', 'ItjPoREtW2', '2020-04-13 04:55:34', 20, NULL, NULL, 1),
(5, 1, 1, 1, 'm1te', 'sKwKj6nqTy', '2020-04-13 04:55:34', 20, NULL, NULL, 1),
(6, 1, 1, 1, 'vm16', 'WH7zTscFLG', '2020-04-13 04:55:34', 20, NULL, NULL, 1),
(7, 1, 1, 1, 'cR7t', '6PR4P4a2Ys', '2020-04-13 04:55:34', 20, NULL, NULL, 1),
(8, 1, 1, 1, 'sPfV', 'q2pdIhkSyS', '2020-04-13 04:55:34', 20, NULL, NULL, 1),
(9, 1, 1, 1, 'qaXv', 'TVtLUft785', '2020-04-13 04:55:34', 20, NULL, NULL, 1),
(10, 1, 1, 1, '7Gfw', 'mJaG1MJ79l', '2020-04-13 04:55:34', 20, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ch_pulse_patient`
--

CREATE TABLE `ch_pulse_patient` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `partner_sys_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `middlename` varchar(250) DEFAULT NULL,
  `dob` datetime NOT NULL,
  `precautions` text DEFAULT NULL,
  `roomnumber` varchar(250) NOT NULL,
  `location_id` int(11) NOT NULL,
  `next_followup` datetime NOT NULL,
  `casemanager` varchar(250) DEFAULT NULL,
  `teach_complete` tinyint(1) DEFAULT NULL,
  `teach_reason` text DEFAULT NULL,
  `hospital_discharge_approved` tinyint(1) NOT NULL,
  `hospital_discharge` datetime DEFAULT NULL,
  `cpr_soc` datetime NOT NULL,
  `hospital_chart` varchar(250) NOT NULL,
  `vna_verified` tinyint(1) DEFAULT NULL,
  `vna` text DEFAULT NULL,
  `laisoncomplete` tinyint(1) DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `time_commitment` datetime DEFAULT NULL,
  `referral_date` datetime DEFAULT NULL,
  `patient_status` int(11) NOT NULL,
  `insurance_policy` text DEFAULT NULL,
  `insurance_rep` text DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `site_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ch_pulse_patient`
--

INSERT INTO `ch_pulse_patient` (`id`, `patient_id`, `partner_sys_id`, `customer_id`, `firstname`, `lastname`, `middlename`, `dob`, `precautions`, `roomnumber`, `location_id`, `next_followup`, `casemanager`, `teach_complete`, `teach_reason`, `hospital_discharge_approved`, `hospital_discharge`, `cpr_soc`, `hospital_chart`, `vna_verified`, `vna`, `laisoncomplete`, `last_modified_date`, `modified_by`, `time_commitment`, `referral_date`, `patient_status`, `insurance_policy`, `insurance_rep`, `team_id`, `site_id`) VALUES
(1, 1, 1246, 1024, 'Dennis', 'J', 'Abbott', '1920-01-14 00:00:00', 'Test precautions data', '143', 104, '2020-03-19 00:00:00', 'rob man', 1, 'test teach reason', 1, '2020-03-19 00:00:00', '2020-03-04 00:00:00', 'test hospital ', 0, 'No VNA', 1, '2020-03-17 00:00:00', 20, '2020-03-04 00:00:00', '2020-02-25 00:00:00', 1, '', '', 1, 1),
(2, 2, 1290, 1024, 'Shirley', 'A', 'Abbott', '1920-01-14 00:00:00', 'Test precautions data', '143', 104, '2020-03-19 00:00:00', 'mathais', 1, 'test teach reason', 1, '2020-03-19 00:00:00', '2020-03-04 00:00:00', 'test hospital ', 0, 'No VNA', 1, '2020-03-17 00:00:00', 20, '2020-03-04 00:00:00', '2020-02-25 00:00:00', 1, '', '', 2, 2),
(3, 3, 1350, 1024, 'Dennis', 'J', 'Abbott', '1920-01-14 00:00:00', 'Test precautions data', '143', 104, '2020-03-19 00:00:00', 'Bill sale', 1, 'test teach reason', 1, '2020-03-19 00:00:00', '2020-03-04 00:00:00', 'test hospital ', 0, 'No VNA', 1, '2020-03-17 00:00:00', 20, '2020-03-04 00:00:00', '2020-02-25 00:00:00', 1, '', '', 3, 3),
(4, 4, 1320, 1024, 'Melanie', 'D', 'Abdenior', '1920-01-14 00:00:00', 'Test precautions data', '143', 104, '2020-03-19 00:00:00', 'nick jasson', 1, 'test teach reason', 1, '2020-03-19 00:00:00', '2020-03-04 00:00:00', 'test hospital ', 0, 'No VNA', 1, '2020-03-17 00:00:00', 20, '2020-03-04 00:00:00', '2020-02-25 00:00:00', 1, '', '', 4, 4),
(5, 5, 134, 1024, 'Steve', 'C', 'Ackerman', '1920-01-14 00:00:00', 'Test precautions data', '143', 104, '2020-03-19 00:00:00', 'eric perterson', 1, 'test teach reason', 1, '2020-03-19 00:00:00', '2020-03-04 00:00:00', 'test hospital ', 0, 'No VNA', 1, '2020-03-17 00:00:00', 20, '2020-03-04 00:00:00', '2020-02-25 00:00:00', 1, '', '', 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `ch_pulse_patient_allergy`
--

CREATE TABLE `ch_pulse_patient_allergy` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `allergy_id` int(11) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ch_pulse_patient_chklist`
--

CREATE TABLE `ch_pulse_patient_chklist` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `chklist_item_value_id` int(11) NOT NULL,
  `chklist_item_id` int(11) NOT NULL,
  `chklist_status` tinyint(1) NOT NULL,
  `is_completed` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ch_pulse_patient_diagnosis`
--

CREATE TABLE `ch_pulse_patient_diagnosis` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `diagnosis_id` int(11) NOT NULL,
  `sequence` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ch_pulse_patient_miscellaneous`
--

CREATE TABLE `ch_pulse_patient_miscellaneous` (
  `id` int(11) NOT NULL,
  `miscellaneous_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ch_pulse_patient_status`
--

CREATE TABLE `ch_pulse_patient_status` (
  `id` int(11) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ch_pulse_patient_therapy`
--

CREATE TABLE `ch_pulse_patient_therapy` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `therapy_id` int(11) NOT NULL,
  `MOA_id` int(11) DEFAULT NULL,
  `drug` text DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ch_pulse_patient_workflow`
--

CREATE TABLE `ch_pulse_patient_workflow` (
  `id` int(11) NOT NULL,
  `workflow_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `workflow_status` int(11) NOT NULL,
  `lastupdated_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ch_pulse_patient_workflow`
--

INSERT INTO `ch_pulse_patient_workflow` (`id`, `workflow_id`, `patient_id`, `workflow_status`, `lastupdated_date`, `modified_by`) VALUES
(1, 1, 1, 1, '2020-02-23 00:00:00', NULL),
(2, 2, 2, 1, '2020-02-23 00:00:00', NULL),
(3, 1, 3, 1, '2020-02-23 00:00:00', NULL),
(4, 1, 4, 0, '2020-02-23 00:00:00', NULL),
(5, 1, 5, 1, '2020-02-23 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ch_pulse_site`
--

CREATE TABLE `ch_pulse_site` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `partner_sys_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ch_pulse_site`
--

INSERT INTO `ch_pulse_site` (`id`, `name`, `status`, `created_date`, `created_by`, `modified_date`, `modified_by`, `partner_sys_id`) VALUES
(1, 'Site1', 0, '2020-03-23 16:53:33', 20, NULL, NULL, 1246),
(2, 'Site2', 0, '2020-03-23 16:53:33', 20, NULL, NULL, 1290),
(3, 'site from graphql ', 1, '2020-04-10 17:37:56', 20, NULL, NULL, 206),
(4, 'site from graphql ', 1, '2020-04-10 17:37:57', 20, NULL, NULL, 206),
(5, 'site from graphql ', 1, '2020-04-10 17:38:18', 20, NULL, NULL, 206);

-- --------------------------------------------------------

--
-- Table structure for table `ch_pulse_teams`
--

CREATE TABLE `ch_pulse_teams` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `partner_sys_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ch_pulse_teams`
--

INSERT INTO `ch_pulse_teams` (`id`, `name`, `status`, `created_by`, `created_date`, `modified_by`, `modified_date`, `partner_sys_id`) VALUES
(1, 'Team1', 1, 20, '2020-03-23 17:11:41', NULL, NULL, 1246),
(2, 'Team2', 1, 20, '2020-03-23 17:11:41', NULL, NULL, 1290),
(3, 'Team created from postman', 1, 20, '2020-04-09 08:23:38', NULL, NULL, 2046),
(4, 'Team created from postman', 1, 20, '2020-04-09 08:59:41', NULL, NULL, 2046),
(5, 'Team created from postman', 1, 20, '2020-04-09 09:00:00', NULL, NULL, 2046),
(6, 'Team created from postman', 1, 20, '2020-04-09 09:01:43', NULL, NULL, 2046);

-- --------------------------------------------------------

--
-- Table structure for table `ch_pulse_therapy`
--

CREATE TABLE `ch_pulse_therapy` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `description` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `partner_sys_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ch_pulse_therapy`
--

INSERT INTO `ch_pulse_therapy` (`id`, `name`, `status`, `description`, `created_by`, `created_date`, `modified_by`, `modified_date`, `partner_sys_id`) VALUES
(1, 'ABT', 1, 0, 1, '2020-03-23 09:08:04', 1, '2020-03-23 00:00:00', 1),
(2, 'ANE', 1, 0, 1, '2020-03-23 09:08:04', 1, '2020-03-23 00:00:00', 1),
(3, 'ASIV', 1, 0, 1, '2020-03-23 09:10:37', 1, NULL, 0),
(4, 'ASO', 1, 0, 1, '2020-03-23 09:10:37', 1, NULL, 0),
(5, 'ASP', 1, 0, 1, '2020-03-23 09:08:04', 1, '2020-03-23 00:00:00', 1),
(6, 'ATNF', 1, 0, 1, '2020-03-23 09:08:04', 1, '2020-03-23 00:00:00', 1),
(7, 'BLD', 1, 0, 1, '2020-03-23 09:10:37', 1, NULL, 0),
(8, 'CAR', 1, 0, 1, '2020-03-23 09:10:37', 1, NULL, 0),
(9, 'CHL', 1, 0, 1, '2020-03-23 09:10:37', 1, NULL, 0),
(10, 'CHM', 1, 0, 1, '2020-03-23 09:10:37', 1, NULL, 0),
(11, 'CPD', 1, 0, 1, '2020-03-23 09:10:37', 1, NULL, 0),
(12, 'CPD ABT', 1, 0, 1, '2020-03-23 09:10:37', 1, NULL, 0),
(13, 'CPD BIO', 1, 0, 1, '2020-03-23 09:10:37', 1, NULL, 0),
(14, 'CPD CHM', 1, 0, 1, '2020-03-23 09:10:37', 1, NULL, 0),
(15, 'CPD HYD', 1, 0, 1, '2020-03-23 09:08:04', 1, '2020-03-23 00:00:00', 1),
(16, 'CPD INJ ', 1, 0, 1, '2020-03-23 09:08:04', 1, '2020-03-23 00:00:00', 1),
(17, 'CPD IPC ', 1, 0, 1, '2020-03-23 09:10:37', 1, NULL, 0),
(18, 'CPD TPN', 1, 0, 1, '2020-03-23 09:10:37', 1, NULL, 0),
(19, 'CSF', 1, 0, 1, '2020-03-23 09:10:37', 1, NULL, 0),
(20, 'CTH', 1, 0, 1, '2020-03-23 09:10:37', 1, NULL, 0),
(21, 'CWB ATNF', 1, 0, 1, '2020-03-23 09:10:37', 1, NULL, 0),
(22, 'DIU', 1, 0, 1, '2020-03-23 09:10:37', 1, NULL, 0),
(23, 'DIU PRO', 1, 0, 1, '2020-03-23 09:10:37', 1, NULL, 0),
(24, 'ENT', 1, 0, 1, '2020-03-23 09:10:37', 1, NULL, 0),
(25, 'ENZ', 1, 0, 1, '2020-03-23 09:08:04', 1, '2020-03-23 00:00:00', 1),
(26, 'EPO ', 1, 0, 1, '2020-03-23 09:08:04', 1, '2020-03-23 00:00:00', 1),
(27, 'ESO ', 1, 0, 1, '2020-03-23 09:10:37', 1, NULL, 0),
(28, 'FACT', 1, 0, 1, '2020-03-23 09:10:37', 1, NULL, 0),
(29, 'GRH', 1, 0, 1, '2020-03-23 09:10:37', 1, NULL, 0),
(30, 'IGG', 1, 0, 1, '2020-03-23 09:10:37', 1, NULL, 0),
(31, 'IL2', 1, 0, 1, '2020-03-23 09:10:37', 1, NULL, 0),
(32, 'INJ', 1, 0, 1, '2020-03-23 09:10:37', 1, NULL, 0),
(33, 'INO', 1, 0, 1, '2020-03-23 09:10:37', 1, NULL, 0),
(34, 'INT', 1, 0, 1, '2020-03-23 09:10:37', 1, NULL, 0),
(35, 'IPC', 1, 0, 1, '2020-03-23 09:08:04', 1, '2020-03-23 00:00:00', 1),
(36, 'IPC CLN ', 1, 0, 1, '2020-03-23 09:08:04', 1, '2020-03-23 00:00:00', 1),
(37, 'IRR ', 1, 0, 1, '2020-03-23 09:10:37', 1, NULL, 0),
(38, 'IV', 1, 0, 1, '2020-03-23 09:10:37', 1, NULL, 0),
(39, 'IV LNS', 1, 0, 1, '2020-03-23 09:10:37', 1, NULL, 0),
(40, 'IVO', 1, 0, 1, '2020-03-23 09:10:37', 1, NULL, 0),
(41, 'LMH', 1, 0, 1, '2020-03-23 09:10:37', 1, NULL, 0),
(42, 'MED', 1, 0, 1, '2020-03-23 09:10:37', 1, NULL, 0),
(43, 'MTP', 1, 0, 1, '2020-03-23 09:10:37', 1, NULL, 0),
(44, 'NURS', 1, 0, 1, '2020-03-23 09:10:37', 1, NULL, 0),
(45, 'PNT', 1, 0, 1, '2020-03-23 09:10:37', 1, NULL, 0),
(46, 'RTMED', 1, 0, 1, '2020-03-23 09:10:37', 1, NULL, 0),
(47, 'TPN ', 1, 0, 1, '2020-03-23 09:10:37', 1, NULL, 0),
(48, 'TPN-HmSt', 1, 0, 1, '2020-03-23 09:10:37', 1, NULL, 0),
(49, 'N/A', 1, 0, 1, '2020-03-23 09:10:37', 1, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ch_pulse_workflow`
--

CREATE TABLE `ch_pulse_workflow` (
  `id` int(11) NOT NULL,
  `workflow_code` varchar(250) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ch_pulse_workflow`
--

INSERT INTO `ch_pulse_workflow` (`id`, `workflow_code`, `status`, `sort_order`, `created_date`, `created_by`, `modified_date`, `modified_by`) VALUES
(1, 'LIAISON', 1, 0, '2020-03-23 16:04:06', 20, NULL, NULL),
(2, 'INTAKE', 1, 0, '2020-03-23 16:06:07', 20, NULL, NULL),
(3, 'INSURANCE', 1, 0, '2020-03-23 16:06:07', 20, NULL, NULL),
(4, 'FINAL INSURANCE', 1, 0, '2020-03-23 16:06:07', 20, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_04_10_075329_create_posts_table', 1),
(4, '2020_04_10_075653_create_comments_table', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ch_pulse_address`
--
ALTER TABLE `ch_pulse_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ch_pulse_address_type`
--
ALTER TABLE `ch_pulse_address_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ch_pulse_allergy`
--
ALTER TABLE `ch_pulse_allergy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ch_pulse_blog_subject`
--
ALTER TABLE `ch_pulse_blog_subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ch_pulse_category`
--
ALTER TABLE `ch_pulse_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ch_pulse_document_category`
--
ALTER TABLE `ch_pulse_document_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ch_pulse_document_class`
--
ALTER TABLE `ch_pulse_document_class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ch_pulse_location`
--
ALTER TABLE `ch_pulse_location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ch_pulse_lov`
--
ALTER TABLE `ch_pulse_lov`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ch_pulse_lov_items`
--
ALTER TABLE `ch_pulse_lov_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ch_pulse_lov_item_link_values`
--
ALTER TABLE `ch_pulse_lov_item_link_values`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ch_pulse_miscellaneous`
--
ALTER TABLE `ch_pulse_miscellaneous`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ch_pulse_moa`
--
ALTER TABLE `ch_pulse_moa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ch_pulse_notes`
--
ALTER TABLE `ch_pulse_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ch_pulse_patient`
--
ALTER TABLE `ch_pulse_patient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ch_pulse_patient_chklist`
--
ALTER TABLE `ch_pulse_patient_chklist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ch_pulse_patient_diagnosis`
--
ALTER TABLE `ch_pulse_patient_diagnosis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ch_pulse_patient_miscellaneous`
--
ALTER TABLE `ch_pulse_patient_miscellaneous`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ch_pulse_patient_status`
--
ALTER TABLE `ch_pulse_patient_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ch_pulse_patient_workflow`
--
ALTER TABLE `ch_pulse_patient_workflow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ch_pulse_site`
--
ALTER TABLE `ch_pulse_site`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ch_pulse_teams`
--
ALTER TABLE `ch_pulse_teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ch_pulse_therapy`
--
ALTER TABLE `ch_pulse_therapy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ch_pulse_workflow`
--
ALTER TABLE `ch_pulse_workflow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ch_pulse_address`
--
ALTER TABLE `ch_pulse_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ch_pulse_address_type`
--
ALTER TABLE `ch_pulse_address_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ch_pulse_allergy`
--
ALTER TABLE `ch_pulse_allergy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ch_pulse_blog_subject`
--
ALTER TABLE `ch_pulse_blog_subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ch_pulse_category`
--
ALTER TABLE `ch_pulse_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ch_pulse_document_category`
--
ALTER TABLE `ch_pulse_document_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ch_pulse_document_class`
--
ALTER TABLE `ch_pulse_document_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ch_pulse_location`
--
ALTER TABLE `ch_pulse_location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `ch_pulse_lov`
--
ALTER TABLE `ch_pulse_lov`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ch_pulse_lov_items`
--
ALTER TABLE `ch_pulse_lov_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ch_pulse_lov_item_link_values`
--
ALTER TABLE `ch_pulse_lov_item_link_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ch_pulse_miscellaneous`
--
ALTER TABLE `ch_pulse_miscellaneous`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ch_pulse_moa`
--
ALTER TABLE `ch_pulse_moa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `ch_pulse_notes`
--
ALTER TABLE `ch_pulse_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ch_pulse_patient`
--
ALTER TABLE `ch_pulse_patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ch_pulse_patient_chklist`
--
ALTER TABLE `ch_pulse_patient_chklist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ch_pulse_patient_diagnosis`
--
ALTER TABLE `ch_pulse_patient_diagnosis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ch_pulse_patient_miscellaneous`
--
ALTER TABLE `ch_pulse_patient_miscellaneous`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ch_pulse_patient_status`
--
ALTER TABLE `ch_pulse_patient_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ch_pulse_patient_workflow`
--
ALTER TABLE `ch_pulse_patient_workflow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ch_pulse_site`
--
ALTER TABLE `ch_pulse_site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ch_pulse_teams`
--
ALTER TABLE `ch_pulse_teams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ch_pulse_therapy`
--
ALTER TABLE `ch_pulse_therapy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `ch_pulse_workflow`
--
ALTER TABLE `ch_pulse_workflow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
