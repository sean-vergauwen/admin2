CREATE USER 'wt-user'@'php%' IDENTIFIED BY 'wt-pwd';
GRANT SELECT ON `woodytoys`.* TO 'wt-user'@'php%';