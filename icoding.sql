-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2021 at 07:28 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `icoding`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(10) NOT NULL,
  `category_name` varchar(25) NOT NULL,
  `category_description` varchar(255) NOT NULL,
  `time_stamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `category_description`, `time_stamp`) VALUES
(1, 'Python', 'Python is an interpreted high-level general-purpose programming language. Python\'s design philosophy emphasizes code readability with its notable use of significant indentation.', '2021-07-15 10:00:50'),
(2, 'CSS', 'Cascading Style Sheets is a style sheet language used for describing the presentation of a document written in a markup language such as HTML. CSS is a cornerstone technology of the World Wide Web, alongside HTML and JavaScript.', '2021-07-15 10:01:25'),
(3, 'HTML', 'The HyperText Markup Language, or HTML is the standard markup language for documents designed to be displayed in a web browser. It can be assisted by technologies such as Cascading Style Sheets and scripting languages such as JavaScript.', '2021-07-15 10:03:17'),
(4, 'JS', 'JavaScript, often abbreviated as JS, is a programming language that conforms to the ECMAScript specification. JavaScript is high-level, often just-in-time compiled, and multi-paradigm. ', '2021-07-15 10:03:17'),
(5, 'JAVA', 'Java is a high-level, class-based, object-oriented programming language that is designed to have as few implementation dependencies as possible.', '2021-07-15 10:04:45'),
(6, 'Angular', 'Angular is a TypeScript-based free and open-source web application framework led by the Angular Team at Google and by a community of individuals and corporations.', '2021-07-15 10:04:45');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(10) NOT NULL,
  `comment_content` text NOT NULL,
  `thread_id` int(10) NOT NULL,
  `comment_by` int(25) NOT NULL,
  `comment_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_content`, `thread_id`, `comment_by`, `comment_time`) VALUES
(1, 'The HyperText Markup Language, or HTML is the standard markup language for documents designed to be displayed in a web browser. It can be assisted by technologies such as Cascading Style Sheets (CSS) and scripting languages such as JavaScript.\r\n\r\nWeb browsers receive HTML documents from a web server or from local storage and render the documents into multimedia web pages. HTML describes the structure of a web page semantically and originally included cues for the appearance of the document.\r\n\r\nHTML elements are the building blocks of HTML pages. With HTML constructs, images and other objects such as interactive forms may be embedded into the rendered page. HTML provides a means to create structured documents by denoting structural semantics for text such as headings, paragraphs, lists, links, quotes and other items. HTML elements are delineated by tags, written using angle brackets. \r\n', 2, 4, '2021-07-16 07:56:05'),
(2, 'hr { display: block; margin-before: 0.5em; margin-after: 0.5em; margin-start: auto; margin-end: auto; overflow: hidden; border-style: inset; border-width: 1px;}', 1, 9, '2021-07-16 07:56:05'),
(3, '\r\nthis the code for drawing horizontal line\r\n.drawLine { display: inline-block; width: 70vw; position: relative; top: 0.1em; resize: both; overflow: auto; margin: 0 auto; padding: 0 1px; border: 1px solid lightblue; }', 1, 11, '2021-07-17 13:26:11'),
(4, 'HTML stand for hyper text markup language.\r\n', 2, 1, '2021-07-17 13:32:00'),
(5, 'The color of the bullet is always the color of the first text of the list. So, if you want to change the color of the bullet, you must change the color of the text.', 4, 7, '2021-07-17 13:38:09'),
(6, 'there is not direct way in CSS by which we can change the color of the bullets in an unordered list. ... This content is the Unicode of the kind of bullet that you want to use for your list. ', 4, 9, '2021-07-17 13:38:16'),
(7, 'ARATSDFHJO]KP', 11, 12, '2021-07-18 11:38:25'),
(8, 'ARATSDFHJO]KP', 11, 14, '2021-07-18 11:38:33'),
(9, 'HTML and CSS are the first languages that I learned to build a website. I think it is very useful for a newbie to start with world wide web. I am wondering are there any advanced techniques of HTML in web design?', 2, 6, '2021-07-19 00:33:07'),
(10, 'HTML layout determine a way in which the web page is organized.\r\nEvery website has a specific layout to display content in a specific manner.\r\n&lt;header&gt;: It is used to define a header for a document or a section.\r\n&lt;nav&gt;: It is used to define a container for navigation links\r\n&lt;section&gt;: It is used to define a section in a document\r\n&lt;article&gt;: It is used to define an independent, self-contained article\r\n&lt;aside&gt;: It is used to define content aside from the content (like a sidebar)\r\n&lt;footer&gt;: It is used to define a footer for a document or a section\r\n\r\n', 5, 7, '2021-07-19 01:47:38'),
(11, '<p>HTML has several semantic elements that define the different parts of a web page:\r\n\r\nHTML5 Semantic Elements	\r\n(header) - Defines a header for a document or a section\r\n(nav) - Defines a set of navigation links\r\n(section) - Defines a section in a document\r\n(article) - Defines an independent, self-contained content\r\n(aside) - Defines content aside from the content (like a sidebar)\r\n(footer) - Defines a footer for a document or a section\r\n(details) - Defines additional details that the user can open and close on demand\r\n(summary) - Defines a heading for the details element\r\n</p>', 5, 17, '2021-07-19 01:49:56'),
(12, '<p>You can insert a copyright symbol by using &amp;copy; or &amp;#169; in an HTML file. </p>', 6, 11, '2021-07-19 01:56:25'),
(13, '<p>You can create an HTML copyright symbol using the &copy; or &#169; symbol codes. \r\n</p>', 6, 1, '2021-07-19 01:57:22'),
(14, 'The HTML iframe tag is used to display a nested webpage. In other words, it represents a webpage within a webpage. The HTML &lt;iframe&gt; tag defines an inline frame.&lt;!DOCTYPE html&gt;  \r\n&lt;html&gt;  \r\n&lt;body&gt;  \r\n&lt;h2&gt;HTML Iframes example&lt;/h2&gt;  \r\n&lt;p&gt;Use the height and width attributes to specify the size of the iframe:&lt;/p&gt;  \r\n&lt;iframe src=\"https://www.javatpoint.com/\" height=\"300\" width=\"400\"&gt;&lt;/iframe&gt;  \r\n&lt;/body&gt;  \r\n&lt;/html&gt; ', 7, 7, '2021-07-19 02:08:59'),
(15, 'you can use hyperlinks on text and images both. The HTML anchor tag defines a hyperlink that links one page to another page. The \"href\" attribute is the most important attribute of the HTML anchor tag.\r\n\r\n&lt;a href = \"...........\"&gt; Link Text &lt;/a&gt;', 8, 9, '2021-07-19 02:24:42'),
(16, 'No, you can use hyperlinks on text and images both. The HTML anchor tag defines a hyperlink that links one page to another page. The \"href\" attribute is the most important attribute of the HTML anchor tag.\r\nSyntax\r\n&lt;a href = \"...........\"&gt; Link Text &lt;/a&gt;', 8, 16, '2021-07-19 02:29:16'),
(17, 'The user can use the remove() function to delete a specific object in the list.\r\n\r\nExample:\r\n\r\nlist_1 = [ 3, 5, 7, 3, 9, 3 ]   \r\nprint(list_1)  \r\nlist_1.remove(3)   \r\nprint(\"After removal: \", list_1)  \r\nOutput:\r\n\r\n[3, 5, 7, 3, 9, 3]\r\nAfter removal: [5, 7, 3, 9, 3]\r\nIf you want to delete an object at a specific location (index) in the list, you can either use del or pop.\r\n\r\nExample:\r\n\r\nlist_1 = [ 3, 5, 7, 3, 9, 3 ]   \r\nprint(list_1)  \r\ndel list_1[2]  \r\nprint(\"After deleting: \", list_1)  \r\nOutput:\r\n\r\n[3, 5, 7, 3, 9, 3]\r\nAfter deleting: [3, 5, 3, 9, 3]\r\n', 12, 8, '2021-07-19 02:38:02'),
(18, 'remove() delete the matching element/object whereas del and pop removes the element at a specific index. del and pop deals with the index. The only difference between the two is that- pop return deleted the value from the list and del does not return anything', 12, 3, '2021-07-19 02:38:45'),
(19, 'To remove leading characters from a string, we can use lstrip() function. It is Python string function which takes an optional char type parameter. If a parameter is provided, it removes the character. Otherwise, it removes all the leading spaces from the string.\r\n\r\nExample:\r\n\r\nstring = \"  javatpoint \"   \r\nstring2 = \"    javatpoint        \"  \r\nprint(string)  \r\nprint(string2)  \r\nprint(\"After stripping all leading whitespaces:\")  \r\nprint(string.lstrip())  \r\nprint(string2.lstrip())  \r\nOutput:\r\n\r\njavatpoint \r\n    javatpoint        \r\nAfter stripping all leading whitespaces:\r\njavatpoint \r\njavatpoint\r\n\r\nPython Interview Questions\r\nAfter stripping, all the whitespaces are removed, and now the string looks like the below:\r\n\r\nPython Interview Questions', 14, 14, '2021-07-19 02:45:01'),
(20, 'Python String strip() function will remove leading and trailing whitespaces.\r\n\r\n\r\n>>> s.strip()\r\n\'Hello  World   From Pankaj \\t\\n\\r\\tHi There\'\r\nIf you want to remove only leading or trailing spaces, use lstrip() or rstrip() function instead.\r\n\r\n', 14, 5, '2021-07-19 02:48:48'),
(21, 'To remove leading characters from a string, we can use lstrip() function. It is Python string function which takes an optional char type parameter. If a parameter is provided, it removes the character. Otherwise, it removes all the leading spaces from the string.\r\n\r\nExample:\r\n\r\nstring = \"  javatpoint \"   \r\nstring2 = \"    javatpoint        \"  \r\nprint(string)  \r\nprint(string2)  \r\nprint(\"After stripping all leading whitespaces:\")  \r\nprint(string.lstrip())  \r\nprint(string2.lstrip())  \r\nOutput:\r\n\r\njavatpoint \r\n    javatpoint        \r\nAfter stripping all leading whitespaces:\r\njavatpoint \r\njavatpoint\r\n\r\nPython Interview Questions\r\nAfter stripping, all the whitespaces are removed, and now the string looks like the below:\r\n\r\nPython Interview Questions', 13, 9, '2021-07-19 02:49:51'),
(22, 'Ascending by selectors is not possible\r\nLimitations of vertical control\r\nNo expressions\r\nNo column declaration\r\nPseudo-class not controlled by dynamic behavior\r\nRules, styles, targeting specific text not possible\r\n', 15, 17, '2021-07-19 02:55:34'),
(23, 'CSS, CSS 1 up to CSS3, result in creating of confusion among web browsers.\r\nWith CSS, what works with one browser might not always work with another. ...\r\nThere exists a scarcity of security.\r\nAfter making the changes we need to confirm the compatibility if they appear.', 15, 8, '2021-07-19 02:56:09'),
(24, 'CSS cannot grab an item (such as a chapter title) from one place and use it again in another place (such as a page header).\r\nCSS has no concept of sibling relationships. For example, it is impossible to write a CSS stylesheet that will render every other paragraph in bold.\r\nCSS is not a programming language; it does not support decision structures and cannot be extended by the stylesheet designer.\r\nCSS cannot calculate quantities or store variables. This means, at the very least, that it cannot store commonly used parameters in one location that is easy to update.\r\nCSS cannot generate text (page numbers, etc.)\r\nCSS uses a simple box-oriented formatting model that works for current Web browsers but will not extend to more advanced applications of the markup, such as multiple column sets.\r\nCSS is oriented toward Western languages and assumes a horizontal writing direction.', 15, 7, '2021-07-19 02:56:15'),
(25, 'List of Disadvantages of Cascading Style Sheets 3. Lack of security\r\n1. Come in different levels  2. Fragmentation          ', 15, 6, '2021-07-19 02:56:20'),
(26, 'The ruleset is used to identify that selectors can be attached with other selectors. It has two parts:\r\n\r\n\r\nSelector - Selector indicates the HTML element you want to style.\r\n\r\nDeclaration Block - The declaration block can contain one or more declarations separated by a semicolon.', 17, 5, '2021-07-19 02:58:50'),
(27, 'Introduction. A rule or \"rule set\" is a statement that tells browsers how to render particular elements on an HTML page. A rule set consists of a selector followed by a declaration block.', 17, 4, '2021-07-19 02:59:15'),
(28, 'There are two reasons behind this:\r\n\r\nIt enhances the legibility of style sheets. The background property is a complex property in CSS, and if it is combined with color, the complexity will further increase.\r\nColor is an inherited property while the background is not. So this can make confusion further.', 16, 3, '2021-07-19 03:00:03'),
(29, 'There are serveral reasons for this. First, style sheets become more legible -- both for humans and machines. The background property is already the most complex property in CSS1 and combining it with color would make it even more complex. Second, color inherits, but background doesn\'t and this would be a source of confusion.', 16, 2, '2021-07-19 03:02:45'),
(31, 'Java language was developed in such a way that it does not depend on any hardware or software due to the fact that the compiler compiles the code and then converts it to platform-independent byte code which can be run on multiple systems.\r\n\r\nThe only condition to run that byte code is for the machine to have a runtime environment (JRE) installed in it.', 9, 9, '2021-07-19 03:14:22'),
(32, 'Pointers are quite complicated and unsafe to use by beginner programmers. Java focuses on code simplicity, and the usage of pointers can make it challenging. Pointer utilization can also cause potential errors. Moreover, security is also compromised if pointers are used because the users can directly access memory with the help of pointers.\r\n\r\nThus, a certain level of abstraction is furnished by not including pointers in Java. Moreover, the usage of pointers can make the procedure of garbage collection quite slow and erroneous. Java makes use of references as these cannot be manipulated, unlike pointers.', 10, 10, '2021-07-19 03:14:46'),
(33, 'Binary Types: memoryview, bytearray, bytes.\r\nBoolean Type: bool.\r\nSet Types: frozenset, set.\r\nMapping Type: dict.\r\nSequence Types: range, tuple, list.\r\nNumeric Types: complex, float, int.\r\nText Type: str.', 18, 15, '2021-07-21 01:58:15'),
(34, 'dzdxcjhlk;\r\n4', 18, 15, '2021-07-21 01:58:25');

-- --------------------------------------------------------

--
-- Table structure for table `thread`
--

CREATE TABLE `thread` (
  `thread_id` int(10) NOT NULL,
  `thread_title` varchar(50) NOT NULL,
  `thread_desc` text NOT NULL,
  `thread_category_id` int(10) NOT NULL,
  `thread_user_id` int(10) NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `thread`
--

INSERT INTO `thread` (`thread_id`, `thread_title`, `thread_desc`, `thread_category_id`, `thread_user_id`, `time`) VALUES
(1, 'How to make a horizontal ', 'How to make a horizontal line separator and responsive in html ', 3, 1, '2021-07-15 17:38:32'),
(2, 'What is html?', 'what is HTML ', 3, 2, '2021-07-15 17:38:32'),
(4, 'HTML Colour', 'Is it possible to change the color of the bullet?\r\n', 3, 4, '2021-07-17 13:36:17'),
(5, 'need help', 'Tell me the layout of HTML', 3, 5, '2021-07-17 13:37:31'),
(6, 'copyright symbol', 'How to insert a copyright symbol on a browser page?', 3, 6, '2021-07-18 11:18:52'),
(7, 'nested webpage ', 'create a nested webpage in HTML?', 3, 16, '2021-07-18 11:19:04'),
(8, 'hyperlink', 'hyperlink only apply to text', 3, 10, '2021-07-18 11:26:48'),
(9, 'java', ' Why is Java a platform independent language?', 5, 12, '2021-07-18 11:30:40'),
(10, 'interview Questions', ' Pointers are used in C/ C++. Why does Java not make use of pointers?', 5, 7, '2021-07-18 11:34:13'),
(12, 'remove() function', 'What is the difference between remove() function and del statement?\r\n', 1, 16, '2021-07-19 02:37:26'),
(13, ' swapcase() ', 'What is swapcase() function in the Python?', 1, 11, '2021-07-19 02:39:57'),
(14, 'remove leading whitespace', 'How to remove leading whitespaces from a string in the Python?', 1, 13, '2021-07-19 02:40:38'),
(15, 'limitations of CSS', 'What are the limitations of CSS', 2, 15, '2021-07-19 02:55:09'),
(16, 'background and color are the separate properties', ' Why background and color are the separate properties if they should always be set together?', 2, 1, '2021-07-19 02:57:20'),
(17, 'ruleset', 'What is the use of ruleset?', 2, 14, '2021-07-19 02:58:25'),
(18, 'need help', 'data type', 1, 15, '2021-07-21 01:57:09'),
(19, 'python ', 'what is python', 1, 2, '2021-07-22 10:02:12'),
(20, 'css', 'what is css', 2, 7, '2021-07-22 10:03:37'),
(21, 'what is markup?', 'please explain in details?', 3, 21, '2021-07-22 15:22:53');

-- --------------------------------------------------------

--
-- Table structure for table `users123`
--

CREATE TABLE `users123` (
  `sno` int(10) NOT NULL,
  `user_name` int(35) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `user_email` varchar(35) NOT NULL,
  `user_pass` varchar(25) NOT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users123`
--

INSERT INTO `users123` (`sno`, `user_name`, `first_name`, `last_name`, `user_email`, `user_pass`, `date_time`) VALUES
(1, 0, 'Sagar', 'Baisoya', 'sagarbaisoya13@gmail.com', 'sagar@123', '2021-07-15 13:10:49'),
(2, 0, 'Ravi', 'Kumar', 'ravikumar@gmail.com', 'sagar@123', '2021-07-15 17:12:37'),
(3, 0, 'Kunal', 'Goel', 'kunalgoel@gmail.com', 'sagar@123', '2021-07-15 17:13:41'),
(4, 0, 'Sachin', 'Goel', 'sachingoel@gmail.com', 'sagar@123', '2021-07-15 17:13:41'),
(5, 0, 'Riya', 'Manjari', 'riyamanjari1900@gmail.com', 'sagar@123', '2021-07-15 17:14:32'),
(6, 0, 'Deepanshu', 'Chauhan', 'deepanshuchauhan825@gmail.com', 'sagar@123', '2021-07-15 17:14:32'),
(7, 0, 'Saurabh', 'Kumar', 'saurabhkumar@gmail.com', 'sagar@123', '2021-07-15 17:15:02'),
(8, 0, 'Mohan', 'Kumar', 'mohankumar@gmail.com', 'sagar@123', '2021-07-15 17:15:44'),
(9, 0, 'Raman', 'Singh', 'ramansingh@gmail.com', 'sagar@123', '2021-07-15 17:16:34'),
(10, 0, 'Amit', 'Rana', 'amitrana25@gmail.com', 'sagar@123', '2021-07-15 17:23:39'),
(11, 0, 'Nidhi', 'Chauhan', 'nidhichauhan@gmail.com', 'sagar@123', '2021-07-15 21:31:05'),
(12, 0, 'Jyoti', 'Sharma', 'jyoti13@gmail.com', 'sagar@123', '2021-07-15 22:03:12'),
(13, 0, 'Nikita', 'Nagar', 'Nikitanagar@gmail.com', 'sagar@123', '2021-07-15 22:19:30'),
(14, 0, 'Virat', 'Bhati', 'viratbhati@gmail.com', 'sagar@123', '2021-07-17 10:08:35'),
(15, 0, 'Ankit', 'Sam', 'ankitsam@gmail.com', 'sagar@123', '2021-07-18 10:43:40'),
(16, 0, 'Aman', 'Kumar', 'ak@gmail.com', 'sagar@123', '2021-07-18 10:58:57'),
(17, 0, 'Dhruv', 'Gupta', 'Dhruv@gmail.com', 'sagar@123', '2021-07-19 01:28:16'),
(18, 0, 'Rahul', 'Kumar', 'rahulk@gmail.com', 'sagar@123', '2021-07-19 07:33:47'),
(19, 0, 'Swapnil', 'Baranwal', 'SwapnilBaranwal@yahoo.com', 'sagar@123', '2021-07-22 00:13:14'),
(20, 0, 'Vedangi', 'Sharma', 'Vedangi@gmail.com', 'sagar@123', '2021-07-22 00:14:37'),
(21, 0, 'Neha', 'sahu', 'nehasahu@gmail.com', 'sagar@123', '2021-07-22 15:19:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `thread`
--
ALTER TABLE `thread`
  ADD PRIMARY KEY (`thread_id`);
ALTER TABLE `thread` ADD FULLTEXT KEY `thread_title` (`thread_title`,`thread_desc`);
ALTER TABLE `thread` ADD FULLTEXT KEY `thread_title_2` (`thread_title`,`thread_desc`);

--
-- Indexes for table `users123`
--
ALTER TABLE `users123`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `thread`
--
ALTER TABLE `thread`
  MODIFY `thread_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users123`
--
ALTER TABLE `users123`
  MODIFY `sno` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
