insert into usr (id, username, password, active)
values (999, 'admin', '{TWa3OfpA8/U04JFYZLxfX/vk6yI3fj6vp6Q2YXExkLE=}9bbd958f2523b29b16a8f61571b72d25', true);
# password: 123

insert into user_role (user_id, roles)
values (999, 'USER'), (999, 'ADMIN');