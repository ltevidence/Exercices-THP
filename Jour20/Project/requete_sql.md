{\rtf1\ansi\ansicpg1252\cocoartf2580
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;\red255\green255\blue255;\red88\green91\blue109;
}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;\cssrgb\c100000\c100000\c100000;\cssrgb\c41961\c43529\c50196;
}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh11180\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 1) Recuperer tous les albums :\
SELECT * FROM albums;\
\
2) Recuperer tous les albums dont le titre contient \'ab\'a0Great\'a0\'bb :\
SELECT * FROM albums WHERE Title LIKE '%Great%';\
\
3) Donner le nombre total d\'92albums contenus dans la base :\
SELECT COUNT(AlbumId) FROM albums;\
\
4) Supprimer tous les albums dont le nom contient \'ab\'a0music\'a0\'bb :\
DELETE FROM albums WHERE Title LIKE '%music%';\
\
5)Recuperer tous les albums \'e9crits par AC/DC\
SELECT Title FROM albums WHERE ArtistId LIKE 1;\
\
6)Recuperer tous les titres des albums de AC/DC :\
SELECT Name FROM tracks WHERE AlbumId=1;\
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0
\cf0 SELECT Name FROM tracks WHERE AlbumId=4;\
\
7) Recuperer tous les titres de l\'92album LET THERE BE ROCK\
SELECT Name FROM tracks WHERE AlbumId=4;\
\

\fs28 8) \cf2 \cb3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec4 Afficher le prix de cet album ainsi que sa dur\'e9e totale\cf0 \cb1 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 \

\fs24 SELECT UnitPrice, Milliseconds FROM tracks WHERE AlbumId=4;\
\
\
9) Afficher le cout de l\'92integralit\'e9 de la discographie de \'ab\'a0Deep Purple\'a0\'bb\
SELECT UnitPrice FROM tracks JOIN albums ON albums.ArtistId WHERE ArtistId=58;\
\
10)  Cr\'e9er l\'92album de ton artist favori en base :\
INSERT INTO artists (Name) VALUES ('Miley Cyrus');\
INSERT INTO albums (ArtistId,Title) VALUES (276,'Plastic Hearts');\
INSERT INTO tracks (Name,AlbumId,MediaTypeId,GenreId,Composer,Milliseconds,Bytes,UnitPrice) VALUES ('WTF Do I Know',348,1,1,'Mark Ronson',171000,375000,1.99);}