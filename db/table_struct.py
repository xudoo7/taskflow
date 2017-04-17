#!/usr/bin/env python
# -*- coding: utf-8 -*-

import os
import sys
import sys_path

class UserInfo():
    '''
    @id: primary key
    @user_id: user id
    @user_name: user name
    '''

    ID = 'id'
    UserId = 'user_id'
    UserName = 'user_name'

class ProjectInfo():
    '''
    @id: primary key
    @project_id: project id
    @project_name: project name
    @create_user_id: create user id
    @create_time: create time
    @permission_users: has permission users list
    '''

    ID = 'id'
    ProjectId = 'project_id'
    ProjectName = 'project_name'
    CreateUserId = 'create_user_id'
    CreateTime = 'create_time'
    PermissionUsers = 'permission_users'

class DagInfo():
    '''
    @id: primary key
    @dag_id: dag id
    @dag_name: dag name
    @valid: 1: dag is valid
            0: dag is invalid
    @project_id: dag project
    @create_user_id: create user id
    @create_time: dag create time
    @expire_time: dag expire time
    @scheduler_interval: dag scheduler interval
    @skip_failed: 1: skip
                  0: no skip
    @modify_time: dag modify time
    @dag_status: 0 -> Not Running
                 1 -> Running
                 2 -> Failed
                 3 -> Terminated
    @next_start_time: dag next start time
    @head_tasks_list: dag head tasks list
    '''

    ID = 'id'
    DagId = 'dag_id'
    DagName = 'dag_name'
    Valid = 'valid'
    ProjectId = 'project_id'
    CreateUserId = 'create_user_id'
    CreateTime = 'create_time'
    ExpireTime = 'expire_time'
    SchedulerInterval = 'scheduler_interval'
    SkipFailed = 'skip_failed'
    ModifyTime = 'modify_time'
    DagStatus = 'dag_status'
    NextStartTime = 'next_start_time'
    HeadTasksList = 'head_tasks_list'

class TaskInfo():
    '''
    @id: task id
    @dag_id: task dag id
    @task_id: task id
    @task_name: task name
    @run_machine: task run machine iP address
    @run_user: task run user
    @run_dir: task run work directory
    @run_command: task run shell command
    @run_timeout: task run timeout
    @retry_times: task run retry times
    @task_status: 0 -> Not Running
                  1 -> Running
                  2 -> Failed
                  3 -> Terminated
    @modify_time: task modify time
    @pre_task_list: task prefix task list
    @next_task_list: task next task list
    '''

    ID = 'id'
    DagId = 'dag_id'
    TaskId = 'task_id'
    TaskName = 'task_name'
    RunMachine = 'run_machine'
    RunUser = 'run_user'
    RunDir = 'run_dir'
    RunCommand = 'run_command'
    RunTimeout = 'run_timeout'
    RetryTimes = 'retry_times'
    TaskStatus = 'task_status'
    ModifyTime = 'modifyTime'
    PreTaskList = 'pre_task_list'
    NextTaskList = 'next_task_list'

class MachineInfo():
    '''
    @id: primary key
    @machine_name: machine name
    @machine_ip: machine ip
    '''

    ID = 'id'
    MachineName = 'machine_name'
    MachineIP = 'machine_ip'

class DagRunHistory():
    '''
    @id: dag history id
    @dag_id: dag id
    @start_time: dag start time
    @end_time: dag end time
    @status: dag status
    '''

    ID = 'id'
    DagId = 'dag_id'
    StartTime = 'start_time'
    EndTime = 'end_time'
    Status = 'status'

class TaskRunHisgory():
    '''
    @id: primark key
    @task_id: task id
    @start_time: task start time
    @end_time: task end time
    @status: task status
    '''

    ID = 'id'
    TaskId = 'task_id'
    StartTime = 'start_time'
    EndTime = 'end_time'
    Status = 'status'

