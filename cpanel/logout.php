<?php
// Including config file
require('configs/config.php');

// Finally, destroy the session.
session_destroy();

// back to the login
header('Location: '.BACKEND.'/login.php');
exit;
