INSERT INTO Users (email, password, name, image_path) VALUES
('alice@example.com', 'password1', 'Alice Johnson', 'path/to/alice.jpg'),
('bob@example.com', 'password2', 'Bob Smith', 'path/to/bob.jpg'),
('carol@example.com', 'password3', 'Carol White', 'path/to/carol.jpg'),
('dave@example.com', 'password4', 'Dave Brown', 'path/to/dave.jpg'),
('eve@example.com', 'password5', 'Eve Davis', 'path/to/eve.jpg');

INSERT INTO Workspace (name, user_id) VALUES
('Workspace1', 1),
('Workspace2', 1),
('Workspace3', 2),
('Workspace4', 3),
('Workspace5', 4),
('Workspace6', 5);

INSERT INTO Bubble (top, leftmost, width, height, path, path_depth, bubblized, visible, workspace_id) VALUES
(100, 200, 50, 50, '/ws1', 1, false, true, 1),
(150, 250, 60, 60, '/ws1/A', 2, false, true, 1),
(200, 300, 70, 70, '/ws1/A/B', 3, false, true, 1),
(250, 350, 80, 80, '/ws1/A/B/C', 4, false, true, 1),
(300, 400, 90, 90, '/ws1/A/B/C/D', 5, false, true, 1),
(350, 450, 100, 100, '/ws1/A/B/C/D/E', 6, false, true, 1),
(500,1000, 100, 200, '/ws1/A/B/C/D/E/F', 7, false, true, 1),
(100, 200, 50, 50, '/ws2', 1, false, true, 1),
(150, 250, 60, 60, '/ws2/A', 2, false, true, 1),
(200, 300, 70, 70, '/ws2/A/B', 3, false, true, 1),
(200, 300, 70, 70, '/ws2/A/C', 3, false, true, 1),
(250, 350, 80, 80, '/ws2/A/B/C', 4, false, true, 1),
(300, 400, 90, 90, '/ws2/A/B/C/D', 5, false, true, 1);

INSERT INTO Curve (color, b_width, b_height, b_top, b_left, path, thickness, bubble_id) VALUES
('#AAAAAA', 50, 50, 100, 200, '/ws1', 5, 1),
('#BBBBBB', 60, 60, 150, 250, '/ws1', 4, 1),
('#CCCCCC', 70, 70, 200, 300, '/ws1/A/B', 3, 3),
('#DDDDDD', 80, 80, 250, 350, '/ws1/A/B/C/D', 2, 5),
('#EEEEEE', 90, 90, 300, 400, '/ws2/A', 1, 9),
('#FFFFFF', 100, 100, 350, 450, '/ws2/A/B', 5, 10);

INSERT INTO Controls (x, y, visible, curve_id) VALUES
(10, 20, true, 1),
(30, 40, true, 1),
(10, 20, true, 1),
(30, 40, true, 1),
(10, 20, true, 1),
(30, 40, true, 1),
(10, 20, true, 1),
(30, 40, true, 1),
(50, 60, true, 2),
(70, 80, true, 2),
(90, 100, true, 3),
(110, 120, true, 3),
(130, 140, true, 4),
(150, 160, true, 4),
(170, 180, true, 5),
(190, 200, true, 5),
(210, 220, true, 6),
(230, 240, true, 6);

