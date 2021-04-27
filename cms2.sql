-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2021 at 03:05 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms2`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_infos`
--

CREATE TABLE `academic_infos` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `institution` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `board` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pass_year` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol_no` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` int(11) NOT NULL,
  `division_grade` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `major_subjects` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting_order` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `addressinfos`
--

CREATE TABLE `addressinfos` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `temp_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `temp_state` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `temp_country` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_1` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_2` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addressinfos`
--

INSERT INTO `addressinfos` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `students_id`, `address`, `state`, `country`, `temp_address`, `temp_state`, `temp_country`, `home_phone`, `mobile_1`, `mobile_2`, `status`) VALUES
(1, '2020-04-14 01:56:28', '2020-04-14 01:56:28', 1, NULL, 1, 'Flat G27 Al Naseer Square F B Area Karachi', 'SINDH', 'PAKISTAN', 'Flat G27 Al Naseer Square F B Area Karachi', 'SINDH', 'PAKISTAN', NULL, '03323585558', NULL, 1),
(2, '2020-04-23 02:01:01', '2020-04-23 02:01:01', 1, NULL, 2, 'Karachi', 'SINDH', 'PAKISTAN', 'Karachi', 'SINDH', 'PAKISTAN', NULL, '03234534564', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `alert_settings`
--

CREATE TABLE `alert_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `event` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sms` tinyint(1) NOT NULL DEFAULT 1,
  `email` tinyint(1) NOT NULL DEFAULT 1,
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `template` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `alert_settings`
--

INSERT INTO `alert_settings` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `event`, `sms`, `email`, `subject`, `template`, `status`) VALUES
(1, '2020-04-13 01:31:44', '2020-04-13 01:31:44', 1, NULL, 'BirthdayWish', 0, 0, 'Wish Your Birthday', '', 1),
(2, '2020-04-13 01:31:44', '2020-04-13 01:31:44', 1, NULL, 'StudentRegistration', 0, 0, 'Registration Information', 'Dear {first_name}, you are successfully registered in our institution with RegNo.{reg_no}. Thank You.', 1),
(3, '2020-04-13 01:31:44', '2020-04-13 01:31:44', 1, NULL, 'StudentTransfer', 0, 0, 'Transfer Information', '\'Dear Student, we would like to inform you are successfully transferring to {semester}. Thank You.', 1),
(4, '2020-04-13 01:31:44', '2020-04-13 01:31:44', 1, NULL, 'FeeReceive', 0, 0, 'Fees Receive Information', 'Dear Student, we would like to inform you. we received {amount} on {date}. Thank You.', 1),
(5, '2020-04-13 01:31:44', '2020-04-13 01:31:44', 1, NULL, 'BalanceFees', 0, 0, 'Balance Fees Information', 'Dear Student, you have some due fees. please deposit on time. contact account for more information. Thank You.', 1),
(6, '2020-04-13 01:31:44', '2020-04-13 01:31:44', 1, NULL, 'AttendanceConfirmation', 0, 0, 'Attendance Information', 'Dear Guardian, This is to inform you that {{first_name}} is {{status}} on {{date}}.', 1),
(7, '2020-04-13 01:31:44', '2020-04-13 01:31:44', 1, NULL, 'LibraryRegistration', 0, 0, 'Library Registration Information', '', 1),
(8, '2020-04-13 01:31:44', '2020-04-13 01:31:44', 1, NULL, 'LibraryReturnPeriodOver', 0, 0, 'Library Clearance Alert', '', 1),
(9, '2020-04-13 01:31:44', '2020-04-13 01:31:44', 1, NULL, 'HostelRegistration', 0, 0, 'Hostel Registration Information', '', 1),
(10, '2020-04-13 01:31:44', '2020-04-13 01:31:44', 1, NULL, 'HostelShift', 0, 0, 'Hostel Shift Information', '', 1),
(11, '2020-04-13 01:31:44', '2020-04-13 01:31:44', 1, NULL, 'HostelLeave', 0, 0, 'Hostel Leave Information', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

CREATE TABLE `assignments` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `years_id` int(10) UNSIGNED NOT NULL,
  `semesters_id` int(10) UNSIGNED NOT NULL,
  `subjects_id` int(10) UNSIGNED NOT NULL,
  `publish_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assignment_answers`
--

CREATE TABLE `assignment_answers` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `assignments_id` int(10) UNSIGNED NOT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `answer_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approve_status` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `attendees_type` int(11) NOT NULL,
  `link_id` int(10) UNSIGNED NOT NULL,
  `years_id` int(10) UNSIGNED NOT NULL,
  `months_id` int(10) UNSIGNED NOT NULL,
  `day_1` int(11) NOT NULL DEFAULT 0,
  `day_2` int(11) NOT NULL DEFAULT 0,
  `day_3` int(11) NOT NULL DEFAULT 0,
  `day_4` int(11) NOT NULL DEFAULT 0,
  `day_5` int(11) NOT NULL DEFAULT 0,
  `day_6` int(11) NOT NULL DEFAULT 0,
  `day_7` int(11) NOT NULL DEFAULT 0,
  `day_8` int(11) NOT NULL DEFAULT 0,
  `day_9` int(11) NOT NULL DEFAULT 0,
  `day_10` int(11) NOT NULL DEFAULT 0,
  `day_11` int(11) NOT NULL DEFAULT 0,
  `day_12` int(11) NOT NULL DEFAULT 0,
  `day_13` int(11) NOT NULL DEFAULT 0,
  `day_14` int(11) NOT NULL DEFAULT 0,
  `day_15` int(11) NOT NULL DEFAULT 0,
  `day_16` int(11) NOT NULL DEFAULT 0,
  `day_17` int(11) NOT NULL DEFAULT 0,
  `day_18` int(11) NOT NULL DEFAULT 0,
  `day_19` int(11) NOT NULL DEFAULT 0,
  `day_20` int(11) NOT NULL DEFAULT 0,
  `day_21` int(11) NOT NULL DEFAULT 0,
  `day_22` int(11) NOT NULL DEFAULT 0,
  `day_23` int(11) NOT NULL DEFAULT 0,
  `day_24` int(11) NOT NULL DEFAULT 0,
  `day_25` int(11) NOT NULL DEFAULT 0,
  `day_26` int(11) NOT NULL DEFAULT 0,
  `day_27` int(11) NOT NULL DEFAULT 0,
  `day_28` int(11) NOT NULL DEFAULT 0,
  `day_29` int(11) NOT NULL DEFAULT 0,
  `day_30` int(11) NOT NULL DEFAULT 0,
  `day_31` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendance_masters`
--

CREATE TABLE `attendance_masters` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `year` int(10) UNSIGNED NOT NULL,
  `month` int(10) UNSIGNED NOT NULL,
  `day_in_month` int(11) NOT NULL,
  `holiday` int(11) NOT NULL,
  `open` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendance_statuses`
--

CREATE TABLE `attendance_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_class` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendance_statuses`
--

INSERT INTO `attendance_statuses` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `title`, `display_class`, `status`) VALUES
(1, '2020-04-13 01:31:44', '2020-04-13 01:31:44', 1, NULL, 'PRESENT', 'btn-primary', 1),
(2, '2020-04-13 01:31:44', '2020-04-13 01:31:44', 1, NULL, 'ABSENT', 'btn-danger', 1),
(3, '2020-04-13 01:31:44', '2020-04-13 01:31:44', 1, NULL, 'LATE', 'btn-warning', 1),
(4, '2020-04-13 01:31:44', '2020-04-13 01:31:44', 1, NULL, 'LEAVE', 'btn-success', 1),
(5, '2020-04-13 01:31:44', '2020-04-13 01:31:44', 1, NULL, 'HOLIDAY', 'btn-info', 1);

-- --------------------------------------------------------

--
-- Table structure for table `beds`
--

CREATE TABLE `beds` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `hostels_id` int(10) UNSIGNED NOT NULL,
  `rooms_id` int(10) UNSIGNED NOT NULL,
  `bed_number` int(11) NOT NULL,
  `bed_status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bed_statuses`
--

CREATE TABLE `bed_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_class` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bed_statuses`
--

INSERT INTO `bed_statuses` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `title`, `display_class`, `status`) VALUES
(1, '2020-04-13 01:31:44', '2020-04-13 01:31:44', 1, NULL, 'Available', 'btn-success', 1),
(2, '2020-04-13 01:31:44', '2020-04-13 01:31:44', 1, NULL, 'Occupied', 'btn-primary', 1),
(3, '2020-04-13 01:31:44', '2020-04-13 01:31:44', 1, NULL, 'Damage', 'btn-danger', 1),
(4, '2020-04-13 01:31:44', '2020-04-13 01:31:44', 1, NULL, 'UnderConstruction', 'btn-default', 1),
(5, '2020-04-13 01:31:44', '2020-04-13 01:31:44', 1, NULL, 'UnderMaintinance', 'btn-default', 1),
(6, '2020-04-13 01:31:44', '2020-04-13 01:31:44', 1, NULL, 'NeedMaintinance', 'btn-default', 1);

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `book_masters_id` int(10) UNSIGNED NOT NULL,
  `book_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `book_status` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `book_categories`
--

CREATE TABLE `book_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `book_issues`
--

CREATE TABLE `book_issues` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `member_id` int(10) UNSIGNED NOT NULL,
  `book_id` int(10) UNSIGNED NOT NULL,
  `issued_on` datetime NOT NULL,
  `due_date` datetime NOT NULL,
  `return_date` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `book_masters`
--

CREATE TABLE `book_masters` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `isbn_number` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `editor` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categories` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `edition` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `edition_year` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publisher` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_year` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `series` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rack_location` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_pages` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `book_statuses`
--

CREATE TABLE `book_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_class` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_statuses`
--

INSERT INTO `book_statuses` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `title`, `display_class`, `status`) VALUES
(1, '2020-04-13 01:31:44', '2020-04-13 01:31:44', 1, NULL, 'Available', 'btn-success', 1),
(2, '2020-04-13 01:31:44', '2020-04-13 01:31:44', 1, NULL, 'Issued', 'btn-primary', 1),
(3, '2020-04-13 01:31:44', '2020-04-13 01:31:44', 1, NULL, 'Damage', 'btn-danger', 1),
(4, '2020-04-13 01:31:44', '2020-04-13 01:31:44', 1, NULL, 'Lost', 'btn-default', 1);

-- --------------------------------------------------------

--
-- Table structure for table `class_routines`
--

CREATE TABLE `class_routines` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  `subject` int(11) DEFAULT NULL,
  `class_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day` int(11) DEFAULT NULL,
  `start_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `days`
--

CREATE TABLE `days` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `days`
--

INSERT INTO `days` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `title`, `status`) VALUES
(1, '2020-04-13 01:31:44', '2020-04-13 01:31:44', 1, NULL, 'Sunday', 1),
(2, '2020-04-13 01:31:44', '2020-04-13 01:31:44', 1, NULL, 'Monday', 1),
(3, '2020-04-13 01:31:44', '2020-04-13 01:31:44', 1, NULL, 'Tuesday', 1),
(4, '2020-04-13 01:31:44', '2020-04-13 01:31:44', 1, NULL, 'Wednesday', 1),
(5, '2020-04-13 01:31:44', '2020-04-13 01:31:44', 1, NULL, 'Thursday', 1),
(6, '2020-04-13 01:31:44', '2020-04-13 01:31:44', 1, NULL, 'Friday', 1),
(7, '2020-04-13 01:31:44', '2020-04-13 01:31:44', 1, NULL, 'Saturday', 1);

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `member_type` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `member_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `downloads`
--

CREATE TABLE `downloads` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `semesters_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `eating_times`
--

CREATE TABLE `eating_times` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` time DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_settings`
--

CREATE TABLE `email_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `driver` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `host` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `port` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `encryption` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam_mark_ledgers`
--

CREATE TABLE `exam_mark_ledgers` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `exam_schedule_id` int(10) UNSIGNED NOT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `obtain_mark_theory` int(11) DEFAULT NULL,
  `absent_theory` tinyint(1) NOT NULL DEFAULT 0,
  `obtain_mark_practical` int(11) DEFAULT NULL,
  `absent_practical` tinyint(1) NOT NULL DEFAULT 0,
  `sorting_order` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam_schedules`
--

CREATE TABLE `exam_schedules` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `years_id` int(10) UNSIGNED NOT NULL,
  `months_id` int(10) UNSIGNED NOT NULL,
  `exams_id` int(10) UNSIGNED NOT NULL,
  `faculty_id` int(10) UNSIGNED NOT NULL,
  `semesters_id` int(10) UNSIGNED NOT NULL,
  `subjects_id` int(10) UNSIGNED NOT NULL,
  `date` datetime NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `full_mark_theory` int(11) DEFAULT NULL,
  `pass_mark_theory` int(11) DEFAULT NULL,
  `full_mark_practical` int(11) DEFAULT NULL,
  `pass_mark_practical` int(11) DEFAULT NULL,
  `sorting_order` int(10) UNSIGNED NOT NULL,
  `publish_status` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faculties`
--

CREATE TABLE `faculties` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `faculty` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faculties`
--

INSERT INTO `faculties` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `faculty`, `slug`, `status`) VALUES
(1, '2020-04-14 01:52:35', '2020-04-14 01:52:35', 1, NULL, 'BS in Computer Science', 'BS-in-Computer-Science', 1);

-- --------------------------------------------------------

--
-- Table structure for table `faculty_semester`
--

CREATE TABLE `faculty_semester` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `faculty_id` int(10) UNSIGNED NOT NULL,
  `semester_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faculty_semester`
--

INSERT INTO `faculty_semester` (`id`, `created_at`, `updated_at`, `faculty_id`, `semester_id`) VALUES
(1, NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `fee_collections`
--

CREATE TABLE `fee_collections` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `fee_masters_id` int(10) UNSIGNED NOT NULL,
  `date` datetime NOT NULL,
  `paid_amount` int(11) NOT NULL,
  `discount` int(11) DEFAULT NULL,
  `fine` int(11) DEFAULT NULL,
  `payment_mode` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `response` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fee_heads`
--

CREATE TABLE `fee_heads` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `fee_head_title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fee_masters`
--

CREATE TABLE `fee_masters` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `semester` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee_head` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee_due_date` datetime NOT NULL,
  `fee_amount` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `food_categories`
--

CREATE TABLE `food_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `food_items`
--

CREATE TABLE `food_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `foodCategories_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `food_item_food_schedule`
--

CREATE TABLE `food_item_food_schedule` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `food_schedule_id` int(10) UNSIGNED NOT NULL,
  `food_item_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `food_schedules`
--

CREATE TABLE `food_schedules` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `hostels_id` int(10) UNSIGNED NOT NULL,
  `days_id` int(10) UNSIGNED NOT NULL,
  `eating_times_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `institute` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salogan` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `print_header` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `print_footer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedIn` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `googlePlus` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsApp` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skype` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pinterest` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wordpress` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `institute`, `salogan`, `address`, `phone`, `email`, `website`, `favicon`, `logo`, `print_header`, `print_footer`, `facebook`, `twitter`, `linkedIn`, `youtube`, `googlePlus`, `instagram`, `whatsApp`, `skype`, `pinterest`, `wordpress`, `status`) VALUES
(1, '2020-04-14 01:40:01', '2020-04-22 01:32:29', 1, 1, 'Campus Management System', NULL, 'Karachi', '03323585558', 'muhammadhassan1310@gmail.com', 'cms.com.pk', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `grading_scales`
--

CREATE TABLE `grading_scales` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `gradingType_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage_from` int(11) NOT NULL,
  `percentage_to` int(11) NOT NULL,
  `grade_point` int(11) DEFAULT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `grading_scales`
--

INSERT INTO `grading_scales` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `gradingType_id`, `name`, `percentage_from`, `percentage_to`, `grade_point`, `description`, `status`) VALUES
(1, '2020-04-14 01:37:02', '2020-04-14 01:37:02', 1, NULL, 1, 'IU', 100, 100, 4, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `grading_types`
--

CREATE TABLE `grading_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `grading_types`
--

INSERT INTO `grading_types` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `title`, `slug`, `status`) VALUES
(1, '2020-04-14 01:37:02', '2020-04-14 01:37:02', 1, NULL, 'IU', 'IU', 1);

-- --------------------------------------------------------

--
-- Table structure for table `guardian_details`
--

CREATE TABLE `guardian_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `guardian_first_name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guardian_middle_name` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_last_name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guardian_eligibility` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_occupation` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guardian_office` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_office_number` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_residence_number` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_mobile_1` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_mobile_2` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_relation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guardian_address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guardian_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guardian_details`
--

INSERT INTO `guardian_details` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `guardian_first_name`, `guardian_middle_name`, `guardian_last_name`, `guardian_eligibility`, `guardian_occupation`, `guardian_office`, `guardian_office_number`, `guardian_residence_number`, `guardian_mobile_1`, `guardian_mobile_2`, `guardian_email`, `guardian_relation`, `guardian_address`, `guardian_image`, `status`) VALUES
(1, '2020-04-14 01:56:28', '2020-04-14 01:56:28', 1, NULL, 'ABDUL', 'LATIF', 'TAYYAB', NULL, 'JOB', NULL, NULL, NULL, '3454534534', NULL, NULL, 'FATHER', '345345', '', 1),
(2, '2020-04-23 02:01:01', '2020-04-23 02:01:01', 1, NULL, 'ASDAS', NULL, 'ASDAS', NULL, 'ASDAS', NULL, NULL, NULL, '432423423432', NULL, NULL, 'FATHER', 'ASDASD', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hostels`
--

CREATE TABLE `hostels` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warden` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warden_contact` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hostel_meals`
--

CREATE TABLE `hostel_meals` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `hostels_id` int(10) UNSIGNED NOT NULL,
  `days_id` int(10) UNSIGNED NOT NULL,
  `foods_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `library_circulations`
--

CREATE TABLE `library_circulations` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `user_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code_prefix` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `issue_limit_days` int(10) UNSIGNED DEFAULT NULL,
  `issue_limit_books` int(10) UNSIGNED DEFAULT NULL,
  `fine_per_day` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `library_circulations`
--

INSERT INTO `library_circulations` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `user_type`, `slug`, `code_prefix`, `issue_limit_days`, `issue_limit_books`, `fine_per_day`, `status`) VALUES
(1, '2020-04-13 01:31:44', '2020-04-13 01:31:44', 1, NULL, 'Student', 'student', 'STUDLIB', NULL, NULL, NULL, 1),
(2, '2020-04-13 01:31:44', '2020-04-13 01:31:44', 1, NULL, 'Staff', 'staff', 'STALIB', NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `library_members`
--

CREATE TABLE `library_members` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `user_type` int(10) UNSIGNED NOT NULL,
  `member_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_11_06_084909_create_students_table', 1),
(4, '2017_11_06_085106_create_parent_details_table', 1),
(5, '2017_11_06_085135_create_guardian_details_table', 1),
(6, '2017_11_06_085150_create_faculties_table', 1),
(7, '2017_11_06_085202_create_semesters_table', 1),
(8, '2017_11_07_091332_create_faculty_semester_table', 1),
(9, '2017_11_11_120928_create_addressinfos_table', 1),
(10, '2017_11_17_011606_create_documents_table', 1),
(11, '2017_11_18_005300_create_notes_table', 1),
(12, '2017_11_19_055352_create_fee_heads_table', 1),
(13, '2017_11_20_012242_create_fee_masters_table', 1),
(14, '2017_11_21_035458_create_fee_collections_table', 1),
(15, '2017_11_27_010354_create_student_statuses_table', 1),
(16, '2017_11_27_094949_create_book_masters_table', 1),
(17, '2017_11_27_095001_create_books_table', 1),
(18, '2017_11_28_014317_create_book_categories_table', 1),
(19, '2017_11_28_060832_create_book_statuses_table', 1),
(20, '2017_11_29_084116_create_library_circulations_table', 1),
(21, '2017_11_30_015025_create_library_members_table', 1),
(22, '2017_11_30_072329_create_staff_table', 1),
(23, '2017_12_02_010529_create_book_issues_table', 1),
(24, '2017_12_06_005401_create_transaction_heads_table', 1),
(25, '2017_12_06_012542_create_transactions_table', 1),
(26, '2017_12_08_084025_create_payroll_heads_table', 1),
(27, '2017_12_08_090233_create_payroll_masters_table', 1),
(28, '2017_12_08_090813_create_salary_pays_table', 1),
(29, '2017_12_13_084859_create_years_table', 1),
(30, '2017_12_13_084925_create_months_table', 1),
(31, '2017_12_14_062342_create_attendance_masters_table', 1),
(32, '2017_12_14_063449_create_attendances_table', 1),
(33, '2018_02_15_104206_create_settings_table', 1),
(34, '2018_02_18_061426_create_sms_emails_table', 1),
(35, '2018_02_18_061538_create_notices_table', 1),
(36, '2018_03_02_003733_create_grading_types_table', 1),
(37, '2018_03_02_003849_create_grading_scales_table', 1),
(38, '2018_03_02_173947_create_subjects_table', 1),
(39, '2018_03_02_180148_create_semester_subject_table', 1),
(40, '2018_03_03_140508_create_exams_table', 1),
(41, '2018_03_03_140529_create_exam_schedules_table', 1),
(42, '2018_03_03_140543_create_exam_mark_ledgers_table', 1),
(43, '2018_03_08_100236_create_staff_designations_table', 1),
(44, '2018_03_09_155741_create_hostels_table', 1),
(45, '2018_03_10_002019_create_room_types_table', 1),
(46, '2018_03_18_233110_create_rooms_table', 1),
(47, '2018_03_20_175730_create_beds_table', 1),
(48, '2018_03_21_012144_create_bed_statuses_table', 1),
(49, '2018_03_21_181903_create_residents_table', 1),
(50, '2018_03_21_190050_create_resident_histories_table', 1),
(51, '2018_03_26_233817_create_days_table', 1),
(52, '2018_03_27_045931_create_food_categories_table', 1),
(53, '2018_03_27_050051_create_food_items_table', 1),
(54, '2018_03_27_050835_create_hostel_meals_table', 1),
(55, '2018_03_27_223813_create_eating_times_table', 1),
(56, '2018_03_27_225950_create_food_schedules_table', 1),
(57, '2018_03_30_001832_create_food_item_food_schedule_table', 1),
(58, '2018_03_30_234754_create_routes_table', 1),
(59, '2018_03_30_234825_create_vehicles_table', 1),
(60, '2018_03_30_234840_create_route_vehicles_table', 1),
(61, '2018_03_31_000843_create_vehicle_staffs_table', 1),
(62, '2018_04_02_062605_create_general_settings_table', 1),
(63, '2018_04_03_054649_create_email_settings_table', 1),
(64, '2018_04_03_054708_create_sms_settings_table', 1),
(65, '2018_04_03_055400_create_alert_settings_table', 1),
(66, '2018_04_29_234215_create_academic_infos_table', 1),
(67, '2018_05_22_001204_entrust_setup_tables', 1),
(68, '2018_05_28_101725_create_student_guardians_table', 1),
(69, '2018_05_30_141644_create_payment_settings_table', 1),
(70, '2018_06_04_091509_create_transport_users_table', 1),
(71, '2018_06_04_092336_create_transport_histories_table', 1),
(72, '2018_06_06_055405_create_assignments_table', 1),
(73, '2018_06_06_055442_create_assignment_answers_table', 1),
(74, '2018_06_06_055503_create_download_table', 1),
(75, '2018_06_09_094821_create_attendance_statuses_table', 1),
(76, '2020_04_24_092044_classroutine', 2);

-- --------------------------------------------------------

--
-- Table structure for table `months`
--

CREATE TABLE `months` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `months`
--

INSERT INTO `months` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `title`, `status`) VALUES
(1, '2020-04-13 01:31:44', '2020-04-13 01:31:44', 1, NULL, 'January', 1),
(2, '2020-04-13 01:31:44', '2020-04-13 01:31:44', 1, NULL, 'February', 1),
(3, '2020-04-13 01:31:44', '2020-04-13 01:31:44', 1, NULL, 'March', 1),
(4, '2020-04-13 01:31:44', '2020-04-13 01:31:44', 1, NULL, 'April', 1),
(5, '2020-04-13 01:31:44', '2020-04-13 01:31:44', 1, NULL, 'May', 1),
(6, '2020-04-13 01:31:44', '2020-04-13 01:31:44', 1, NULL, 'June', 1),
(7, '2020-04-13 01:31:44', '2020-04-13 01:31:44', 1, NULL, 'July', 1),
(8, '2020-04-13 01:31:44', '2020-04-13 01:31:44', 1, NULL, 'August', 1),
(9, '2020-04-13 01:31:44', '2020-04-13 01:31:44', 1, NULL, 'September', 1),
(10, '2020-04-13 01:31:44', '2020-04-13 01:31:44', 1, NULL, 'October', 1),
(11, '2020-04-13 01:31:44', '2020-04-13 01:31:44', 1, NULL, 'November', 1),
(12, '2020-04-13 01:31:44', '2020-04-13 01:31:44', 1, NULL, 'December', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `member_type` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `member_id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `display_group` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parent_details`
--

CREATE TABLE `parent_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `grandfather_first_name` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grandfather_middle_name` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grandfather_last_name` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_first_name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_middle_name` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_last_name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_eligibility` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_occupation` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_office` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_office_number` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_residence_number` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_mobile_1` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_mobile_2` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_first_name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_middle_name` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_last_name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_eligibility` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_occupation` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_office` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_office_number` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_residence_number` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_mobile_1` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_mobile_2` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `parent_details`
--

INSERT INTO `parent_details` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `students_id`, `grandfather_first_name`, `grandfather_middle_name`, `grandfather_last_name`, `father_first_name`, `father_middle_name`, `father_last_name`, `father_eligibility`, `father_occupation`, `father_office`, `father_office_number`, `father_residence_number`, `father_mobile_1`, `father_mobile_2`, `father_email`, `mother_first_name`, `mother_middle_name`, `mother_last_name`, `mother_eligibility`, `mother_occupation`, `mother_office`, `mother_office_number`, `mother_residence_number`, `mother_mobile_1`, `mother_mobile_2`, `mother_email`, `father_image`, `mother_image`, `status`) VALUES
(1, '2020-04-14 01:56:28', '2020-04-14 01:56:28', 1, NULL, 1, NULL, NULL, NULL, 'ABDUL', 'LATIF', 'TAYYAB', NULL, 'JOB', NULL, NULL, NULL, NULL, NULL, NULL, 'ANJUSM', NULL, 'NISA', NULL, 'HOUSE WIFE', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1),
(2, '2020-04-23 02:01:01', '2020-04-23 02:01:01', 1, NULL, 2, NULL, NULL, NULL, 'ASDAS', NULL, 'ASDAS', NULL, 'ASDAS', NULL, NULL, NULL, NULL, NULL, NULL, 'ASDASD', NULL, 'ASDASD', NULL, 'ASDASD', NULL, NULL, NULL, NULL, NULL, NULL, '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_settings`
--

CREATE TABLE `payment_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `identity` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_settings`
--

INSERT INTO `payment_settings` (`id`, `created_at`, `updated_at`, `identity`, `logo`, `link`, `config`, `status`) VALUES
(1, NULL, NULL, 'Stripe', 'stripe', 'https://stripe.com', '{\"Publishable_Key\":\"\",\"Secret_Key\":\"\"}', 0),
(2, NULL, NULL, 'PayUMoney', 'payumoney', 'https://www.payumoney.com', '{\"Merchant_Key\":\"\",\"Merchant_Salt\":\"\",\"Auth_Header\":\"\"}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `payroll_heads`
--

CREATE TABLE `payroll_heads` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payroll_masters`
--

CREATE TABLE `payroll_masters` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `staff_id` int(10) UNSIGNED NOT NULL,
  `tag_line` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payroll_head` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `due_date` datetime NOT NULL,
  `amount` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `group`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Menu', 'expand-action-menu', 'Expand Nav Menu', 'Expand Nav Menu', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(2, 'Menu', 'admin-control', 'Admin Control', 'Admin Control Menu', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(3, 'Menu', 'dashboard', 'Dashboard', 'Dashboard Menu', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(4, 'Menu', 'student-staff', 'Student-Staff', 'Student-Staff Menu', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(5, 'Menu', 'account', 'Account', 'Account Menu', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(6, 'Menu', 'library', 'Library', 'Libaray Menu', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(7, 'Menu', 'attendance', 'Attendance', 'Attendance Menu', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(8, 'Menu', 'examination', 'Examination', 'Examination Menu', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(9, 'Menu', 'hostel', 'Hostel', 'Hostel Menu', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(10, 'Menu', 'transport', 'Transport', 'Transport Menu', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(11, 'Menu', 'assignment', 'Assignment', 'Assignment Menu', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(12, 'Menu', 'download', 'Download', 'Download Menu', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(13, 'Menu', 'report', 'Report', 'Report Menu', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(14, 'Menu', 'alert-center', 'Alert Center', 'Alert Center Menu', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(15, 'Menu', 'academic', 'Academic Setup', 'Academic Setup Menu', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(16, 'Role', 'role-index', 'Index', 'Role Index', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(17, 'Role', 'role-add', 'Add', 'Role Add', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(18, 'Role', 'role-view', 'View', 'View Role', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(19, 'Role', 'role-edit', 'Edit', 'Edit Role', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(20, 'Role', 'role-delete', 'Delete', 'Delete Role', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(21, 'User', 'user-index', 'Index', 'User Index', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(22, 'User', 'user-add', 'Add', 'User Add', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(23, 'User', 'user-edit', 'Edit', 'Edit User', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(24, 'User', 'user-delete', 'Delete', 'Delete User', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(25, 'User', 'user-active', 'Active', 'Active User', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(26, 'User', 'user-in-active', 'In-Active', 'In-Active User', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(27, 'User', 'user-bulk-action', 'Bulk(Active,InActive,Delete)', 'User Bulk Action', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(28, 'General Setting', 'general-setting-index', 'Index', 'General Setting Index', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(29, 'General Setting', 'general-setting-add', 'Add', 'General Setting Add', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(30, 'General Setting', 'general-setting-edit', 'Edit', 'Edit General Setting', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(31, 'Alert Setting', 'alert-setting-index', 'Index', 'Alert Setting Index', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(32, 'Alert Setting', 'alert-setting-add', 'Add', 'Alert Setting Add', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(33, 'Alert Setting', 'alert-setting-edit', 'Edit', 'Edit Alert Setting', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(34, 'SMS Setting', 'sms-setting-index', 'Index', 'SMS Setting Index', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(35, 'SMS Setting', 'sms-setting-add', 'Add', 'SMS Setting Add', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(36, 'SMS Setting', 'sms-setting-edit', 'Edit', 'Edit SMS Setting', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(37, 'SMS Setting', 'sms-setting-active', 'Active', 'Active SMS', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(38, 'SMS Setting', 'sms-setting-in-active', 'In-Active', 'In-Active SMS', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(39, 'Email Setting', 'email-setting-index', 'Index', 'Email Setting Index', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(40, 'Email Setting', 'email-setting-add', 'Add', 'Email Setting Add', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(41, 'Email Setting', 'email-setting-edit', 'Edit', 'Edit Email Setting', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(42, 'Email Setting', 'email-setting-status-change', 'Status', 'Change Status', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(43, 'Payment Gateway Setting', 'payment-gateway-setting-index', 'Index', 'Payment Gateway Setting Index', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(44, 'Payment Gateway Setting', 'payment-gateway-setting-add', 'Add', 'Payment Gateway Setting Add', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(45, 'Payment Gateway Setting', 'payment-gateway-setting-edit', 'Edit', 'Edit Payment Gateway Setting', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(46, 'Payment Gateway Setting', 'payment-gateway-active', 'Active', 'Active Payment Gateway', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(47, 'Payment Gateway Setting', 'payment-gateway-in-active', 'In-Active', 'In-Active Payment Gateway', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(48, 'Student', 'student-index', 'Index', 'Student Index', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(49, 'Student', 'student-registration', 'Registration', 'Student Registration', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(50, 'Student', 'student-view', 'View', 'View Student', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(51, 'Student', 'student-edit', 'Edit', 'Edit Student', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(52, 'Student', 'student-delete', 'Delete', 'Delete Student', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(53, 'Student', 'student-active', 'Active', 'Active Student', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(54, 'Student', 'student-in-active', 'In-Active', 'In-Active Student', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(55, 'Student', 'student-bulk-action', 'Bulk(Active,InActive,Delete)', 'Student Bulk Action', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(56, 'Student', 'student-delete-academic-info', 'Delete Academic Info', 'Student Delete Academic Info', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(57, 'Student', 'student-transfer', 'Transfer', 'Transfer Student', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(58, 'Student Document', 'student-document-index', 'Index', 'Student Document Index', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(59, 'Student Document', 'student-document-add', 'Add', 'Student Document Add', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(60, 'Student Document', 'student-document-edit', 'Edit', 'Edit Student Document', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(61, 'Student Document', 'student-document-delete', 'Delete', 'Delete Student Document', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(62, 'Student Document', 'student-document-active', 'Active', 'Active Student Document', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(63, 'Student Document', 'student-document-in-active', 'In-Active', 'In-Active Student Document', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(64, 'Student Document', 'student-document-bulk-action', 'Bulk(Active,InActive,Delete)', 'Student Document Bulk Action', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(65, 'Student Note', 'student-note-index', 'Index', 'Student Note Index', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(66, 'Student Note', 'student-note-add', 'Add', 'Student Note Add', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(67, 'Student Note', 'student-note-edit', 'Edit', 'Edit Student Note', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(68, 'Student Note', 'student-note-delete', 'Delete', 'Delete Student Note', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(69, 'Student Note', 'student-note-active', 'Active', 'Active Student Note', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(70, 'Student Note', 'student-note-in-active', 'In-Active', 'In-Active Student Note', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(71, 'Student Note', 'student-note-bulk-action', 'Bulk(Active,InActive,Delete)', 'Student Note Bulk Action', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(72, 'Staff', 'staff-index', 'Index', 'Staff Index', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(73, 'Staff', 'staff-add', 'Add', 'Staff Registration', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(74, 'Staff', 'staff-view', 'View', 'View Staff', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(75, 'Staff', 'staff-edit', 'Edit', 'Edit Staff', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(76, 'Staff', 'staff-delete', 'Delete', 'Delete Staff', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(77, 'Staff', 'staff-active', 'Active', 'Active Staff', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(78, 'Staff', 'staff-in-active', 'In-Active', 'In-Active Staff', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(79, 'Staff', 'staff-bulk-action', 'Bulk(Active,InActive,Delete)', 'Staff Bulk Action', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(80, 'Staff Document', 'staff-document-index', 'Index', 'Staff Document Index', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(81, 'Staff Document', 'staff-document-add', 'Add', 'Staff Document Add', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(82, 'Staff Document', 'staff-document-edit', 'Edit', 'Edit Staff Document', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(83, 'Staff Document', 'staff-document-delete', 'Delete', 'Delete Staff Document', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(84, 'Staff Document', 'staff-document-active', 'Active', 'Active Staff Document', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(85, 'Staff Document', 'staff-document-in-active', 'In-Active', 'In-Active Staff Document', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(86, 'Staff Document', 'staff-document-bulk-action', 'Bulk(Active,InActive,Delete)', 'Staff Document Bulk Action', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(87, 'Staff Note', 'staff-note-index', 'Index', 'Staff Note Index', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(88, 'Staff Note', 'staff-note-add', 'Add', 'Staff Note Add', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(89, 'Staff Note', 'staff-note-edit', 'Edit', 'Edit Staff Note', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(90, 'Staff Note', 'staff-note-delete', 'Delete', 'Delete Staff Note', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(91, 'Staff Note', 'staff-note-active', 'Active', 'Active Staff Note', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(92, 'Staff Note', 'staff-note-in-active', 'In-Active', 'In-Active Staff Note', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(93, 'Staff Note', 'staff-note-bulk-action', 'Bulk(Active,InActive,Delete)', 'Staff Note Bulk Action', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(94, 'Staff Designation', 'staff-designation-index', 'Index', 'Staff Designation Index', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(95, 'Staff Designation', 'staff-designation-add', 'Add', 'Staff Designation Add', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(96, 'Staff Designation', 'staff-designation-edit', 'Edit', 'Edit Staff Designation', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(97, 'Staff Designation', 'staff-designation-delete', 'Delete', 'Delete Staff Designation', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(98, 'Staff Designation', 'staff-designation-active', 'Active', 'Active Staff Designation', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(99, 'Staff Designation', 'staff-designation-in-active', 'In-Active', 'In-Active Staff Designation', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(100, 'Staff Designation', 'staff-designation-bulk-action', 'Bulk(Active,InActive,Delete)', 'Staff Designation Bulk Action', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(101, 'Fees', 'fees-index', 'Index', 'Student Fees Index', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(102, 'Fees', 'fees-balance', 'Balance', 'Fees Balance', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(103, 'Fees Head', 'fees-head-index', 'Index', 'Fees Head Index', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(104, 'Fees Head', 'fees-head-add', 'Add', 'Fees Head Add', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(105, 'Fees Head', 'fees-head-edit', 'Edit', 'Edit Fees Head', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(106, 'Fees Head', 'fees-head-delete', 'Delete', 'Delete Fees Head', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(107, 'Fees Head', 'fees-head-active', 'Active', 'Active Fees Head', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(108, 'Fees Head', 'fees-head-in-active', 'In-Active', 'In-Active Fees Head', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(109, 'Fees Head', 'fees-head-bulk-action', 'Bulk(Active,InActive,Delete)', 'Fees Head Bulk Action', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(110, 'Fees Master', 'fees-master-index', 'Index', 'Fees Master Index', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(111, 'Fees Master', 'fees-master-add', 'Add', 'Fees Master Add', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(112, 'Fees Master', 'fees-master-edit', 'Edit', 'Edit Fees Master', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(113, 'Fees Master', 'fees-master-delete', 'Delete', 'Delete Fees Master', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(114, 'Fees Master', 'fees-master-active', 'Active', 'Active Fees Master', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(115, 'Fees Master', 'fees-master-in-active', 'In-Active', 'In-Active Fees Master', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(116, 'Fees Master', 'fees-master-bulk-action', 'Bulk(Active,InActive,Delete)', 'Fees Master Bulk Action', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(117, 'Fees Collection', 'fees-collection-index', 'Index', 'Fees Collection Index', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(118, 'Fees Collection', 'fees-collection-add', 'Add', 'Fees Collection Add', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(119, 'Fees Collection', 'fees-collection-view', 'View', 'View Fees Collection', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(120, 'Fees Collection', 'fees-collection-delete', 'Delete', 'Delete Fees Collection', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(121, 'Online Payment', 'fees-payment-stripe-payment', 'Stripe', 'Stripe Payment', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(122, 'Online Payment', 'fees-payment-khalti-payment', 'Khalti', 'Khalti Payment', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(123, 'Online Payment', 'fees-payment-payumoney-payment', 'payUmoney', 'PayUmoney Payment', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(124, 'Payroll', 'payroll-index', 'Index', 'Staff Payroll Index', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(125, 'Payroll', 'payroll-balance', 'Balance', 'Payroll Balance', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(126, 'Payroll Head', 'payroll-head-index', 'Index', 'Payroll Head Index', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(127, 'Payroll Head', 'payroll-head-add', 'Add', 'Payroll Head Add', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(128, 'Payroll Head', 'payroll-head-edit', 'Edit', 'Edit Payroll Head', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(129, 'Payroll Head', 'payroll-head-delete', 'Delete', 'Delete Payroll Head', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(130, 'Payroll Head', 'payroll-head-active', 'Active', 'Active Payroll Head', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(131, 'Payroll Head', 'payroll-head-in-active', 'In-Active', 'In-Active Payroll Head', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(132, 'Payroll Head', 'payroll-head-bulk-action', 'Bulk(Active,InActive,Delete)', 'Payroll Head Bulk Action', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(133, 'Payroll Master', 'payroll-master-index', 'Index', 'Payroll Master Index', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(134, 'Payroll Master', 'payroll-master-add', 'Add', 'Payroll Master Add', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(135, 'Payroll Master', 'payroll-master-edit', 'Edit', 'Edit Payroll Master', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(136, 'Payroll Master', 'payroll-master-delete', 'Delete', 'Delete Payroll Master', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(137, 'Payroll Master', 'payroll-master-active', 'Active', 'Active Payroll Master', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(138, 'Payroll Master', 'payroll-master-in-active', 'In-Active', 'In-Active Payroll Master', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(139, 'Payroll Master', 'payroll-master-bulk-action', 'Bulk(Active,InActive,Delete)', 'Payroll Master Bulk Action', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(140, 'Salary Pay', 'salary-payment-index', 'Index', 'Salary Pay Index', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(141, 'Salary Pay', 'salary-payment-add', 'Add', 'Salary Pay Add', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(142, 'Salary Pay', 'salary-payment-view', 'View', 'View Salary Pay', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(143, 'Salary Pay', 'salary-payment-delete', 'Delete', 'Delete Salary Pay', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(144, 'Transaction Head', 'transaction-head-index', 'Index', 'Transaction Head Index', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(145, 'Transaction Head', 'transaction-head-add', 'Add', 'Transaction Head Add', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(146, 'Transaction Head', 'transaction-head-edit', 'Edit', 'Edit Transaction Head', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(147, 'Transaction Head', 'transaction-head-delete', 'Delete', 'Delete Transaction Head', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(148, 'Transaction Head', 'transaction-head-active', 'Active', 'Active Transaction Head', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(149, 'Transaction Head', 'transaction-head-in-active', 'In-Active', 'In-Active Transaction Head', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(150, 'Transaction Head', 'transaction-head-bulk-action', 'Bulk(Active,InActive,Delete)', 'Payroll Head Bulk Action', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(151, 'Transaction', 'transaction-index', 'Index', 'Transaction Index', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(152, 'Transaction', 'transaction-add', 'Add', 'Transaction Add', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(153, 'Transaction', 'transaction-edit', 'Edit', 'Edit Transaction', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(154, 'Transaction', 'transaction-delete', 'Delete', 'Delete Transaction', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(155, 'Transaction', 'transaction-active', 'Active', 'Active Transaction', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(156, 'Transaction', 'transaction-in-active', 'In-Active', 'In-Active Transaction', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(157, 'Transaction', 'transaction-bulk-action', 'Bulk(Active,InActive,Delete)', 'Transaction Bulk Action', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(158, 'Account Print', 'fee-print-master', 'Master Slip', 'Fee Master Slip', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(159, 'Account Print', 'fee-print-collection', 'Collection', 'Print Fee Collection', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(160, 'Account Print', 'fee-print-today-receipt', 'Today Short Receipt', 'Print Today Short Receipt', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(161, 'Account Print', 'fee-print-today-detail-receipt', 'Today Detail Receipt', 'Print Today Detail Receip', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(162, 'Account Print', 'fee-print-student-ledger', 'Student Ledger', 'Print Student Ledger', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(163, 'Account Print', 'fee-print-student-due', 'Due Short Slip', 'Print Due Short Slip', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(164, 'Account Print', 'fee-print-student-due-detail', 'Due Detail Slip', 'Print Due Detail Slip', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(165, 'Account Print', 'fee-print-bulk-due-slip', 'Bulk Due Short Slip', 'Print Bulk Due Short Slip', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(166, 'Account Print', 'fee-print-bulk-due-detail-slip', 'Bulk Due Detail SLip', 'Print Bulk Due Detail SLip', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(167, 'Library', 'library-index', 'Index', 'Library Index', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(168, 'Library', 'library-book-issue', 'Book Issue', 'Book Issue', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(169, 'Library', 'library-book-return', 'Book Return', 'Return Book', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(170, 'Library', 'library-return-over', 'Return Period Over', 'Return Period Over', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(171, 'Library', 'library-issue-history', 'History', 'Issue History', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(172, 'Book', 'book-index', 'Index', 'Book Index', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(173, 'Book', 'book-add', 'Add', 'Book Add', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(174, 'Book', 'book-edit', 'Edit', 'Edit Book', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(175, 'Book', 'book-view', 'View', 'View Book', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(176, 'Book', 'book-delete', 'Delete', 'Delete Book', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(177, 'Book', 'book-active', 'Active', 'Active Book', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(178, 'Book', 'book-in-active', 'In-Active', 'In-Active Book', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(179, 'Book', 'book-bulk-action', 'Bulk(Active,InActive,Delete)', 'Book Bulk Action', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(180, 'Book', 'book-add-copies', 'Add Book Copies', 'Add Book Copies', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(181, 'Book', 'book-status', 'Status', 'Book Status', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(182, 'Book', 'book-bulk-copies-delete', 'Delete Bulk Copies', 'Delete Bulk Copes', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(183, 'Book Category', 'book-category-index', 'Index', 'Book Category Index', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(184, 'Book Category', 'book-category-add', 'Add', 'Book Category Add', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(185, 'Book Category', 'book-category-edit', 'Edit', 'Edit Book Category', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(186, 'Book Category', 'book-category-delete', 'Delete', 'Delete Book Category', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(187, 'Book Category', 'book-category-active', 'Active', 'Active Book Category', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(188, 'Book Category', 'book-category-in-active', 'In-Active', 'In-Active Book Category', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(189, 'Book Category', 'book-category-bulk-action', 'Bulk(Active,InActive,Delete)', 'Book Category Bulk Action', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(190, 'Library Circulation', 'library-circulation-index', 'Index', 'Library Circulation Index', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(191, 'Library Circulation', 'library-circulation-add', 'Add', 'Library Circulation Add', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(192, 'Library Circulation', 'library-circulation-edit', 'Edit', 'Edit Library Circulation', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(193, 'Library Circulation', 'library-circulation-delete', 'Delete', 'Delete Library Circulation', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(194, 'Library Circulation', 'library-circulation-active', 'Active', 'Active Library Circulation', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(195, 'Library Circulation', 'library-circulation-in-active', 'In-Active', 'In-Active Library Circulation', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(196, 'Library Circulation', 'library-circulation-bulk-action', 'Bulk(Active,InActive,Delete)', 'Library Circulation Bulk Action', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(197, 'Library Member', 'library-member-index', 'Index', 'Library Member Index', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(198, 'Library Member', 'library-member-add', 'Add', 'Library Member Add', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(199, 'Library Member', 'library-member-edit', 'Edit', 'Edit Library Member', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(200, 'Library Member', 'library-member-delete', 'Delete', 'Delete Library Member', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(201, 'Library Member', 'library-member-active', 'Active', 'Active Library Member', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(202, 'Library Member', 'library-member-in-active', 'In-Active', 'In-Active Library Member', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(203, 'Library Member', 'library-member-bulk-action', 'Bulk(Active,InActive,Delete)', 'Library Member Bulk Action', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(204, 'Library Member', 'library-member-staff', 'Staff Index', 'Library Member Staff', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(205, 'Library Member', 'library-member-staff-view', 'Staff View', 'Library Member Staff', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(206, 'Library Member', 'library-member-student', 'Student Index', 'Library Member Student', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(207, 'Library Member', 'library-member-student-view', 'Student View', 'Library Member Student', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(208, 'Attendance Master', 'attendance-master-index', 'Index', 'Attendance Master Index', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(209, 'Attendance Master', 'attendance-master-add', 'Add', 'Attendance Master Add', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(210, 'Attendance Master', 'attendance-master-edit', 'Edit', 'Edit Attendance Master', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(211, 'Attendance Master', 'attendance-master-delete', 'Delete', 'Delete Attendance Master', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(212, 'Attendance Master', 'attendance-master-active', 'Active', 'Active Attendance Master', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(213, 'Attendance Master', 'attendance-master-in-active', 'In-Active', 'In-Active Attendance Master', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(214, 'Attendance Master', 'attendance-master-bulk-action', 'Bulk(Active,InActive,Delete)', 'Attendance Master Bulk Action', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(215, 'Student Attendance', 'student-attendance-index', 'Index', 'Student Attendance Index', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(216, 'Student Attendance', 'student-attendance-add', 'Add', 'Student Attendance Add', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(217, 'Student Attendance', 'student-attendance-delete', 'Delete', 'Delete Student Attendance', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(218, 'Student Attendance', 'student-attendance-bulk-action', 'Bulk(Active,InActive,Delete)', 'Student Attendance Bulk Action', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(219, 'Staff Attendance', 'staff-attendance-index', 'Index', 'Staff Attendance Index', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(220, 'Staff Attendance', 'staff-attendance-add', 'Add', 'Staff Attendance Add', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(221, 'Staff Attendance', 'staff-attendance-delete', 'Delete', 'Delete Staff Attendance', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(222, 'Staff Attendance', 'staff-attendance-bulk-action', 'Bulk(Active,InActive,Delete)', 'Staff Attendance Bulk Action', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(223, 'Exam', 'exam-index', 'Index', 'Exam Index', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(224, 'Exam', 'exam-add', 'Add', 'Exam Add', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(225, 'Exam', 'exam-edit', 'Edit', 'Edit Exam', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(226, 'Exam', 'exam-delete', 'Delete', 'Delete Exam', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(227, 'Exam', 'exam-active', 'Active', 'Active Exam', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(228, 'Exam', 'exam-in-active', 'In-Active', 'In-Active Exam', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(229, 'Exam', 'exam-bulk-action', 'Bulk(Active,InActive,Delete)', 'Exam Bulk Action', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(230, 'Exam', 'exam-admit-card', 'Admit Card', 'Exam Admit Card', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(231, 'Exam', 'exam-exam-routine', 'Routin/Schedule', 'Exam Routine/Schedule', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(232, 'Exam', 'exam-mark-sheet', 'MarkSheet', 'Exam Mark Sheet', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(233, 'Exam', 'exam-result-publish', 'Result Publish', 'Exam Result Publish', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(234, 'Exam', 'exam-result-un-publish', 'Result UnPublish', 'Exam Result UnPublish', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(235, 'Exam Schedule', 'exam-schedule-index', 'Index', 'Exam Schedule Index', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(236, 'Exam Schedule', 'exam-schedule-add', 'Add', 'Exam Schedule Add', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(237, 'Exam Schedule', 'exam-schedule-edit', 'Edit', 'Edit Exam Schedule', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(238, 'Exam Schedule', 'exam-schedule-delete', 'Delete', 'Delete Exam Schedule', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(239, 'Exam Schedule', 'exam-schedule-active', 'Active', 'Active Exam Schedule', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(240, 'Exam Schedule', 'exam-schedule-in-active', 'In-Active', 'In-Active Exam Schedule', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(241, 'Exam Mark Ledger', 'exam-mark-ledger-index', 'Index', 'Exam Mark Ledger Index', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(242, 'Exam Mark Ledger', 'exam-mark-ledger-add', 'Add', 'Exam Mark Ledger Add', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(243, 'Exam Mark Ledger', 'exam-mark-ledger-edit', 'Edit', 'Edit Exam Mark Ledger', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(244, 'Exam Mark Ledger', 'exam-mark-ledger-delete', 'Delete', 'Delete Exam Mark Ledger', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(245, 'Exam Mark Ledger', 'exam-mark-ledger-active', 'Active', 'Active Exam Mark Ledger', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(246, 'Exam Mark Ledger', 'exam-mark-ledger-in-active', 'In-Active', 'In-Active Exam Mark Ledger', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(247, 'Exam Print', 'exam-print-admitcard', 'Admit Card', 'Exam Admit Card', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(248, 'Exam Print', 'exam-print-routine', 'Routine/Schedule', 'Exam Routine/Schedule', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(249, 'Exam Print', 'exam-print-mark-sheet', 'Mark/Grade Sheet', 'Exam Mark/Grade Sheet', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(250, 'Hostel', 'hostel-index', 'Index', 'Hostel Index', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(251, 'Hostel', 'hostel-add', 'Add', 'Hostel Add', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(252, 'Hostel', 'hostel-view', 'view', 'Hostel View', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(253, 'Hostel', 'hostel-edit', 'Edit', 'Edit Hostel', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(254, 'Hostel', 'hostel-delete', 'Delete', 'Delete Hostel', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(255, 'Hostel', 'hostel-active', 'Active', 'Active Hostel', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(256, 'Hostel', 'hostel-in-active', 'In-Active', 'In-Active Hostel', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(257, 'Hostel', 'hostel-bulk-action', 'Bulk(Active,InActive,Delete)', 'Hostel Bulk Action', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(258, 'Room', 'room-add', 'Add', 'Room Add', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(259, 'Room', 'room-view', 'View', 'Room View', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(260, 'Room', 'room-edit', 'Edit', 'Edit Room', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(261, 'Room', 'room-delete', 'Delete', 'Delete Room', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(262, 'Room', 'room-active', 'Active', 'Active Room', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(263, 'Room', 'room-in-active', 'In-Active', 'In-Active Room', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(264, 'Room', 'room-bulk-action', 'Bulk(Active,InActive,Delete)', 'Room Bulk Action', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(265, 'Bed', 'bed-add', 'Add', 'Bed Add', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(266, 'Bed', 'bed-status', 'Status', 'Bed Status', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(267, 'Bed', 'bed-delete', 'Delete', 'Delete Bed', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(268, 'Bed', 'bed-active', 'Active', 'Active Bed', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(269, 'Bed', 'bed-in-active', 'In-Active', 'In-Active Bed', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(270, 'Bed', 'bed-bulk-action', 'Bulk(Active,InActive,Delete)', 'Bed Bulk Action', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(271, 'Room Type', 'room-type-index', 'Index', 'Room Type Index', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(272, 'Room Type', 'room-type-add', 'Add', 'Room Type Add', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(273, 'Room Type', 'room-type-edit', 'Edit', 'Edit Room Type', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(274, 'Room Type', 'room-type-delete', 'Delete', 'Delete Room Type', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(275, 'Room Type', 'room-type-active', 'Active', 'Active Room Type', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(276, 'Room Type', 'room-type-in-active', 'In-Active', 'In-Active Room Type', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(277, 'Room Type', 'room-type-bulk-action', 'Bulk(Active,InActive,Delete)', 'Room Type Bulk Action', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(278, 'Resident', 'resident-index', 'Index', 'Resident Index', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(279, 'Resident', 'resident-add', 'Add', 'Resident Add', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(280, 'Resident', 'resident-edit', 'Edit', 'Edit Resident', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(281, 'Resident', 'resident-delete', 'Delete', 'Delete Resident', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(282, 'Resident', 'resident-bulk-action', 'Bulk(Active,InActive,Delete)', 'Resident Bulk Action', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(283, 'Resident', 'resident-renew', 'Renew', 'Renew Resident', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(284, 'Resident', 'resident-leave', 'Leave', 'Leave Resident', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(285, 'Resident', 'resident-shift', 'Shift', 'Shift Resident', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(286, 'Resident', 'resident-history', 'History', 'Resident History', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(287, 'Food', 'food-index', 'Index', 'Food Index', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(288, 'Food', 'food-add', 'Add', 'Food Add', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(289, 'Food', 'food-edit', 'Edit', 'Edit Food', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(290, 'Food', 'food-delete', 'Delete', 'Delete Food', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(291, 'Food', 'food-active', 'Active', 'Active Food', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(292, 'Food', 'food-in-active', 'In-Active', 'In-Active Food', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(293, 'Food', 'food-bulk-action', 'Bulk(Active,InActive,Delete)', 'Food Bulk Action', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(294, 'Food Category', 'food-category-index', 'Index', 'Food Category Index', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(295, 'Food Category', 'food-category-add', 'Add', 'Food Category Add', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(296, 'Food Category', 'food-category-edit', 'Edit', 'Edit Food Category', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(297, 'Food Category', 'food-category-delete', 'Delete', 'Delete Food Category', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(298, 'Food Category', 'food-category-active', 'Active', 'Active Food Category', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(299, 'Food Category', 'food-category-in-active', 'In-Active', 'In-Active Food Category', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(300, 'Food Category', 'food-category-bulk-action', 'Bulk(Active,InActive,Delete)', 'Food Category Bulk Action', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(301, 'Food Item', 'food-item-index', 'Index', 'Food Item Index', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(302, 'Food Item', 'food-item-add', 'Add', 'Food Item Add', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(303, 'Food Item', 'food-item-edit', 'Edit', 'Edit Food Item', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(304, 'Food Item', 'food-item-delete', 'Delete', 'Delete Food Item', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(305, 'Food Item', 'food-item-active', 'Active', 'Active Food Item', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(306, 'Food Item', 'food-item-in-active', 'In-Active', 'In-Active Food Item', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(307, 'Food Item', 'food-item-bulk-action', 'Bulk(Active,InActive,Delete)', 'Food Item Bulk Action', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(308, 'Eating Time', 'eating-time-index', 'Index', 'Eating Time Index', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(309, 'Eating Time', 'eating-time-add', 'Add', 'Eating Time Add', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(310, 'Eating Time', 'eating-time-edit', 'Edit', 'Edit Eating Time', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(311, 'Eating Time', 'eating-time-delete', 'Delete', 'Delete Eating Time', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(312, 'Eating Time', 'eating-time-active', 'Active', 'Active Eating Time', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(313, 'Eating Time', 'eating-time-in-active', 'In-Active', 'In-Active Eating Time', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(314, 'Eating Time', 'eating-time-bulk-action', 'Bulk(Active,InActive,Delete)', 'Eating Time Bulk Action', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(315, 'Transport Route', 'transport-route-index', 'Index', 'Transport Route Index', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(316, 'Transport Route', 'transport-route-add', 'Add', 'Transport Route Add', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(317, 'Transport Route', 'transport-route-edit', 'Edit', 'Edit Transport Route', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(318, 'Transport Route', 'transport-route-delete', 'Delete', 'Delete Transport Route', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(319, 'Transport Route', 'transport-route-active', 'Active', 'Active Transport Route', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(320, 'Transport Route', 'transport-route-in-active', 'In-Active', 'In-Active Transport Route', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(321, 'Transport Route', 'transport-route-bulk-action', 'Bulk(Active,InActive,Delete)', 'Transport Route Bulk Action', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(322, 'Vehicle', 'vehicle-index', 'Index', 'Vehicle Index', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(323, 'Vehicle', 'vehicle-add', 'Add', 'Vehicle Add', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(324, 'Vehicle', 'vehicle-edit', 'Edit', 'Edit Vehicle', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(325, 'Vehicle', 'vehicle-delete', 'Delete', 'Delete Vehicle', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(326, 'Vehicle', 'vehicle-active', 'Active', 'Active Vehicle', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(327, 'Vehicle', 'vehicle-in-active', 'In-Active', 'In-Active Vehicle', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(328, 'Vehicle', 'vehicle-bulk-action', 'Bulk(Active,InActive,Delete)', 'Vehicle Bulk Action', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(329, 'Transport User/Traveller', 'transport-user-index', 'Index', 'Transport User/Traveller Index', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(330, 'Transport User/Traveller', 'transport-user-add', 'Add', 'Transport User/Traveller Add', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(331, 'Transport User/Traveller', 'transport-user-edit', 'Edit', 'Edit Transport User/Traveller', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(332, 'Transport User/Traveller', 'transport-user-delete', 'Delete', 'Delete Transport User/Traveller', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(333, 'Transport User/Traveller', 'transport-user-bulk-action', 'Bulk(Active,InActive,Delete)', 'Transport User/Traveller Bulk Action', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(334, 'Transport User/Traveller', 'transport-user-renew', 'Renew', 'Renew Transport User/Traveller', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(335, 'Transport User/Traveller', 'transport-user-leave', 'Leave', 'Leave Transport User/Traveller', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(336, 'Transport User/Traveller', 'transport-user-shift', 'Shift', 'Shift Transport User/Traveller', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(337, 'Transport User/Traveller', 'transport-user-history', 'History', 'Resident History', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(338, 'Report', 'student-report', 'Student', 'Student Report', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(339, 'Report', 'staff-report', 'Staff', 'Staff Report', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(340, 'Notice', 'notice-index', 'Index', 'Notice Index', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(341, 'Notice', 'notice-add', 'Add', 'Notice Add', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(342, 'Notice', 'notice-edit', 'Edit', 'Edit Notice', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(343, 'Notice', 'notice-delete', 'Delete', 'Delete Notice', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(344, 'SMS/E-Mail', 'sms-email-index', 'Index', 'SMS/E-Mail Index', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(345, 'SMS/E-Mail', 'sms-email-delete', 'Delete', 'SMS/E-Mail Delete', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(346, 'SMS/E-Mail', 'sms-email-bulk-action', 'Bulk(Active,InActive,Delete)', 'Bulk SMS/E-Mail', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(347, 'SMS/E-Mail', 'sms-email-create', 'Create', 'Create SMS/E-Mail', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(348, 'SMS/E-Mail', 'sms-email-send', 'Send', 'Send SMS/E-Mail', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(349, 'SMS/E-Mail', 'sms-email-student-guardian-send', 'Student & Guardian', 'Student & Guardian SMS/E-Mail', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(350, 'SMS/E-Mail', 'sms-email-staff-send', 'Staff', 'Staff SMS/E-Mail', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(351, 'SMS/E-Mail', 'sms-email-individual-send', 'Individual', 'Individual SMS/E-Mail', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(352, 'SMS/E-Mail', 'sms-email-fee-receipt', 'Fee Receipt', 'Fee ReceiptSMS/E-Mail', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(353, 'SMS/E-Mail', 'sms-email-due-reminder', 'Due Reminder', 'Due Reminder SMS/E-Mail', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(354, 'SMS/E-Mail', 'sms-email-book-return-reminder', 'Book Return Reminder', 'Book Return Reminder', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(355, 'Faculty', 'faculty-index', 'Index', 'Faculty Index', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(356, 'Faculty', 'faculty-add', 'Add', 'Faculty Add', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(357, 'Faculty', 'faculty-edit', 'Edit', 'Edit Faculty', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(358, 'Faculty', 'faculty-delete', 'Delete', 'Delete Faculty', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(359, 'Faculty', 'faculty-active', 'Active', 'Active Faculty', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(360, 'Faculty', 'faculty-in-active', 'In-Active', 'In-Active Faculty', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(361, 'Faculty', 'faculty-bulk-action', 'Bulk(Active,InActive,Delete)', 'Faculty Bulk Action', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(362, 'Semester', 'semester-index', 'Index', 'Semester Index', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(363, 'Semester', 'semester-add', 'Add', 'Semester Add', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(364, 'Semester', 'semester-edit', 'Edit', 'Edit Semester', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(365, 'Semester', 'semester-delete', 'Delete', 'Delete Semester', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(366, 'Semester', 'semester-active', 'Active', 'Active Semester', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(367, 'Semester', 'semester-in-active', 'In-Active', 'In-Active Semester', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(368, 'Semester', 'semester-bulk-action', 'Bulk(Active,InActive,Delete)', 'Semester Bulk Action', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(369, 'Grading', 'grading-index', 'Index', 'Grading Index', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(370, 'Grading', 'grading-add', 'Add', 'Grading Add', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(371, 'Grading', 'grading-edit', 'Edit', 'Edit Grading', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(372, 'Grading', 'grading-delete', 'Delete', 'Delete Grading', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(373, 'Grading', 'grading-active', 'Active', 'Active Grading', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(374, 'Grading', 'grading-in-active', 'In-Active', 'In-Active Grading', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(375, 'Grading', 'grading-bulk-action', 'Bulk(Active,InActive,Delete)', 'Grading Bulk Action', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(376, 'Subject / Course', 'subject-index', 'Index', 'Subject / Course Index', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(377, 'Subject / Course', 'subject-add', 'Add', 'Subject / Course Add', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(378, 'Subject / Course', 'subject-edit', 'Edit', 'Edit Subject / Course', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(379, 'Subject / Course', 'subject-delete', 'Delete', 'Delete Subject / Course', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(380, 'Subject / Course', 'subject-active', 'Active', 'Active Subject / Course', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(381, 'Subject / Course', 'subject-in-active', 'In-Active', 'In-Active Subject / Course', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(382, 'Subject / Course', 'subject-bulk-action', 'Bulk(Active,InActive,Delete)', 'Subject / Course Bulk Action', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(383, 'Student Status', 'student-status-index', 'Index', 'Student Status Index', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(384, 'Student Status', 'student-status-add', 'Add', 'Student Status Add', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(385, 'Student Status', 'student-status-edit', 'Edit', 'Edit Student Status', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(386, 'Student Status', 'student-status-delete', 'Delete', 'Delete Student Status', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(387, 'Student Status', 'student-status-active', 'Active', 'Active Student Status', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(388, 'Student Status', 'student-status-in-active', 'In-Active', 'In-Active Student Status', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(389, 'Student Status', 'student-status-bulk-action', 'Bulk(Active,InActive,Delete)', 'Student Status Bulk Action', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(390, 'Book Status', 'book-status-index', 'Index', 'Book Status Index', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(391, 'Book Status', 'book-status-add', 'Add', 'Book Status Add', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(392, 'Book Status', 'book-status-edit', 'Edit', 'Edit Book Status', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(393, 'Book Status', 'book-status-delete', 'Delete', 'Delete Book Status', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(394, 'Book Status', 'book-status-active', 'Active', 'Active Book Status', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(395, 'Book Status', 'book-status-in-active', 'In-Active', 'In-Active Book Status', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(396, 'Book Status', 'book-status-bulk-action', 'Bulk(Active,InActive,Delete)', 'Book Status Bulk Action', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(397, 'Bed Status', 'bed-status-index', 'Index', 'Bed Status Index', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(398, 'Bed Status', 'bed-status-add', 'Add', 'Bed Status Add', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(399, 'Bed Status', 'bed-status-edit', 'Edit', 'Edit Bed Status', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(400, 'Bed Status', 'bed-status-delete', 'Delete', 'Delete Bed Status', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(401, 'Bed Status', 'bed-status-active', 'Active', 'Active Bed Status', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(402, 'Bed Status', 'bed-status-in-active', 'In-Active', 'In-Active Bed Status', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(403, 'Bed Status', 'bed-status-bulk-action', 'Bulk(Active,InActive,Delete)', 'Bed Status Bulk Action', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(404, 'Year', 'year-index', 'Index', 'Year Index', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(405, 'Year', 'year-add', 'Add', 'Year Add', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(406, 'Year', 'year-edit', 'Edit', 'Edit Year', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(407, 'Year', 'year-delete', 'Delete', 'Delete Year', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(408, 'Year', 'year-active', 'Active', 'Active Year', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(409, 'Year', 'year-in-active', 'In-Active', 'In-Active Year', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(410, 'Year', 'year-bulk-action', 'Bulk(Active,InActive,Delete)', 'Year Bulk Action', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(411, 'Year', 'years-active-status', 'Make Active', 'Year Make Active', '2020-04-13 01:31:42', '2020-04-13 01:31:42');
INSERT INTO `permissions` (`id`, `group`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(412, 'Month', 'month-index', 'Index', 'Month Index', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(413, 'Month', 'month-add', 'Add', 'Month Add', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(414, 'Month', 'month-edit', 'Edit', 'Edit Month', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(415, 'Month', 'month-delete', 'Delete', 'Delete Month', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(416, 'Month', 'month-active', 'Active', 'Active Month', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(417, 'Month', 'month-in-active', 'In-Active', 'In-Active Month', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(418, 'Month', 'month-bulk-action', 'Bulk(Active,InActive,Delete)', 'Month Bulk Action', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(419, 'Day', 'day-index', 'Index', 'Day Index', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(420, 'Day', 'day-add', 'Add', 'Day Add', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(421, 'Day', 'day-edit', 'Edit', 'Edit Day', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(422, 'Day', 'day-delete', 'Delete', 'Delete Day', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(423, 'Day', 'day-active', 'Active', 'Active Day', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(424, 'Day', 'day-in-active', 'In-Active', 'In-Active Day', '2020-04-13 01:31:42', '2020-04-13 01:31:42'),
(425, 'Day', 'day-bulk-action', 'Bulk(Active,InActive,Delete)', 'Day Bulk Action', '2020-04-13 01:31:43', '2020-04-13 01:31:43'),
(426, 'Assignment', 'assignment-index', 'Index', 'Assignment Index', '2020-04-13 01:31:43', '2020-04-13 01:31:43'),
(427, 'Assignment', 'assignment-add', 'Add', 'Assignment Add', '2020-04-13 01:31:43', '2020-04-13 01:31:43'),
(428, 'Assignment', 'assignment-edit', 'Edit', 'Edit Assignment', '2020-04-13 01:31:43', '2020-04-13 01:31:43'),
(429, 'Assignment', 'assignment-view', 'View', 'View Assignment', '2020-04-13 01:31:43', '2020-04-13 01:31:43'),
(430, 'Assignment', 'assignment-delete', 'Delete', 'Delete Assignment', '2020-04-13 01:31:43', '2020-04-13 01:31:43'),
(431, 'Assignment', 'assignment-active', 'Active', 'Active Assignment', '2020-04-13 01:31:43', '2020-04-13 01:31:43'),
(432, 'Assignment', 'assignment-in-active', 'In-Active', 'In-Active Assignment', '2020-04-13 01:31:43', '2020-04-13 01:31:43'),
(433, 'Assignment', 'assignment-bulk-action', 'Bulk(Active,InActive,Delete)', 'Assignment Bulk Action', '2020-04-13 01:31:43', '2020-04-13 01:31:43'),
(434, 'Assignment Answer', 'assignment-answer-view', 'View', 'Assignment Answer View', '2020-04-13 01:31:43', '2020-04-13 01:31:43'),
(435, 'Assignment Answer', 'assignment-answer-approve', 'Approve', 'Approve Assignment Answer', '2020-04-13 01:31:43', '2020-04-13 01:31:43'),
(436, 'Assignment Answer', 'assignment-answer-reject', 'Reject', 'Reject Assignment Answer', '2020-04-13 01:31:43', '2020-04-13 01:31:43'),
(437, 'Assignment Answer', 'assignment-answer-delete', 'Delete', 'Delete Assignment Answer', '2020-04-13 01:31:43', '2020-04-13 01:31:43'),
(438, 'Assignment Answer', 'assignment-answer-bulk-action', 'Bulk(Approve, Reject,Delete)', 'Assignment Answer Bulk Action', '2020-04-13 01:31:43', '2020-04-13 01:31:43'),
(439, 'Download', 'download-index', 'Index', 'Download Index', '2020-04-13 01:31:43', '2020-04-13 01:31:43'),
(440, 'Download', 'download-add', 'Add', 'Download Add', '2020-04-13 01:31:43', '2020-04-13 01:31:43'),
(441, 'Download', 'download-edit', 'Edit', 'Edit Download', '2020-04-13 01:31:43', '2020-04-13 01:31:43'),
(442, 'Download', 'download-delete', 'Delete', 'Delete Download', '2020-04-13 01:31:43', '2020-04-13 01:31:43'),
(443, 'Download', 'download-active', 'Active', 'Active Download', '2020-04-13 01:31:43', '2020-04-13 01:31:43'),
(444, 'Download', 'download-in-active', 'In-Active', 'In-Active Download', '2020-04-13 01:31:43', '2020-04-13 01:31:43'),
(445, 'Download', 'download-bulk-action', 'Bulk(Active,InActive,Delete)', 'Download Bulk Action', '2020-04-13 01:31:43', '2020-04-13 01:31:43');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 1),
(128, 1),
(129, 1),
(130, 1),
(131, 1),
(132, 1),
(133, 1),
(134, 1),
(135, 1),
(136, 1),
(137, 1),
(138, 1),
(139, 1),
(140, 1),
(141, 1),
(142, 1),
(143, 1),
(144, 1),
(145, 1),
(146, 1),
(147, 1),
(148, 1),
(149, 1),
(150, 1),
(151, 1),
(152, 1),
(153, 1),
(154, 1),
(155, 1),
(156, 1),
(157, 1),
(158, 1),
(159, 1),
(160, 1),
(161, 1),
(162, 1),
(163, 1),
(164, 1),
(165, 1),
(166, 1),
(167, 1),
(168, 1),
(169, 1),
(170, 1),
(171, 1),
(172, 1),
(173, 1),
(174, 1),
(175, 1),
(176, 1),
(177, 1),
(178, 1),
(179, 1),
(180, 1),
(181, 1),
(182, 1),
(183, 1),
(184, 1),
(185, 1),
(186, 1),
(187, 1),
(188, 1),
(189, 1),
(190, 1),
(191, 1),
(192, 1),
(193, 1),
(194, 1),
(195, 1),
(196, 1),
(197, 1),
(198, 1),
(199, 1),
(200, 1),
(201, 1),
(202, 1),
(203, 1),
(204, 1),
(205, 1),
(206, 1),
(207, 1),
(208, 1),
(209, 1),
(210, 1),
(211, 1),
(212, 1),
(213, 1),
(214, 1),
(215, 1),
(216, 1),
(217, 1),
(218, 1),
(219, 1),
(220, 1),
(221, 1),
(222, 1),
(223, 1),
(224, 1),
(225, 1),
(226, 1),
(227, 1),
(228, 1),
(229, 1),
(230, 1),
(231, 1),
(232, 1),
(233, 1),
(234, 1),
(235, 1),
(236, 1),
(237, 1),
(238, 1),
(239, 1),
(240, 1),
(241, 1),
(242, 1),
(243, 1),
(244, 1),
(245, 1),
(246, 1),
(247, 1),
(248, 1),
(249, 1),
(250, 1),
(251, 1),
(252, 1),
(253, 1),
(254, 1),
(255, 1),
(256, 1),
(257, 1),
(258, 1),
(259, 1),
(260, 1),
(261, 1),
(262, 1),
(263, 1),
(264, 1),
(265, 1),
(266, 1),
(267, 1),
(268, 1),
(269, 1),
(270, 1),
(271, 1),
(272, 1),
(273, 1),
(274, 1),
(275, 1),
(276, 1),
(277, 1),
(278, 1),
(279, 1),
(280, 1),
(281, 1),
(282, 1),
(283, 1),
(284, 1),
(285, 1),
(286, 1),
(287, 1),
(288, 1),
(289, 1),
(290, 1),
(291, 1),
(292, 1),
(293, 1),
(294, 1),
(295, 1),
(296, 1),
(297, 1),
(298, 1),
(299, 1),
(300, 1),
(301, 1),
(302, 1),
(303, 1),
(304, 1),
(305, 1),
(306, 1),
(307, 1),
(308, 1),
(309, 1),
(310, 1),
(311, 1),
(312, 1),
(313, 1),
(314, 1),
(315, 1),
(316, 1),
(317, 1),
(318, 1),
(319, 1),
(320, 1),
(321, 1),
(322, 1),
(323, 1),
(324, 1),
(325, 1),
(326, 1),
(327, 1),
(328, 1),
(329, 1),
(330, 1),
(331, 1),
(332, 1),
(333, 1),
(334, 1),
(335, 1),
(336, 1),
(337, 1),
(338, 1),
(339, 1),
(340, 1),
(341, 1),
(342, 1),
(343, 1),
(344, 1),
(345, 1),
(346, 1),
(347, 1),
(348, 1),
(349, 1),
(350, 1),
(351, 1),
(352, 1),
(353, 1),
(354, 1),
(355, 1),
(356, 1),
(357, 1),
(358, 1),
(359, 1),
(360, 1),
(361, 1),
(362, 1),
(363, 1),
(364, 1),
(365, 1),
(366, 1),
(367, 1),
(368, 1),
(369, 1),
(370, 1),
(371, 1),
(372, 1),
(373, 1),
(374, 1),
(375, 1),
(376, 1),
(377, 1),
(378, 1),
(379, 1),
(380, 1),
(381, 1),
(382, 1),
(383, 1),
(384, 1),
(385, 1),
(386, 1),
(387, 1),
(388, 1),
(389, 1),
(390, 1),
(391, 1),
(392, 1),
(393, 1),
(394, 1),
(395, 1),
(396, 1),
(397, 1),
(398, 1),
(399, 1),
(400, 1),
(401, 1),
(402, 1),
(403, 1),
(404, 1),
(405, 1),
(406, 1),
(407, 1),
(408, 1),
(409, 1),
(410, 1),
(411, 1),
(412, 1),
(413, 1),
(414, 1),
(415, 1),
(416, 1),
(417, 1),
(418, 1),
(419, 1),
(420, 1),
(421, 1),
(422, 1),
(423, 1),
(424, 1),
(425, 1),
(426, 1),
(427, 1),
(428, 1),
(429, 1),
(430, 1),
(431, 1),
(432, 1),
(433, 1),
(434, 1),
(435, 1),
(436, 1),
(437, 1),
(438, 1),
(439, 1),
(440, 1),
(441, 1),
(442, 1),
(443, 1),
(444, 1),
(445, 1);

-- --------------------------------------------------------

--
-- Table structure for table `residents`
--

CREATE TABLE `residents` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `hostels_id` int(10) UNSIGNED NOT NULL,
  `rooms_id` int(10) UNSIGNED DEFAULT NULL,
  `beds_id` int(10) UNSIGNED DEFAULT NULL,
  `user_type` int(10) UNSIGNED NOT NULL,
  `member_id` int(10) UNSIGNED NOT NULL,
  `register_date` datetime NOT NULL,
  `leave_date` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `resident_histories`
--

CREATE TABLE `resident_histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `years_id` int(10) UNSIGNED NOT NULL,
  `hostels_id` int(10) UNSIGNED NOT NULL,
  `rooms_id` int(10) UNSIGNED DEFAULT NULL,
  `beds_id` int(10) UNSIGNED DEFAULT NULL,
  `residents_id` int(10) UNSIGNED NOT NULL,
  `history_type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'super-admin', 'Super Admin', 'Super Admin', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(2, 'admin', 'Administrator', 'Administrator', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(3, 'account', 'Accountant', 'Accountant', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(4, 'library', 'Librarian', 'Librarian', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(5, 'staff', 'Staff', 'Staff', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(6, 'student', 'Student', 'Student', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(7, 'guardian', 'Guardian', 'Guardian', '2020-04-13 01:31:41', '2020-04-13 01:31:41'),
(8, 'teacher', 'Teacher', 'Teacher', '2020-04-13 01:31:41', '2020-04-13 01:31:41');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 6),
(3, 6);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `hostels_id` int(10) UNSIGNED NOT NULL,
  `room_type` int(10) UNSIGNED NOT NULL,
  `room_number` int(11) NOT NULL,
  `rate_perbed` int(11) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `room_types`
--

CREATE TABLE `room_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `routes`
--

CREATE TABLE `routes` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rent` int(11) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `route_vehicles`
--

CREATE TABLE `route_vehicles` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `routes_id` int(10) UNSIGNED NOT NULL,
  `vehicles_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salary_pays`
--

CREATE TABLE `salary_pays` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `staff_id` int(10) UNSIGNED NOT NULL,
  `salary_masters_id` int(10) UNSIGNED NOT NULL,
  `date` datetime NOT NULL,
  `paid_amount` int(11) NOT NULL,
  `allowance` int(11) DEFAULT NULL,
  `fine` int(11) DEFAULT NULL,
  `payment_mode` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `semesters`
--

CREATE TABLE `semesters` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `semester` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `staff_id` int(10) UNSIGNED DEFAULT NULL,
  `gradingType_id` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `semesters`
--

INSERT INTO `semesters` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `semester`, `slug`, `staff_id`, `gradingType_id`, `status`) VALUES
(1, '2020-04-14 01:51:50', '2020-04-14 01:51:50', 1, NULL, 'AI', 'AI', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `semester_subject`
--

CREATE TABLE `semester_subject` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `semester_id` int(10) UNSIGNED NOT NULL,
  `subject_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `semester_subject`
--

INSERT INTO `semester_subject` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `semester_id`, `subject_id`, `status`) VALUES
(1, NULL, NULL, 1, NULL, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sms_emails`
--

CREATE TABLE `sms_emails` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sms` tinyint(1) NOT NULL DEFAULT 0,
  `email` tinyint(1) NOT NULL DEFAULT 0,
  `group` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sms_settings`
--

CREATE TABLE `sms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `identity` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sms_settings`
--

INSERT INTO `sms_settings` (`id`, `created_at`, `updated_at`, `identity`, `logo`, `link`, `config`, `status`) VALUES
(1, NULL, NULL, 'Sparrow', 'sparrow', 'http://sparrowsms.com', '{\"From\":\"\",\"Token\":\"\"}', 0),
(2, NULL, NULL, 'Twilio', 'twilio', 'https://www.twilio.com', '{\"SID\":\"\",\"Token\":\"\",\"FromNumber\":\"\"}', 0),
(3, NULL, NULL, 'MessageBird', 'messagebird', 'https://www.messagebird.com', '{\"Originator\":\"\",\"AcccessKey\":\"\"}', 0),
(4, NULL, NULL, 'Clickatell', 'clickatell', 'http://clickatell.com', '{\"ApiKey\":\"\"}', 0),
(5, NULL, NULL, 'Nexmo', 'nexmo', 'https://www.nexmo.com', '{\"From\":\"\",\"API_KEY\":\"\",\"API_SECRET\":\"\"}', 0),
(6, NULL, NULL, 'smsCountry', 'smscountry', 'https://www.smscountry.com', '{\"UserName\":\"\",\"Password\":\"\",\"SenderId\":\"\",\"Token\":\"\"}', 0),
(7, NULL, NULL, 'MsgClub', 'msgclub', 'https://www.smscountry.com', '{\"AUTH_KEY\":\"\",\"senderId\":\"\",\"routeId\":\"\",\"Token\":\"\"}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `reg_no` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `join_date` datetime NOT NULL,
  `designation` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middle_name` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` datetime NOT NULL,
  `gender` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blood_group` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `temp_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `temp_state` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `temp_country` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_1` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_2` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_tongue` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qualification` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience_info` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_info` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `reg_no`, `join_date`, `designation`, `first_name`, `middle_name`, `last_name`, `father_name`, `mother_name`, `date_of_birth`, `gender`, `blood_group`, `nationality`, `address`, `state`, `country`, `temp_address`, `temp_state`, `temp_country`, `home_phone`, `mobile_1`, `mobile_2`, `mother_tongue`, `email`, `qualification`, `experience`, `experience_info`, `other_info`, `staff_image`, `status`) VALUES
(1, '2020-04-14 01:42:33', '2020-04-14 01:42:33', 1, NULL, '123', '2020-04-14 00:00:00', 1, 'Administrator', NULL, 'A', NULL, NULL, '2020-04-14 00:00:00', 'MALE', 'B-', 'PAKISTANI', 'Flat G27 Al Naseer Square F B Area Karachi', 'SINDH', 'PAKISTAN', 'Flat G27 Al Naseer Square F B Area Karachi', 'SINDH', 'PAKISTAN', NULL, '03323585558', NULL, NULL, 'muhammadhassan1310@gmail.com', 'DR', NULL, NULL, NULL, '', 1),
(2, '2020-04-14 01:53:52', '2020-04-14 01:53:52', 1, NULL, '1234', '2020-04-14 00:00:00', 1, 'A', NULL, 'A', NULL, NULL, '2020-04-07 00:00:00', 'MALE', NULL, 'PAKISTANI', 'Flat G27 Al Naseer Square F B Area Karachi', 'SINDH', 'PAKISTAN', NULL, NULL, NULL, NULL, '03323585558', NULL, NULL, 'muhammad.hassan@gmail.com', 'MS Computer Science in Software Engineering', NULL, NULL, NULL, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `staff_designations`
--

CREATE TABLE `staff_designations` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff_designations`
--

INSERT INTO `staff_designations` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `title`, `status`) VALUES
(1, '2020-04-14 01:39:12', '2020-04-14 01:39:12', 1, NULL, 'Professor', 1);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `reg_no` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reg_date` datetime NOT NULL,
  `university_reg` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faculty` int(10) UNSIGNED DEFAULT NULL,
  `semester` int(10) UNSIGNED DEFAULT NULL,
  `academic_status` int(10) UNSIGNED DEFAULT NULL,
  `first_name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middle_name` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` datetime NOT NULL,
  `gender` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blood_group` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_tongue` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_info` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `reg_no`, `reg_date`, `university_reg`, `faculty`, `semester`, `academic_status`, `first_name`, `middle_name`, `last_name`, `date_of_birth`, `gender`, `blood_group`, `nationality`, `mother_tongue`, `email`, `extra_info`, `student_image`, `status`) VALUES
(1, '2020-04-14 01:56:28', '2020-04-14 01:56:28', 1, NULL, '1231', '2020-04-14 00:00:00', '1233', 1, 1, 1, 'Muhammad', NULL, 'Hassan', '2020-04-14 00:00:00', 'MALE', 'B-', 'PAKISTANI', NULL, 'muhammadhassan1310@gmail.com', NULL, '', 1),
(2, '2020-04-23 02:01:01', '2020-04-23 02:01:01', 1, NULL, '123123', '2020-04-23 00:00:00', NULL, 1, 1, 1, 'ALI', NULL, 'QURESHI', '2020-04-23 00:00:00', 'MALE', 'A-', 'PAKISTANI', NULL, 'MAQ@gmail.com', NULL, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_guardians`
--

CREATE TABLE `student_guardians` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `students_id` int(10) UNSIGNED NOT NULL,
  `guardians_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_guardians`
--

INSERT INTO `student_guardians` (`id`, `created_at`, `updated_at`, `students_id`, `guardians_id`) VALUES
(1, '2020-04-14 01:56:28', '2020-04-14 01:56:28', 1, 1),
(2, '2020-04-23 02:01:01', '2020-04-23 02:01:01', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `student_statuses`
--

CREATE TABLE `student_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_statuses`
--

INSERT INTO `student_statuses` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `title`, `status`) VALUES
(1, '2020-04-13 01:31:44', '2020-04-13 01:31:44', 1, 1, 'New Admission', 1),
(2, '2020-04-13 01:31:44', '2020-04-13 01:31:44', 1, 1, 'Continue', 1),
(3, '2020-04-13 01:31:44', '2020-04-13 01:31:44', 1, 1, 'Pass Out', 1),
(4, '2020-04-13 01:31:44', '2020-04-13 01:31:44', 1, 1, 'Back Continue', 1),
(5, '2020-04-13 01:31:44', '2020-04-13 01:31:44', 1, 1, 'Drop Out', 1),
(6, '2020-04-13 01:31:44', '2020-04-13 01:31:44', 1, 1, 'Transfer in', 1),
(7, '2020-04-13 01:31:44', '2020-04-13 01:31:44', 1, 1, 'Transfer Out', 1);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_mark_theory` int(11) DEFAULT NULL,
  `pass_mark_theory` int(11) DEFAULT NULL,
  `full_mark_practical` int(11) DEFAULT NULL,
  `pass_mark_practical` int(11) DEFAULT NULL,
  `credit_hour` int(11) DEFAULT NULL,
  `sub_type` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class_type` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_id` int(10) UNSIGNED DEFAULT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `created_at`, `updated_at`, `created_by`, `last_updated_by`, `title`, `code`, `full_mark_theory`, `pass_mark_theory`, `full_mark_practical`, `pass_mark_practical`, `credit_hour`, `sub_type`, `class_type`, `staff_id`, `description`, `status`) VALUES
(1, '2020-04-14 01:35:30', '2020-04-14 01:35:30', 1, NULL, 'AI', 'AI-01', 1, 1, 1, 1, 15, 'Compulsory', 'Theory', 0, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `tr_head_id` int(10) UNSIGNED NOT NULL,
  `date` datetime NOT NULL,
  `dr_amount` int(11) DEFAULT NULL,
  `cr_amount` int(11) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_heads`
--

CREATE TABLE `transaction_heads` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `tr_head` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transport_histories`
--

CREATE TABLE `transport_histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `years_id` int(10) UNSIGNED NOT NULL,
  `routes_id` int(10) UNSIGNED DEFAULT NULL,
  `vehicles_id` int(10) UNSIGNED DEFAULT NULL,
  `travellers_id` int(10) UNSIGNED NOT NULL,
  `history_type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transport_users`
--

CREATE TABLE `transport_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `routes_id` int(10) UNSIGNED DEFAULT NULL,
  `vehicles_id` int(10) UNSIGNED DEFAULT NULL,
  `user_type` int(10) UNSIGNED NOT NULL,
  `member_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login_at` timestamp NULL DEFAULT NULL,
  `last_login_ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `contact_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `hook_id` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `last_login_at`, `last_login_ip`, `created_at`, `updated_at`, `contact_number`, `address`, `profile_image`, `role_id`, `hook_id`, `status`) VALUES
(1, 'Super Admin', 'superadmin@edufirm.com', '$2y$10$xLjOTShk35vnHspnb/xsLedRvWOII6QLJSlbOSSuhaS2T7.q5e9ey', 'dWYdgS0owjn8bhTMsFbwvVGsUnEaY3ZAVZqLd2e5n9D3yVhgQhX4OCxW0Jkq', '2021-04-27 04:58:18', '127.0.0.1', NULL, '2021-04-27 04:58:18', NULL, NULL, NULL, NULL, NULL, 1),
(2, 'Muhammad  Hassan', 'muhammadhassan1310@gmail.com', '$2y$10$xLjOTShk35vnHspnb/xsLedRvWOII6QLJSlbOSSuhaS2T7.q5e9ey', 'cwVijXZusMyqovpH9yu1YPlbOxndkzqhA81l4pbVPG63sZOUjOJujeGyd3fe', '2021-04-27 05:04:57', '127.0.0.1', '2020-04-14 02:02:15', '2021-04-27 05:04:57', NULL, NULL, NULL, 6, 1, 1),
(3, 'ALI  QURESHI', 'MAQ@gmail.com', '$2y$10$JIqi/paHXeNjYxzQZPY9iuxQeBGmSsPx1TbM/txhTuk2B7g4P/mX2', NULL, '2020-04-23 02:03:07', '127.0.0.1', '2020-04-23 02:02:26', '2020-04-23 02:03:07', NULL, NULL, NULL, 6, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `number` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_staffs`
--

CREATE TABLE `vehicle_staffs` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vehicles_id` int(10) UNSIGNED NOT NULL,
  `staffs_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `years`
--

CREATE TABLE `years` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic_infos`
--
ALTER TABLE `academic_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addressinfos`
--
ALTER TABLE `addressinfos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alert_settings`
--
ALTER TABLE `alert_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignments`
--
ALTER TABLE `assignments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignment_answers`
--
ALTER TABLE `assignment_answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance_masters`
--
ALTER TABLE `attendance_masters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance_statuses`
--
ALTER TABLE `attendance_statuses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attendance_statuses_title_unique` (`title`);

--
-- Indexes for table `beds`
--
ALTER TABLE `beds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bed_statuses`
--
ALTER TABLE `bed_statuses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bed_statuses_title_unique` (`title`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `books_book_code_unique` (`book_code`);

--
-- Indexes for table `book_categories`
--
ALTER TABLE `book_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `book_categories_title_unique` (`title`),
  ADD UNIQUE KEY `book_categories_slug_unique` (`slug`);

--
-- Indexes for table `book_issues`
--
ALTER TABLE `book_issues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_masters`
--
ALTER TABLE `book_masters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_statuses`
--
ALTER TABLE `book_statuses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `book_statuses_title_unique` (`title`);

--
-- Indexes for table `class_routines`
--
ALTER TABLE `class_routines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `days`
--
ALTER TABLE `days`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `days_title_unique` (`title`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `downloads`
--
ALTER TABLE `downloads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eating_times`
--
ALTER TABLE `eating_times`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `eating_times_title_unique` (`title`);

--
-- Indexes for table `email_settings`
--
ALTER TABLE `email_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `exams_title_unique` (`title`);

--
-- Indexes for table `exam_mark_ledgers`
--
ALTER TABLE `exam_mark_ledgers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_schedules`
--
ALTER TABLE `exam_schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculties`
--
ALTER TABLE `faculties`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `faculties_faculty_unique` (`faculty`),
  ADD UNIQUE KEY `faculties_slug_unique` (`slug`);

--
-- Indexes for table `faculty_semester`
--
ALTER TABLE `faculty_semester`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fee_collections`
--
ALTER TABLE `fee_collections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fee_heads`
--
ALTER TABLE `fee_heads`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fee_heads_fee_head_title_unique` (`fee_head_title`),
  ADD UNIQUE KEY `fee_heads_slug_unique` (`slug`);

--
-- Indexes for table `fee_masters`
--
ALTER TABLE `fee_masters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_categories`
--
ALTER TABLE `food_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `food_categories_title_unique` (`title`);

--
-- Indexes for table `food_items`
--
ALTER TABLE `food_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `food_items_title_unique` (`title`);

--
-- Indexes for table `food_item_food_schedule`
--
ALTER TABLE `food_item_food_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_schedules`
--
ALTER TABLE `food_schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grading_scales`
--
ALTER TABLE `grading_scales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grading_types`
--
ALTER TABLE `grading_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `grading_types_title_unique` (`title`),
  ADD UNIQUE KEY `grading_types_slug_unique` (`slug`);

--
-- Indexes for table `guardian_details`
--
ALTER TABLE `guardian_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hostels`
--
ALTER TABLE `hostels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hostels_name_unique` (`name`);

--
-- Indexes for table `hostel_meals`
--
ALTER TABLE `hostel_meals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `library_circulations`
--
ALTER TABLE `library_circulations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `library_circulations_user_type_unique` (`user_type`),
  ADD UNIQUE KEY `library_circulations_slug_unique` (`slug`),
  ADD UNIQUE KEY `library_circulations_code_prefix_unique` (`code_prefix`);

--
-- Indexes for table `library_members`
--
ALTER TABLE `library_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `months`
--
ALTER TABLE `months`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `months_title_unique` (`title`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parent_details`
--
ALTER TABLE `parent_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_settings`
--
ALTER TABLE `payment_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payroll_heads`
--
ALTER TABLE `payroll_heads`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payroll_heads_title_unique` (`title`),
  ADD UNIQUE KEY `payroll_heads_slug_unique` (`slug`);

--
-- Indexes for table `payroll_masters`
--
ALTER TABLE `payroll_masters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `residents`
--
ALTER TABLE `residents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resident_histories`
--
ALTER TABLE `resident_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_types`
--
ALTER TABLE `room_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `room_types_title_unique` (`title`);

--
-- Indexes for table `routes`
--
ALTER TABLE `routes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `routes_title_unique` (`title`);

--
-- Indexes for table `route_vehicles`
--
ALTER TABLE `route_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salary_pays`
--
ALTER TABLE `salary_pays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semesters`
--
ALTER TABLE `semesters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `semesters_semester_unique` (`semester`),
  ADD UNIQUE KEY `semesters_slug_unique` (`slug`);

--
-- Indexes for table `semester_subject`
--
ALTER TABLE `semester_subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_emails`
--
ALTER TABLE `sms_emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_settings`
--
ALTER TABLE `sms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `staff_reg_no_unique` (`reg_no`);

--
-- Indexes for table `staff_designations`
--
ALTER TABLE `staff_designations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `staff_designations_title_unique` (`title`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_reg_no_unique` (`reg_no`);

--
-- Indexes for table `student_guardians`
--
ALTER TABLE `student_guardians`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_statuses`
--
ALTER TABLE `student_statuses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_statuses_title_unique` (`title`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_heads`
--
ALTER TABLE `transaction_heads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transport_histories`
--
ALTER TABLE `transport_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transport_users`
--
ALTER TABLE `transport_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vehicles_number_unique` (`number`);

--
-- Indexes for table `vehicle_staffs`
--
ALTER TABLE `vehicle_staffs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `years`
--
ALTER TABLE `years`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `years_title_unique` (`title`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academic_infos`
--
ALTER TABLE `academic_infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `addressinfos`
--
ALTER TABLE `addressinfos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `alert_settings`
--
ALTER TABLE `alert_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `assignments`
--
ALTER TABLE `assignments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assignment_answers`
--
ALTER TABLE `assignment_answers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendance_masters`
--
ALTER TABLE `attendance_masters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendance_statuses`
--
ALTER TABLE `attendance_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `beds`
--
ALTER TABLE `beds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bed_statuses`
--
ALTER TABLE `bed_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `book_categories`
--
ALTER TABLE `book_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `book_issues`
--
ALTER TABLE `book_issues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `book_masters`
--
ALTER TABLE `book_masters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `book_statuses`
--
ALTER TABLE `book_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `class_routines`
--
ALTER TABLE `class_routines`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `days`
--
ALTER TABLE `days`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `downloads`
--
ALTER TABLE `downloads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eating_times`
--
ALTER TABLE `eating_times`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_settings`
--
ALTER TABLE `email_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_mark_ledgers`
--
ALTER TABLE `exam_mark_ledgers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_schedules`
--
ALTER TABLE `exam_schedules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faculties`
--
ALTER TABLE `faculties`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `faculty_semester`
--
ALTER TABLE `faculty_semester`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fee_collections`
--
ALTER TABLE `fee_collections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fee_heads`
--
ALTER TABLE `fee_heads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fee_masters`
--
ALTER TABLE `fee_masters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `food_categories`
--
ALTER TABLE `food_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `food_items`
--
ALTER TABLE `food_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `food_item_food_schedule`
--
ALTER TABLE `food_item_food_schedule`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `food_schedules`
--
ALTER TABLE `food_schedules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `grading_scales`
--
ALTER TABLE `grading_scales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `grading_types`
--
ALTER TABLE `grading_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `guardian_details`
--
ALTER TABLE `guardian_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hostels`
--
ALTER TABLE `hostels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hostel_meals`
--
ALTER TABLE `hostel_meals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `library_circulations`
--
ALTER TABLE `library_circulations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `library_members`
--
ALTER TABLE `library_members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `months`
--
ALTER TABLE `months`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parent_details`
--
ALTER TABLE `parent_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payment_settings`
--
ALTER TABLE `payment_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payroll_heads`
--
ALTER TABLE `payroll_heads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payroll_masters`
--
ALTER TABLE `payroll_masters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=446;

--
-- AUTO_INCREMENT for table `residents`
--
ALTER TABLE `residents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `resident_histories`
--
ALTER TABLE `resident_histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `room_types`
--
ALTER TABLE `room_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `routes`
--
ALTER TABLE `routes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `route_vehicles`
--
ALTER TABLE `route_vehicles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salary_pays`
--
ALTER TABLE `salary_pays`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `semesters`
--
ALTER TABLE `semesters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `semester_subject`
--
ALTER TABLE `semester_subject`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sms_emails`
--
ALTER TABLE `sms_emails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sms_settings`
--
ALTER TABLE `sms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `staff_designations`
--
ALTER TABLE `staff_designations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student_guardians`
--
ALTER TABLE `student_guardians`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student_statuses`
--
ALTER TABLE `student_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction_heads`
--
ALTER TABLE `transaction_heads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transport_histories`
--
ALTER TABLE `transport_histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transport_users`
--
ALTER TABLE `transport_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicle_staffs`
--
ALTER TABLE `vehicle_staffs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `years`
--
ALTER TABLE `years`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
