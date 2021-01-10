 CREATE TABLE `fish_info` (
  `common` varchar(50) NOT NULL,
  `species` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `weight` varchar(15) NOT NULL 
);
INSERT INTO fish_info VALUES ('bass, largemouth' ,'M. salmoides' ,'Montgomery Lake, GA', '22 lb 4 oz'),
('bass, largemouth' ,'M. salmoides' ,'Montgomery Lake, GA', '22 lb 4 oz'),
('walleye', 'S. vitreus', 'Old Hickory Lake, TN', '25 lb 0 oz'),
('trout, cutthroat', 'O. Clarki', 'Pyramid Lake, NV', '41 lb 0 oz'),
('perch, yellow', 'P. Flavescens', 'Bordentown, NJ', '4 lb 3 oz'),
('bluegill', 'L. Macrochirus', 'Ketona Lake, AL', '4 lb 12 oz'),
('gar, longnose', 'L. Osseus', 'Trinity River, TX', '50 lb 5 oz'),
('crappie, white', 'P. annularis', 'Enid Dam, MS', '5 lb 3 oz'),
('pickerel, grass', 'E. americanus', 'Dewart Lake, IN', '1 lb 0 oz'),
('goldfish', 'C. auratus', 'Lake Hodges, CA', '6 lb 10 oz'),
('salmon, chinook', 'O. Tshawytscha', 'Kenai River, AK', '97 lb 4 oz'); 

/*CHAPTER NUMBER 4  SMART TABLES */
select * from fish_info;

select * from fish_info
where location like '%NJ';