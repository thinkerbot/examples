%q{
insert into depts values (1, 'Accounting', 'New York', 'NY', date('now'), date('now'));
insert into depts values (2, 'Research',   'Dallas',   'TX', date('now'), date('now'));
insert into depts values (3, 'Sales',      'Chicago',  'IL', date('now'), date('now'));
insert into depts values (4, 'Operations', 'Boston',   'MA', date('now'), date('now'));

insert into jobs values (1, 'President', date('now'), date('now'));
insert into jobs values (2, 'Manager', date('now'), date('now'));
insert into jobs values (3, 'Analyst', date('now'), date('now'));
insert into jobs values (4, 'Clerk', date('now'), date('now'));
insert into jobs values (5, 'Salesman', date('now'), date('now'));

insert into emps values (1,  'Kim',      'King',   1, 1, null, 5000, date('now'), date('now'));
insert into emps values (2,  'Jim',      'Jones',  2, 2, 1,    2975, date('now'), date('now'));
insert into emps values (3,  'Fred',     'Ford',   3, 2, 2,    3000, date('now'), date('now'));
insert into emps values (4,  'Sally',    'Smith',  4, 2, 3,    800, date('now'), date('now'));
insert into emps values (5,  'Bill',     'Blake',  2, 3, 1,    2850, date('now'), date('now'));
insert into emps values (6,  'Amy',      'Allen',  5, 3, 5,    1600, date('now'), date('now'));
insert into emps values (7,  'William',  'Ward',   5, 3, 5,    1250, date('now'), date('now'));
insert into emps values (8,  'Mike',     'Martin', 5, 3, 5,    1250, date('now'), date('now'));
insert into emps values (9,  'Carla',    'Clark',  2, 1, 1,    2450, date('now'), date('now'));
insert into emps values (10, 'Sam',      'Scott',  3, 2, 2,    3000, date('now'), date('now'));
insert into emps values (11, 'Tom',      'Turner', 5, 3, 5,    1500, date('now'), date('now'));
insert into emps values (12, 'Abe',      'Adams',  4, 2, 10,   1100, date('now'), date('now'));
insert into emps values (13, 'Joan',     'James',  4, 3, 5,    950, date('now'), date('now'));
insert into emps values (14, 'Michelle', 'Miller', 4, 1, 9,    1300, date('now'), date('now'));
}.each_line {|line| ActiveRecord::Base.connection.execute(line) unless line.strip.empty? }

