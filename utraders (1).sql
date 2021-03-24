-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2020 at 09:41 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `utraders`
--

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `branch_id` int(11) NOT NULL,
  `branch_name` varchar(255) NOT NULL,
  `branch_address` varchar(255) NOT NULL,
  `branch_contact` varchar(255) NOT NULL,
  `is_active` bit(1) NOT NULL DEFAULT b'0',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` varchar(32) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`branch_id`, `branch_name`, `branch_address`, `branch_contact`, `is_active`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'BWN', 'Bhawalnagar', '00', b'1', '2020-02-15 13:14:26', '3671t01b-a322-11e9-920d-84ef1w7c', NULL, NULL),
(2, 'Melsi', 'Melsi', '00', b'0', '2020-02-15 21:22:33', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-02-18 20:47:55', '3671t01b-a322-11e9-920d-84ef1w7c'),
(3, 'BWP', 'BWP', '00', b'0', '2020-02-18 20:48:20', '3671t01b-a322-11e9-920d-84ef1w7c', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(32) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `active` bit(1) NOT NULL DEFAULT b'1',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` varchar(32) NOT NULL,
  `user_role_id` varchar(32) NOT NULL,
  `secret_code` varchar(255) DEFAULT NULL,
  `updated_by` varchar(32) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `profile_image`, `active`, `created_at`, `created_by`, `user_role_id`, `secret_code`, `updated_by`, `updated_at`) VALUES
('3671t01b-a322-11e9-920d-84ef1w7c', 'Umar', 'Majeed', 'umarmajeed2011@gmail.com', '$2y$10$gInpCXzGfMZNDiwHiZnoIeB.oahPC0nq0iaz9NuwzPRajnWB60tTe', '15804123059192.JPG', b'1', '2020-01-24 05:09:34', '', '83dbdd12-fb78-4433-832a-da8f8516', '9c3a1eb9cf2ae1fd95c342d77fa03190f2141748', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-02-15 11:58:42'),
('93544797-ba31-4ab1-ae05-75e93fea', 'Amir', 'Hussain', 'amir@gmail.com', '$2y$10$bv4HMIe61vJBaMPfOuei3.K1yfS6WtaQFHNsGRztmvR6RjWEcAgnW', NULL, b'1', '2020-01-25 05:58:05', '3671t01b-a322-11e9-920d-84ef1w7c', '21d38141-b56c-42c0-ab0e-d528d33a', NULL, NULL, '2020-02-15 11:48:52'),
('a1c5835f-0fde-4d00-aece-36fc7677', 'Waheed', 'Ch', 'Abdulwaheedch.bwn@gmail.com', '$2y$10$pS.bpXXXvGEs2xaB07Wfkuqq/TckQM4XwfYNAcRAfLMC4l8umVBYG', NULL, b'1', '2020-02-15 14:58:43', '3671t01b-a322-11e9-920d-84ef1w7c', '21d38141-b56c-42c0-ab0e-d528d33a', NULL, NULL, '2020-02-15 04:58:43');

-- --------------------------------------------------------

--
-- Table structure for table `user_branches_permissions`
--

CREATE TABLE `user_branches_permissions` (
  `user_branches_permission_id` int(11) NOT NULL,
  `user_id` varchar(32) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `is_active` bit(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` varchar(32) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_by` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_branches_permissions`
--

INSERT INTO `user_branches_permissions` (`user_branches_permission_id`, `user_id`, `branch_id`, `is_active`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(2, '3671t01b-a322-11e9-920d-84ef1w7c', 1, b'1', '2020-02-15 13:14:26', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-02-15 13:14:26', ''),
(3, 'a1c5835f-0fde-4d00-aece-36fc7677', 1, b'1', '2020-02-15 15:01:18', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-02-15 05:01:18', ''),
(4, '3671t01b-a322-11e9-920d-84ef1w7c', 3, b'1', '2020-02-18 20:48:38', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-02-18 10:48:38', ''),
(5, '3671t01b-a322-11e9-920d-84ef1w7c', 2, b'1', '2020-02-18 20:48:48', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-02-18 10:48:48', ''),
(6, 'a1c5835f-0fde-4d00-aece-36fc7677', 2, b'1', '2020-02-18 20:48:59', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-02-18 10:48:59', ''),
(7, 'a1c5835f-0fde-4d00-aece-36fc7677', 3, b'1', '2020-02-18 20:49:17', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-02-18 10:49:17', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_permissions`
--

CREATE TABLE `user_permissions` (
  `user_permission_id` varchar(32) NOT NULL,
  `user_permission_name` varchar(255) NOT NULL,
  `user_permission_route` varchar(255) NOT NULL,
  `user_permission_url` varchar(255) NOT NULL,
  `user_permission_type` varchar(5) NOT NULL,
  `created_by` varchar(32) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_permissions`
--

INSERT INTO `user_permissions` (`user_permission_id`, `user_permission_name`, `user_permission_route`, `user_permission_url`, `user_permission_type`, `created_by`, `created_at`) VALUES
('02cc6753-664a-4810-8571-e3d13671', 'edit claim type', 'edit_claim_type_save', 'edit-claim-type', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-02-15 12:34:51'),
('0b9f50f8-5a2b-487a-99c9-c3a9713e', 'User Branches List', 'user_branches_list', 'branches-list', 'get', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-25 06:17:12'),
('0f28157b-ba89-447b-afa2-796ddf6f', 'Super Admin', 'superadmin', 'superadmin', 'get', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-02-15 12:38:35'),
('130d9f9b-696f-4932-b2fc-05e0476d', 'User Permissions Listing', 'all_user_permissions', 'user-permissions', 'get', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-24 05:09:35'),
('1622aecc-2c93-4c20-a3e8-909633c0', 'Edit User', 'edit_user_save', 'edit-user', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-02-15 11:32:03'),
('1f46d670-184d-44e8-8e52-4dcecac0', 'User Roles Permissions List', 'all_user_roles_permissions', 'user-roles-permissions', 'get', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-24 05:09:35'),
('225c4c2d-f769-4fbb-ac8f-53198bd7', 'cashbacks List', 'cashbacks_list', 'cashbacks', 'get', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-27 20:34:11'),
('2323ec85-6941-4e5a-a6d7-b9ae53b4', 'Add Purchase', 'add_purchase_save', 'add-purchase', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-26 20:10:19'),
('248ea111-b461-4f15-bce5-23c69e56', 'Delete Claim', 'delete_claim', 'delete-claim', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-02-18 12:27:58'),
('2ea37ee5-74ca-4d9f-8877-4b9300af', 'Edit Cashback', 'edit_cashback_save', 'edit-cashback', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-27 20:35:51'),
('329e1729-dbf2-434b-8601-cb360d7d', 'Add User Permissions', 'add_user_permission_save', 'add-user-permission', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-24 05:09:35'),
('3442fbd1-b08f-491d-ac31-b1394099', 'Reports', 'reports', 'reports', 'get', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-02-15 00:10:33'),
('349cd837-7ffc-4ed8-9005-4476cbef', 'Edit Product', 'edit_product_save', 'edit-product', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-02-14 23:07:36'),
('34c8da79-d170-4a7f-8bdb-bbb18910', 'Customers List', 'customers_list', 'customers', 'get', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-25 22:18:54'),
('356b64aa-25eb-4d7d-b302-b28a8197', 'Add User Role', 'add_user_role_save', 'add-user-role', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-24 05:09:35'),
('3571ceea-0081-4cbe-82eb-572f2af5', 'Edit Sale', 'edit_sale_save', 'edit-sale', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-26 22:34:05'),
('35a38441-f205-405a-9612-c31a6258', 'Delete User Role', 'delete_user_role', 'delete-user-role', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-24 05:09:35'),
('3629647d-79a1-4912-a7e7-dc9c4425', 'Delete Branch Permissions', 'delete_branch_permissions', 'delete-branch-permissions', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-25 01:47:01'),
('38d0e48e-138e-4728-bd62-1cd0f8ec', 'Add Branch Permission', 'add_branch_permissions_save', 'add-branch-permissions', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-25 01:46:32'),
('3a1e1b3b-f293-454d-98c1-9009b47c', 'Edit Branch', 'edit_branch_save', 'edit-branch', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-24 05:09:35'),
('3a4e3d88-909d-4cfa-a176-4a78e650', 'Add User', 'add_user_save', 'add-user', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-24 05:09:35'),
('4029234b-6002-40f3-bd39-57ac68e9', 'Admin', 'admin', 'admin', 'get', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-02-15 12:38:16'),
('4db2482d-c853-430b-9319-16a71957', 'Delete User Permissions', 'delete_user_permission', 'delete-user-permission', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-24 05:09:35'),
('59b12ba0-3a1d-438d-a42c-bfa7d532', 'Delete Cashback', 'delete_cashback', 'delete-cashback', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-02-18 20:38:08'),
('5ff39bbd-cf0e-48c3-ab63-f7a587aa', 'Edit Customer', 'edit_customer_save', 'edit-customer', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-25 22:20:19'),
('639fe752-b383-484b-a1e2-bd4245ae', 'Delete Country', 'delete_country', 'delete-country', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-24 05:09:35'),
('66bb8afd-7975-4b1a-8db7-1087643d', 'Account', 'account', 'account', 'get', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-24 05:09:35'),
('6d48d405-5dcf-49ba-a2a4-79dc3046', 'Edit Vendor', 'edit_vendor_save', 'edit-vendor', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-25 01:28:48'),
('728843ac-fa8c-4a69-8056-d818344f', 'Edit User Role', 'edit_user_role_save', 'edit-user-role', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-24 05:09:35'),
('7806afdb-d68b-45ee-8a71-f5a933d3', 'Vendors Account', 'vendor_account', 'vendor-account', 'get', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-31 01:41:38'),
('78c3c0ab-4e1d-4c85-9b14-9bf05621', 'Get Country\'s States', 'get_country_states', 'get-states-by-country', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-24 05:09:35'),
('7c23d2a8-da65-47d8-9c1f-171aff8f', 'Excel Export', 'excelexport', 'excelexport', 'get', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-02-15 08:05:38'),
('8205e1f6-e5f6-4f65-aa01-74ec204e', 'Add Sale Save', 'add_sale_save', 'add-sale', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-26 22:33:38'),
('84c9ed15-a3a2-4f5d-a96b-f465e8bf', 'Users List', 'users_list', 'users', 'get', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-24 05:09:35'),
('8544e6e3-49a0-495e-ae70-0749dbde', 'User Roles Listing', 'all_user_roles', 'user-roles', 'get', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-24 05:09:35'),
('85aad9ed-e45e-4901-9c1d-61e482c2', 'Add Vendor', 'add_vendor_save', 'add-vendor', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-24 05:09:35'),
('8c506dd1-403f-4254-a653-b51e0b2d', 'Customers Account', 'customer_account', 'customer-account', 'get', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-29 06:26:22'),
('93f6aeb5-856b-4003-b0bd-ba5ef130', 'Branches List', 'branches_list', 'branches', 'get', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-24 05:09:35'),
('a19e7798-20cb-41f6-9f1e-b0b94fc0', 'Branch Permission List', 'branch_permissions_list', 'branch-permissions', 'get', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-25 01:45:51'),
('a5df97ba-2009-4b33-ba1f-81e8e13d', 'Add Branch', 'add_branch_save', 'add-branch', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-24 05:09:35'),
('a8924ac7-1c96-4ec7-b773-71afb691', 'Sales List', 'sales_list', 'sales', 'get', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-26 22:32:41'),
('a9497ec3-27cf-4606-b8d5-26a770e5', 'Vendors List', 'vendors_list', 'vendors', 'get', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-24 05:09:35'),
('a99900d9-1045-4b27-99ae-a198f4d1', 'Add cashback Save', 'add_cashback_save', 'add-cashback', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-27 20:35:13'),
('aa07661f-527b-40a1-aa1a-cd4de92a', 'Add cashback Page', 'add_cashback', 'add-cashback', 'get', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-27 20:34:42'),
('ab389ff5-71da-4be1-811b-d80330c4', 'Edit Purchase', 'edit_purchase_save', 'edit-purchase', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-26 20:10:49'),
('b8021ec2-a7c8-4289-af72-91aac0a6', 'Claim Types', 'claim_types', 'claim-types', 'get', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-02-15 12:21:00'),
('b828137c-df3a-4fa2-a1a1-08c6b2ba', 'Add Product', 'add_product_save', 'add-product', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-24 05:09:35'),
('b82b107d-94af-4eab-9d41-207b4ede', 'Edit Claim', 'edit_claim_save', 'edit-claim', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-02-18 12:44:51'),
('bfd82c8f-316a-4df4-a487-e8859eb6', 'Purchase List', 'purchases_list', 'purchases', 'get', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-26 20:09:49'),
('c0070e4f-437a-4a1b-b38b-6a26e90a', 'Edit Account', 'account_save', 'account', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-24 05:09:35'),
('c0177c68-3fd2-4047-bed3-9fdd6b58', 'Add Claim', 'add_claim', 'add-claim', 'get', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-31 02:16:58'),
('c1841748-79b2-40e2-86d0-b020f4d9', 'Assign User Role\'s Permissions', 'add_user_roles_permissions_save', 'add-user-roles-permissions', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-24 05:09:35'),
('cc4703b2-9c05-4cb0-9e89-9a168383', 'Products List', 'products_list', 'products', 'get', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-24 05:09:35'),
('ce93d50b-f33f-4465-86a5-eb3bb097', 'Stock Detail', 'stock_detail', 'stock-detail', 'get', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-04-21 15:45:27'),
('dcb94f81-61aa-4832-83ba-ca91412d', 'Add Claim', 'add_claim_save', 'add-claim', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-31 02:17:30'),
('dd62429d-9d4e-4f5f-b3d7-ae8f65a7', 'Claim List', 'claims_list', 'claims', 'get', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-31 02:16:11'),
('e30a1e09-1a03-41ca-94d6-1874ece3', 'Add Claim Type', 'add_claim_type_save', 'add-claim-type', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-02-15 12:34:12'),
('e6ad0152-6247-4b52-bed8-c57705ef', 'Add Cusotmers', 'add_customer_save', 'add-customer', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-25 22:19:45'),
('e798d66c-6094-44bd-b8a4-f8559d44', 'Delete City', 'delete_city', 'delete-city', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-24 05:09:35'),
('e832655c-38aa-4a57-9324-45dc9744', 'DB Backup', 'db_backup', 'db-backup', 'get', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-26 23:10:31'),
('eed5906d-e999-4ac7-9c68-9e950ada', 'Delete Vendor', 'delete_vendor', 'delete-vendor', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-25 01:33:11'),
('f00f362b-e9e5-4729-8a06-7030cf73', 'Generate Excel', 'generatexls', 'generatexls', 'get', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-02-15 08:06:00'),
('f5205e46-8042-4609-8078-df6b1327', 'Add Sale Page', 'add_sale', 'add-sale', 'get', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-26 23:30:09'),
('f7cd753c-345f-4de9-a46c-f2c3636b', 'Delete purchase', 'delete_purchase', 'delete-purchase', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-02-18 14:11:22'),
('f81dceee-e9f9-4ea5-8918-189657bf', 'Edit User Permissions', 'edit_user_permission_save', 'edit-user-permission', 'post', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-24 05:09:35');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_role_id` varchar(32) NOT NULL,
  `user_role_name` varchar(255) NOT NULL,
  `created_by` varchar(32) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_role_id`, `user_role_name`, `created_by`, `created_at`) VALUES
('21d38141-b56c-42c0-ab0e-d528d33a', 'Admin', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-24 05:09:35'),
('3045dc95-5161-4c3e-9381-ab0b053f', 'Moderator', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-02-15 05:54:27'),
('83dbdd12-fb78-4433-832a-da8f8516', 'Super Admin', '3671t01b-a322-11e9-920d-84ef1w7c', '2020-01-24 05:09:35');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles_permissions`
--

CREATE TABLE `user_roles_permissions` (
  `user_roles_permissions_id` varchar(32) NOT NULL,
  `user_role_id` varchar(32) NOT NULL,
  `user_permission_id` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_roles_permissions`
--

INSERT INTO `user_roles_permissions` (`user_roles_permissions_id`, `user_role_id`, `user_permission_id`) VALUES
('07c04689-e140-41bd-8b77-7152a62d', '21d38141-b56c-42c0-ab0e-d528d33a', 'bfd82c8f-316a-4df4-a487-e8859eb6'),
('0990cfbb-428d-49de-96dc-8db400b4', '21d38141-b56c-42c0-ab0e-d528d33a', '8544e6e3-49a0-495e-ae70-0749dbde'),
('0d538769-3d73-4b45-8eb9-b62d9581', '3045dc95-5161-4c3e-9381-ab0b053f', 'aa07661f-527b-40a1-aa1a-cd4de92a'),
('0ea025c6-5622-4b3c-8e3f-03fe22ed', '21d38141-b56c-42c0-ab0e-d528d33a', 'e6ad0152-6247-4b52-bed8-c57705ef'),
('0eaa8423-eb2b-4223-8c21-51e86d07', '83dbdd12-fb78-4433-832a-da8f8516', '7c23d2a8-da65-47d8-9c1f-171aff8f'),
('1155db99-b313-4844-ac68-888d4b2b', '3045dc95-5161-4c3e-9381-ab0b053f', 'b82b107d-94af-4eab-9d41-207b4ede'),
('13d373e6-bdad-4bf8-a911-22938996', '3045dc95-5161-4c3e-9381-ab0b053f', '2ea37ee5-74ca-4d9f-8877-4b9300af'),
('14ab4405-211f-48d6-8407-45589a23', '83dbdd12-fb78-4433-832a-da8f8516', '78c3c0ab-4e1d-4c85-9b14-9bf05621'),
('1864b6c9-1a86-4b9f-b0ea-9ed5cf09', '83dbdd12-fb78-4433-832a-da8f8516', 'f81dceee-e9f9-4ea5-8918-189657bf'),
('1afa729e-f55c-4884-9156-70fffcab', '21d38141-b56c-42c0-ab0e-d528d33a', '7806afdb-d68b-45ee-8a71-f5a933d3'),
('1dc71308-7423-4e66-a38c-25e8af1d', '83dbdd12-fb78-4433-832a-da8f8516', '356b64aa-25eb-4d7d-b302-b28a8197'),
('22ab50a8-9268-48f9-947c-b15f1b43', '83dbdd12-fb78-4433-832a-da8f8516', 'a8924ac7-1c96-4ec7-b773-71afb691'),
('237bb344-9d9e-42e7-a486-c25e4719', '83dbdd12-fb78-4433-832a-da8f8516', 'bfd82c8f-316a-4df4-a487-e8859eb6'),
('244537ee-142c-4c72-b0b8-85306fdc', '3045dc95-5161-4c3e-9381-ab0b053f', '7806afdb-d68b-45ee-8a71-f5a933d3'),
('2488f21d-8d82-423e-a796-d79117db', '83dbdd12-fb78-4433-832a-da8f8516', 'a9497ec3-27cf-4606-b8d5-26a770e5'),
('24fb6a57-6003-4da5-83db-8a6b0c36', '21d38141-b56c-42c0-ab0e-d528d33a', '8205e1f6-e5f6-4f65-aa01-74ec204e'),
('2800a837-5a46-4adf-a819-d94f2d1c', '3045dc95-5161-4c3e-9381-ab0b053f', 'e30a1e09-1a03-41ca-94d6-1874ece3'),
('2848e297-e7cd-486b-84ee-7a48727e', '83dbdd12-fb78-4433-832a-da8f8516', 'dd62429d-9d4e-4f5f-b3d7-ae8f65a7'),
('2abe0db7-4353-4c1e-8379-65a85b67', '21d38141-b56c-42c0-ab0e-d528d33a', '3571ceea-0081-4cbe-82eb-572f2af5'),
('2ba42eda-ad67-44c7-910b-66b36442', '83dbdd12-fb78-4433-832a-da8f8516', '0b9f50f8-5a2b-487a-99c9-c3a9713e'),
('2e54bf41-32d4-414d-b1af-26f6c8d2', '3045dc95-5161-4c3e-9381-ab0b053f', '4029234b-6002-40f3-bd39-57ac68e9'),
('33caea92-f9ca-43a0-8e6f-97c464fc', '21d38141-b56c-42c0-ab0e-d528d33a', '66bb8afd-7975-4b1a-8db7-1087643d'),
('349b7a04-5639-4d0b-905b-6c324270', '83dbdd12-fb78-4433-832a-da8f8516', 'eed5906d-e999-4ac7-9c68-9e950ada'),
('35517250-a75e-49fe-b1b1-6f1f1bdd', '21d38141-b56c-42c0-ab0e-d528d33a', '3a1e1b3b-f293-454d-98c1-9009b47c'),
('36de9561-228d-4518-a8bd-6a29b72f', '83dbdd12-fb78-4433-832a-da8f8516', '4db2482d-c853-430b-9319-16a71957'),
('3d511d2e-cd1c-44ab-98b5-a8c8b992', '21d38141-b56c-42c0-ab0e-d528d33a', '2ea37ee5-74ca-4d9f-8877-4b9300af'),
('3fb1af8d-d381-4826-8242-2453e5f1', '3045dc95-5161-4c3e-9381-ab0b053f', 'f00f362b-e9e5-4729-8a06-7030cf73'),
('3fb76717-ff7d-4f20-8d3f-ce1cb50c', '83dbdd12-fb78-4433-832a-da8f8516', '34c8da79-d170-4a7f-8bdb-bbb18910'),
('413c279a-cae5-4ace-a434-ccdc5447', '83dbdd12-fb78-4433-832a-da8f8516', '639fe752-b383-484b-a1e2-bd4245ae'),
('435b1743-37bc-4c07-9dea-472bac1d', '3045dc95-5161-4c3e-9381-ab0b053f', 'dd62429d-9d4e-4f5f-b3d7-ae8f65a7'),
('44022b61-0c34-40be-a268-67063b63', '83dbdd12-fb78-4433-832a-da8f8516', 'c1841748-79b2-40e2-86d0-b020f4d9'),
('4501b19e-6b5e-4ab8-a28e-aef6279c', '83dbdd12-fb78-4433-832a-da8f8516', 'aa07661f-527b-40a1-aa1a-cd4de92a'),
('47a92d9d-68fd-4dbc-9d2d-3afb8e01', '3045dc95-5161-4c3e-9381-ab0b053f', 'c0177c68-3fd2-4047-bed3-9fdd6b58'),
('4a7ce3cf-a663-486f-aad0-1a714e32', '21d38141-b56c-42c0-ab0e-d528d33a', '3442fbd1-b08f-491d-ac31-b1394099'),
('4da58b61-eda1-4ef5-b9fd-cd116ae6', '83dbdd12-fb78-4433-832a-da8f8516', '130d9f9b-696f-4932-b2fc-05e0476d'),
('4db5cdfa-bbf0-4401-af01-5856c3f4', '21d38141-b56c-42c0-ab0e-d528d33a', 'dcb94f81-61aa-4832-83ba-ca91412d'),
('4fe15908-886d-464c-9dd9-57e39fca', '83dbdd12-fb78-4433-832a-da8f8516', 'a5df97ba-2009-4b33-ba1f-81e8e13d'),
('51b1ec4b-ceb1-4d6b-9995-f52bb306', '83dbdd12-fb78-4433-832a-da8f8516', 'b8021ec2-a7c8-4289-af72-91aac0a6'),
('520bd595-8aef-46ae-be33-2a326973', '83dbdd12-fb78-4433-832a-da8f8516', '3571ceea-0081-4cbe-82eb-572f2af5'),
('5254bc55-fd0d-435e-87a5-9406214e', '83dbdd12-fb78-4433-832a-da8f8516', 'b828137c-df3a-4fa2-a1a1-08c6b2ba'),
('52884f86-df7b-4bf3-a162-825f8b75', '83dbdd12-fb78-4433-832a-da8f8516', 'f00f362b-e9e5-4729-8a06-7030cf73'),
('53a02c90-fa2a-4cdd-a898-a7a44123', '21d38141-b56c-42c0-ab0e-d528d33a', '85aad9ed-e45e-4901-9c1d-61e482c2'),
('5452756f-6148-4525-b05a-b9d04482', '83dbdd12-fb78-4433-832a-da8f8516', '728843ac-fa8c-4a69-8056-d818344f'),
('5d5a397f-8b6c-49a0-b177-70d74299', '21d38141-b56c-42c0-ab0e-d528d33a', 'b82b107d-94af-4eab-9d41-207b4ede'),
('5e2f9a01-9060-4d73-98a2-637ac705', '83dbdd12-fb78-4433-832a-da8f8516', 'dcb94f81-61aa-4832-83ba-ca91412d'),
('5e486a83-b52b-4c97-9652-11cf7525', '83dbdd12-fb78-4433-832a-da8f8516', '59b12ba0-3a1d-438d-a42c-bfa7d532'),
('631256d9-1920-4812-8709-443a8ba5', '83dbdd12-fb78-4433-832a-da8f8516', '1f46d670-184d-44e8-8e52-4dcecac0'),
('65071411-6f55-4966-91b0-8a132c96', '21d38141-b56c-42c0-ab0e-d528d33a', 'c0070e4f-437a-4a1b-b38b-6a26e90a'),
('67924741-66e1-4034-bef0-9abc643b', '21d38141-b56c-42c0-ab0e-d528d33a', 'cc4703b2-9c05-4cb0-9e89-9a168383'),
('6952b13b-77d4-4487-a340-b152b3e5', '3045dc95-5161-4c3e-9381-ab0b053f', '2323ec85-6941-4e5a-a6d7-b9ae53b4'),
('6987bd94-836e-4fe6-a6d5-02edd8c6', '83dbdd12-fb78-4433-832a-da8f8516', '4029234b-6002-40f3-bd39-57ac68e9'),
('6a91747f-78e0-40d1-9432-281081eb', '83dbdd12-fb78-4433-832a-da8f8516', '35a38441-f205-405a-9612-c31a6258'),
('6b073e3f-7e93-4ef0-a419-d6d526e4', '83dbdd12-fb78-4433-832a-da8f8516', 'e798d66c-6094-44bd-b8a4-f8559d44'),
('6c349bd3-e7d2-4c65-8174-23ae1c35', '83dbdd12-fb78-4433-832a-da8f8516', '02cc6753-664a-4810-8571-e3d13671'),
('6c4faadf-930f-4ac0-a227-248b7eae', '21d38141-b56c-42c0-ab0e-d528d33a', 'e30a1e09-1a03-41ca-94d6-1874ece3'),
('6d7a80bc-17c0-41bf-9846-0e958366', '21d38141-b56c-42c0-ab0e-d528d33a', '2323ec85-6941-4e5a-a6d7-b9ae53b4'),
('6dbdecb2-96b8-4255-8f4b-c360452c', '3045dc95-5161-4c3e-9381-ab0b053f', '225c4c2d-f769-4fbb-ac8f-53198bd7'),
('6e4131f9-af0d-4c82-b077-10e7fae1', '83dbdd12-fb78-4433-832a-da8f8516', '7806afdb-d68b-45ee-8a71-f5a933d3'),
('701d16b2-1661-4601-bb38-3900fe66', '83dbdd12-fb78-4433-832a-da8f8516', '3a4e3d88-909d-4cfa-a176-4a78e650'),
('71dab15c-7912-4121-b048-2e536ff6', '21d38141-b56c-42c0-ab0e-d528d33a', '7c23d2a8-da65-47d8-9c1f-171aff8f'),
('767ad27c-5cde-468a-aebe-9fd86721', '3045dc95-5161-4c3e-9381-ab0b053f', '3442fbd1-b08f-491d-ac31-b1394099'),
('773f58f0-4c4c-4673-90a3-de8b54b8', '83dbdd12-fb78-4433-832a-da8f8516', '5ff39bbd-cf0e-48c3-ab63-f7a587aa'),
('79039a7b-985e-4512-8cf1-4e4559ac', '83dbdd12-fb78-4433-832a-da8f8516', 'c0070e4f-437a-4a1b-b38b-6a26e90a'),
('793b74ff-d681-4559-8611-1e273fb7', '21d38141-b56c-42c0-ab0e-d528d33a', '728843ac-fa8c-4a69-8056-d818344f'),
('7a3c87a6-4bbd-40cd-9e06-3bc0a72b', '3045dc95-5161-4c3e-9381-ab0b053f', '02cc6753-664a-4810-8571-e3d13671'),
('7c06124f-86ce-406d-ba65-a52937d4', '83dbdd12-fb78-4433-832a-da8f8516', '3442fbd1-b08f-491d-ac31-b1394099'),
('7cb56358-aa25-49aa-8b9b-7019f142', '83dbdd12-fb78-4433-832a-da8f8516', '2323ec85-6941-4e5a-a6d7-b9ae53b4'),
('7f9b9902-24bd-4137-a2ef-3ecfa27a', '83dbdd12-fb78-4433-832a-da8f8516', '8c506dd1-403f-4254-a653-b51e0b2d'),
('7fd50988-bdf1-45cd-b92c-dd2744ec', '83dbdd12-fb78-4433-832a-da8f8516', 'e832655c-38aa-4a57-9324-45dc9744'),
('7fff3f8a-51de-4c80-836f-01367d06', '21d38141-b56c-42c0-ab0e-d528d33a', 'a8924ac7-1c96-4ec7-b773-71afb691'),
('805ea79e-e263-4ffe-a331-9c8fb9ef', '21d38141-b56c-42c0-ab0e-d528d33a', 'dd62429d-9d4e-4f5f-b3d7-ae8f65a7'),
('8227114f-798c-43ea-a1a9-0f4a3966', '3045dc95-5161-4c3e-9381-ab0b053f', '3571ceea-0081-4cbe-82eb-572f2af5'),
('8bed4c8e-db7b-4c8c-ad10-f76b55c2', '83dbdd12-fb78-4433-832a-da8f8516', 'f5205e46-8042-4609-8078-df6b1327'),
('8c754895-d4a4-4ac3-9a51-6b1cb5f5', '21d38141-b56c-42c0-ab0e-d528d33a', '02cc6753-664a-4810-8571-e3d13671'),
('8e0c3a7a-c536-4f84-b793-2a17b93e', '3045dc95-5161-4c3e-9381-ab0b053f', 'ab389ff5-71da-4be1-811b-d80330c4'),
('8e176e2b-7305-4d96-9703-41a56467', '21d38141-b56c-42c0-ab0e-d528d33a', '6d48d405-5dcf-49ba-a2a4-79dc3046'),
('8ed907bc-ce4a-459a-82c6-67fbc10d', '83dbdd12-fb78-4433-832a-da8f8516', '248ea111-b461-4f15-bce5-23c69e56'),
('90d03327-ed3e-4592-9245-1860006f', '21d38141-b56c-42c0-ab0e-d528d33a', 'c0177c68-3fd2-4047-bed3-9fdd6b58'),
('92f4fa20-93cd-4897-be06-23068bc0', '83dbdd12-fb78-4433-832a-da8f8516', '66bb8afd-7975-4b1a-8db7-1087643d'),
('942140cc-b302-4336-84f8-e22443ab', '21d38141-b56c-42c0-ab0e-d528d33a', '93f6aeb5-856b-4003-b0bd-ba5ef130'),
('994e178d-efa0-4122-be02-ef67c8bc', '21d38141-b56c-42c0-ab0e-d528d33a', '225c4c2d-f769-4fbb-ac8f-53198bd7'),
('9cf459e6-d938-4eb0-8887-dea1cce5', '83dbdd12-fb78-4433-832a-da8f8516', '8205e1f6-e5f6-4f65-aa01-74ec204e'),
('9e7c19bf-ff8f-4da6-bde8-448d7801', '83dbdd12-fb78-4433-832a-da8f8516', '2ea37ee5-74ca-4d9f-8877-4b9300af'),
('a056c632-57c6-466b-80dc-07258abe', '21d38141-b56c-42c0-ab0e-d528d33a', '248ea111-b461-4f15-bce5-23c69e56'),
('a0e06215-6d78-4bf3-9dca-773e3f36', '21d38141-b56c-42c0-ab0e-d528d33a', 'ab389ff5-71da-4be1-811b-d80330c4'),
('a2dc4df1-e092-4ebd-b18d-6b9d3e1a', '21d38141-b56c-42c0-ab0e-d528d33a', 'b8021ec2-a7c8-4289-af72-91aac0a6'),
('a4c13a48-4ff0-4a9b-870a-31ff0220', '21d38141-b56c-42c0-ab0e-d528d33a', 'a99900d9-1045-4b27-99ae-a198f4d1'),
('a53e3c1c-5d53-4804-ab22-0dc5a235', '83dbdd12-fb78-4433-832a-da8f8516', 'e6ad0152-6247-4b52-bed8-c57705ef'),
('a618ce1b-8c3e-4bbc-9d8f-295785eb', '83dbdd12-fb78-4433-832a-da8f8516', 'ce93d50b-f33f-4465-86a5-eb3bb097'),
('aaee81fd-a48a-4ab3-a354-c2b9b8f9', '83dbdd12-fb78-4433-832a-da8f8516', '84c9ed15-a3a2-4f5d-a96b-f465e8bf'),
('abcec9fe-958a-4edd-a77d-a9ce89fc', '3045dc95-5161-4c3e-9381-ab0b053f', '8c506dd1-403f-4254-a653-b51e0b2d'),
('ac9b52e2-0f60-4682-baf0-55d0c7e5', '21d38141-b56c-42c0-ab0e-d528d33a', '34c8da79-d170-4a7f-8bdb-bbb18910'),
('accc6dd7-a797-4b03-bddf-ee32b382', '21d38141-b56c-42c0-ab0e-d528d33a', '349cd837-7ffc-4ed8-9005-4476cbef'),
('aef9d202-e608-4c5c-8532-890814c5', '21d38141-b56c-42c0-ab0e-d528d33a', '3a4e3d88-909d-4cfa-a176-4a78e650'),
('b4c2e74d-632c-4e82-9e18-79db96a7', '83dbdd12-fb78-4433-832a-da8f8516', 'a99900d9-1045-4b27-99ae-a198f4d1'),
('b63586dd-0752-499e-ae8d-250c90ac', '83dbdd12-fb78-4433-832a-da8f8516', '8544e6e3-49a0-495e-ae70-0749dbde'),
('b7678047-d113-4bfd-b8ed-bfd05e1c', '83dbdd12-fb78-4433-832a-da8f8516', 'f7cd753c-345f-4de9-a46c-f2c3636b'),
('b88bd1b6-c7f5-4ed0-8c9a-6bbd5130', '21d38141-b56c-42c0-ab0e-d528d33a', 'aa07661f-527b-40a1-aa1a-cd4de92a'),
('ba7a46fb-3d41-4236-a6e5-98f46dc6', '83dbdd12-fb78-4433-832a-da8f8516', '3629647d-79a1-4912-a7e7-dc9c4425'),
('bec9e5e9-6b7d-4024-8819-7e9c3fd2', '83dbdd12-fb78-4433-832a-da8f8516', '225c4c2d-f769-4fbb-ac8f-53198bd7'),
('c08112e5-ca87-42b0-8445-02988500', '83dbdd12-fb78-4433-832a-da8f8516', '38d0e48e-138e-4728-bd62-1cd0f8ec'),
('c1234d5e-a759-4c92-b499-7d75a196', '21d38141-b56c-42c0-ab0e-d528d33a', '84c9ed15-a3a2-4f5d-a96b-f465e8bf'),
('c20c843b-c077-4b97-8940-d0bffd8f', '21d38141-b56c-42c0-ab0e-d528d33a', 'ce93d50b-f33f-4465-86a5-eb3bb097'),
('c22b3d50-a02a-40d0-878e-d9cf6b3e', '21d38141-b56c-42c0-ab0e-d528d33a', '5ff39bbd-cf0e-48c3-ab63-f7a587aa'),
('c292e3c8-72e5-4def-b9cc-39825284', '83dbdd12-fb78-4433-832a-da8f8516', '329e1729-dbf2-434b-8601-cb360d7d'),
('c9338389-3e30-437a-9634-8e48d9dd', '21d38141-b56c-42c0-ab0e-d528d33a', '8c506dd1-403f-4254-a653-b51e0b2d'),
('c93bd77c-f987-42f1-b654-ec0e1700', '83dbdd12-fb78-4433-832a-da8f8516', '0f28157b-ba89-447b-afa2-796ddf6f'),
('cb4761e7-58e1-4e56-8673-314789cf', '21d38141-b56c-42c0-ab0e-d528d33a', 'f00f362b-e9e5-4729-8a06-7030cf73'),
('ccd48054-3bc9-4554-b6c5-ac38f1ac', '83dbdd12-fb78-4433-832a-da8f8516', 'c0177c68-3fd2-4047-bed3-9fdd6b58'),
('ce1d6811-2de1-4bd2-9fc2-7bf6f0c9', '83dbdd12-fb78-4433-832a-da8f8516', '93f6aeb5-856b-4003-b0bd-ba5ef130'),
('cee7056a-6d10-442a-8d48-c65ccd0c', '83dbdd12-fb78-4433-832a-da8f8516', '1622aecc-2c93-4c20-a3e8-909633c0'),
('d15b2aa1-5d37-4c75-915a-dcf40e91', '83dbdd12-fb78-4433-832a-da8f8516', '349cd837-7ffc-4ed8-9005-4476cbef'),
('da889a50-e2c9-4036-8a93-8f6e4413', '83dbdd12-fb78-4433-832a-da8f8516', 'b82b107d-94af-4eab-9d41-207b4ede'),
('db106137-6d1a-4a49-be13-eb6c02df', '3045dc95-5161-4c3e-9381-ab0b053f', 'a8924ac7-1c96-4ec7-b773-71afb691'),
('dba0d988-ba59-4ee0-8202-e7779329', '21d38141-b56c-42c0-ab0e-d528d33a', 'a9497ec3-27cf-4606-b8d5-26a770e5'),
('df2b8836-c98f-4903-98fc-5a93501c', '83dbdd12-fb78-4433-832a-da8f8516', 'a19e7798-20cb-41f6-9f1e-b0b94fc0'),
('dfccf47f-6444-4d93-8540-60075234', '3045dc95-5161-4c3e-9381-ab0b053f', 'f5205e46-8042-4609-8078-df6b1327'),
('dfe1e5aa-5399-41ca-ba66-805bf662', '3045dc95-5161-4c3e-9381-ab0b053f', 'bfd82c8f-316a-4df4-a487-e8859eb6'),
('e19a57f3-7c16-46f3-a737-6307bb3b', '3045dc95-5161-4c3e-9381-ab0b053f', 'a99900d9-1045-4b27-99ae-a198f4d1'),
('e24b283c-e28e-4c58-8708-c2ce8cc4', '21d38141-b56c-42c0-ab0e-d528d33a', '356b64aa-25eb-4d7d-b302-b28a8197'),
('e4246941-c683-4395-b178-7411d75b', '3045dc95-5161-4c3e-9381-ab0b053f', '8205e1f6-e5f6-4f65-aa01-74ec204e'),
('eaf42deb-c0c6-44ef-bbd3-68c19c5c', '83dbdd12-fb78-4433-832a-da8f8516', '6d48d405-5dcf-49ba-a2a4-79dc3046'),
('ec374c68-ebe7-426c-801e-b195c768', '21d38141-b56c-42c0-ab0e-d528d33a', 'b828137c-df3a-4fa2-a1a1-08c6b2ba'),
('f31d5cc5-2d2c-4a60-95d6-a7d0973d', '83dbdd12-fb78-4433-832a-da8f8516', '85aad9ed-e45e-4901-9c1d-61e482c2'),
('f584756a-ed32-4506-8449-1f47d13b', '21d38141-b56c-42c0-ab0e-d528d33a', '4029234b-6002-40f3-bd39-57ac68e9'),
('f7b68092-1945-4763-94e6-5eeb7650', '83dbdd12-fb78-4433-832a-da8f8516', 'cc4703b2-9c05-4cb0-9e89-9a168383'),
('f893680e-04b4-44d1-bbfd-9005a616', '3045dc95-5161-4c3e-9381-ab0b053f', 'dcb94f81-61aa-4832-83ba-ca91412d'),
('f8c2a317-b41b-4d38-9ef0-537beca4', '83dbdd12-fb78-4433-832a-da8f8516', '3a1e1b3b-f293-454d-98c1-9009b47c'),
('fd214cba-2761-43dd-9c33-d14ed55e', '83dbdd12-fb78-4433-832a-da8f8516', 'e30a1e09-1a03-41ca-94d6-1874ece3'),
('ff3421e7-538a-4b7e-88ba-900a550d', '83dbdd12-fb78-4433-832a-da8f8516', 'ab389ff5-71da-4be1-811b-d80330c4'),
('ffe04732-8ae9-4d5b-9831-d1009c83', '21d38141-b56c-42c0-ab0e-d528d33a', 'f5205e46-8042-4609-8078-df6b1327');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`branch_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_branches_permissions`
--
ALTER TABLE `user_branches_permissions`
  ADD PRIMARY KEY (`user_branches_permission_id`),
  ADD UNIQUE KEY `user_branches` (`user_id`,`branch_id`) USING BTREE;

--
-- Indexes for table `user_permissions`
--
ALTER TABLE `user_permissions`
  ADD PRIMARY KEY (`user_permission_id`),
  ADD UNIQUE KEY `user_permission_route` (`user_permission_route`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_role_id`);

--
-- Indexes for table `user_roles_permissions`
--
ALTER TABLE `user_roles_permissions`
  ADD PRIMARY KEY (`user_roles_permissions_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `branch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_branches_permissions`
--
ALTER TABLE `user_branches_permissions`
  MODIFY `user_branches_permission_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
