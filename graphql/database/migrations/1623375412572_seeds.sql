INSERT INTO roles(title)
VALUES 
('admin'),
('blogger');

INSERT INTO permissions(action)
VALUES
('posts'),
('manage-users');

INSERT INTO roles_permissions(role_id, permission_id)
VALUES 
(1, 1),
(1, 2),
(2, 1);

INSERT INTO users(role_id, email, first_name, last_name)
VALUES
(1, 'tausifzmn4@outlook.com', 'Tausif', 'Zaman');

INSERT INTO blog_categories (label, description)
VALUES
('Fundraising', 'The process of seeking and gathering voluntary financial contributions by engaging individuals, businesses, charitable foundations, or governmental agencies.'),
('Outreach','A social welfare programme designed to help and encourage disadvantaged members of the community.'),
('Advertisement','An online announcement in a public medium promoting an upcoming event or initiative'),
('Article','Thought peice or article shining light on a less exposed issue'),
('Highlight','We want to boost this specific post!'),
('Story','Post about a specific topic or people');

INSERT INTO blog_posts (author_id, title, description, text, image, active, keyword1, keyword2, bg_src, bg_type)
VALUES
(1, "Public event 1 AAAA", 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ', 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ', 'public_event_1.jpeg', 1, 'Public Event', 'on', 'public_event_1.jpeg', 'Image'),
(1, "Public event 2 BBBB", 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ', 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ', 'public_event_2.png', 1, 'Public Event', 'on', 'public_event_2.png', 'Image'),
(1, "Public event 3 CCCC", 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ', 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ', 'public_event_3.png', 1, 'Public Event', 'on', 'public_event_3.png', 'Image'),
(1, "Public event 4 DDDD", 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ', 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ', 'public_event_4.png', 1, 'Public Event', 'on', 'public_event_4.png', 'Image'),
(1, "Public event 5 EEEE", 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ', 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ', 'public_event_5.png', 1, 'Public Event', 'on', 'public_event_5.png', 'Image');
(1, "Public event 6 DDDD", 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ', 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ', 'public_event_6.png', 1, 'Public Event', 'on', 'public_event_6.png', 'Image'),
(1, "Public event 7 EEEE", 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ', 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ', 'public_event_7.png', 1, 'Public Event', 'on', 'public_event_7.png', 'Image');



INSERT INTO blog_post_comments (post_id, author_id, comment)
VALUES
(1, 1, 'Wow this is a pretty boring article'),
(1, 1, 'You dont know anything about the event!!');

INSERT INTO blog_post_categories (post_id, category_id)
VALUES
(1,1),
(1,2),
(2,3),
(2,5),
(3,4),
(3,6),
(4,4),
(4,2),
(5,5),
(5,6);

