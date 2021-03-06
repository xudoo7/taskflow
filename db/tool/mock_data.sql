/*
 use test db
 */
use test;

/*
 table: user_info
 */
insert into 
user_info(id, user_name, user_password_hash,user_email,register_time)
values (1, 'user1', 'user1password', 'user1@gmail.com', '2017-01-01 00:00:01'),
(2, 'user2', 'user2password', 'user2@gmail.com', '2017-01-01 00:00:01'),
(3, 'user3', 'user3password', 'user3@gmail.com', '2017-01-01 00:00:01'),
(4, 'user4', 'user4password', 'user4@gmail.com', '2017-01-01 00:00:01'),
(5, 'user5', 'user5password', 'user5@gmail.com', '2017-01-01 00:00:01');

/*
 table: project_info
 */
insert into 
project_info(id, project_name, create_user_id, create_time, project_desc, permission_users)
values 
(1, 'test_project1', 1, '2017-04-29 00:00:01', 'desc1', '1,6,7'),
(2, 'test_project2', 2, '2017-04-29 00:01:01', 'desc2', '2,6,7'),
(3, 'test_project3', 3, '2017-04-29 00:04:01', 'desc3', '3'),
(4, 'test_project4', 4, '2017-04-29 00:08:01', 'desc4', '4,2'),
(5, 'test_project5', 5, '2017-04-29 00:18:01', 'desc5', '5,3,6'),
(6, 'test_project6', 6, '2017-04-29 00:18:01', 'desc5', '6'),
(7, 'test_project7', 6, '2017-04-29 00:18:01', 'desc5', '6'),
(8, 'test_project8', 6, '2017-04-29 00:18:01', 'desc5', '6'),
(9, 'test_project9', 9, '2017-04-29 00:18:01', 'desc5', '9,2'),
(10, 'test_project10', 10, '2017-04-29 00:18:01', 'desc5', '10,6');

/*
 table: dag_info
 */
insert into 
dag_info(id, dag_id, dag_name, valid, project_name, create_user_id, create_time, scheduler_interval, skip_failed, modify_time, dag_status, next_start_time, dag_json)
values 
(1, 1, 'test_dag1', 1, 'test_project1', 1, '2017-04-29 00:01:01', 600, 0, '2017-04-29 00:01:02', 'NotRunning', '2017-04-29 00:02:01', '{"1":[3], "2":[3], "3":[]}'),
(2, 2, 'test_dag2', 1, 'test_project2', 2, '2017-04-29 00:09:01', 600, 1, '2017-04-29 00:09:02', 'NotRunning', '2017-04-29 00:09:01', '{"10":[]}'),
(3, 3, 'test_dag3', 1, 'test_project2', 2, '2017-04-29 00:09:01', 600, 1, '2017-04-29 00:09:02', 'NotRunning', '2017-04-29 00:09:01', '{"10":[]}'),
(4, 4, 'test_dag4', 1, 'test_project3', 3, '2017-04-29 00:09:01', 600, 1, '2017-04-29 00:09:02', 'NotRunning', '2017-04-29 00:09:01', '{"10":[]}'),
(5, 5, 'test_dag5', 1, 'test_project4', 4, '2017-04-29 00:09:01', 600, 1, '2017-04-29 00:09:02', 'NotRunning', '2017-04-29 00:09:01', '{"10":[]}'),
(6, 6, 'test_dag6', 1, 'test_project6', 6, '2017-04-29 00:09:01', 600, 1, '2017-04-29 00:09:02', 'NotRunning', '2017-04-29 00:09:01', '{"10":[]}'),
(7, 7, 'test_dag7', 1, 'test_project6', 6, '2017-04-29 00:09:01', 600, 1, '2017-04-29 00:09:02', 'NotRunning', '2017-04-29 00:09:01', '{"10":[]}'),
(8, 8, 'test_dag8', 1, 'test_project6', 6, '2017-04-29 00:09:01', 600, 1, '2017-04-29 00:09:02', 'NotRunning', '2017-04-29 00:09:01', '{"10":[]}'),
(9, 9, 'test_dag9', 1, 'test_project8', 2, '2017-04-29 00:09:01', 600, 1, '2017-04-29 00:09:02', 'NotRunning', '2017-04-29 00:09:01', '{"10":[]}'),
(10, 10, 'test_dag10', 1, 'test_project10', 10, '2017-04-29 00:09:01', 600, 1, '2017-04-29 00:09:02', 'NotRunning', '2017-04-29 00:09:01', '{"10":[]}');

/*
 table: task_info
 */
insert into 
task_info(id, dag_id, task_id, task_name, run_machine, run_user, run_dir, run_command, run_timeout, retry_times, task_status, modify_time)
values 
(1, 1, 1, 'test_task1', '172.17.0.3', 'root', '/home', 'ls -lsrt', 60, 5, 'NotRunning', '2017-04-29 00:00:01'),
(2, 1, 2, 'test_task2', '172.17.0.4', 'root', '/home', 'ls -lsrt', 60, 5, 'NotRunning', '2017-04-29 00:00:01'),
(3, 1, 3, 'test_task3', '172.17.0.5', 'root', '/home', 'ls -lsrt', 60, 5, 'NotRunning', '2017-04-29 00:00:01'),
(4, 2, 10, 'test_task10', '172.17.0.4', 'root', '/home', 'ls -lsrt', 60, 5, 'NotRunning', '2017-04-29 00:00:01');

/*
 tables: macheine_info
 */
insert into 
machine_info(id, machine_name, machine_ip)
values 
(1, 'machine1', '172.17.0.1'),
(2, 'machine2', '172.17.0.2'),
(3, 'machine3', '172.17.0.3'),
(4, 'machine4', '172.17.0.4'),
(5, 'machine5', '172.17.0.5');

/*
 table: dag_run_history
 */
insert into 
dag_run_history(id, dag_id, start_time, end_time, status)
values 
(1, 1, '2017-04-29 00:00:01', '2017-04-29 00:04:00', 'Terminated'),
(2, 2, '2017-04-29 01:00:01', '2017-04-29 08:04:00', 'Terminated');

/*
 table: task_run_history
 */
insert into 
task_run_history(id, task_id, start_time, end_time, status, stdout, stderr)
values 
(1, 1, '2017-04-29 00:00:01', '2017-04-29 01:00:00', 'Terminated', 'stdout', ''),
(2, 2, '2017-04-29 00:00:01', '2017-04-29 01:00:00', 'Terminated', 'stdout', ''),
(3, 3, '2017-04-29 00:00:01', '2017-04-29 01:00:00', 'Terminated', 'stdout', ''),
(4, 10, '2017-04-29 00:00:01', '2017-04-29 01:00:00', 'Terminated', 'stdout', '');
