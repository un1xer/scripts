#/bin/bash

dbname="task"
table_layout="(id int not null auto_increment, primary key(id), name varchar(255), description text)"
action=$1
list_name=$2
name=$3
id=$3
desc=$4
duedate=$5

if [[ $# -lt 1 ]]
then
echo "task (new-list|del-list|add|del|ls)"
fi

function create_list {
	echo create table $list_name$table_layout | mysql $dbname
}

function add_task {
	echo 'insert into '${list_name}' (name, description) values ("'${name}'","'${desc}'")' | mysql $dbname
}

function show_lists {
	#function lists all lists
	#function lists tasks in a list if the list name is set
	if [[ -z ${list_name} ]]
	then
		echo show tables | mysql $dbname
	else
		echo "select * from ${list_name}" | mysql $dbname
	fi
}

function delete_task {
	echo delete from ${list_name} where id=$id | mysql $dbname
}

function delete_list {
	echo drop table ${list_name} | mysql $dbname
}

case $action in
	new-list)
		create_list
	;;
	del-list)
		delete_list
	;;
	add)
		add_task
	;;
	del)
		delete_task
	;;
	ls)
		show_lists
	;;
esac
