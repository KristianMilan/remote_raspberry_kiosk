
-- --------------------------------------------------------

--
-- Table structure for table `raspberrys`
--

CREATE TABLE IF NOT EXISTS `raspberrys` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `center_id` int(6) NOT NULL,
  `dns` varchar(255) NOT NULL,
  `vnc_port` int(5) NOT NULL,
  `ssh_port` int(5) NOT NULL,
  `status` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;
