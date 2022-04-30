insert into usr (id, username, password, active)
values (1, 'admin', '123', true);
# 202cb962ac59075b964b07152d234b70

insert into user_role (user_id, roles)
values (1, 'USER'), (1, 'ADMIN');