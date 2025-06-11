-- =====================================================
-- Spotify History Data Warehouse Schema Creation
-- =====================================================
-- DIMENSION TABLES
-- =====================================================

-- Create Artist Dimension
CREATE TABLE dim_artist (
    artist_id INT PRIMARY KEY,
    artist_name NVARCHAR(MAX)
);

-- Create Album Dimension
CREATE TABLE dim_album (
    album_id INT PRIMARY KEY,
    album_name NVARCHAR(MAX), 
    artist_id INT,
    FOREIGN KEY (artist_id) REFERENCES dim_artist(artist_id)
);

-- Create Track Dimension
CREATE TABLE dim_track (
    track_id NVARCHAR(255) PRIMARY KEY,
    track_name NVARCHAR(MAX),  
    image_url NVARCHAR(MAX) 
);

-- Create Time Dimension
CREATE TABLE dim_time (
    time_id INT PRIMARY KEY,
    ts DATETIME,
    date_full DATE,
    day_of_week NVARCHAR(3),
    hour INT
);

-- Create Platform Dimension
CREATE TABLE dim_platform (
    platform_id INT PRIMARY KEY,
    platform NVARCHAR(MAX)    
);

-- Create Reason Dimension
CREATE TABLE dim_reason (
    reason_id INT PRIMARY KEY,
    reason_start NVARCHAR(MAX),  
    reason_end NVARCHAR(MAX)    
);

-- =====================================================
-- FACT TABLE
-- =====================================================
CREATE TABLE fact_streams (
    time_id INT,
    track_id NVARCHAR(255),
    artist_id INT,
    album_id INT,
    platform_id INT,
    reason_id INT,
    ms_played INT,
    shuffle BIT,
    skipped BIT,
    FOREIGN KEY (time_id) REFERENCES dim_time(time_id),
    FOREIGN KEY (track_id) REFERENCES dim_track(track_id),
    FOREIGN KEY (artist_id) REFERENCES dim_artist(artist_id),
    FOREIGN KEY (album_id) REFERENCES dim_album(album_id),
    FOREIGN KEY (platform_id) REFERENCES dim_platform(platform_id),
    FOREIGN KEY (reason_id) REFERENCES dim_reason(reason_id)
);