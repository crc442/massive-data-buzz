SELECT DATE(FROM_UNIXTIME()) AS ForDate, COUNT(*) AS NumPickups FROM trip_data_dec GROUP BY DATE(FROM_UNIXTIME(MyTimestamp)) ORDER BY ForDate




SELECT * FROM Table1 a WHERE ( acos(sin(a.pickup_latitude * 0.0175) * sin(40.776927 * 0.0175) + cos(a.pickup_latitude * 0.0175) * cos(40.776927 * 0.0175) *  cos((-73.873966 * 0.0175) - (a.pickup_longitude * 0.0175))) * 3959 <= 2)

-- lg 40.776927,-73.873966
-- jfk 40.6423317,-73.7876882

CREATE table lg_pickup_count(for_date timestamp, pickup_count varchar(20));

CREATE table lg_pickup_jan(pickup_latitude varchar(50), pickup_longitude varchar(50), dropoff_latitude varchar(50), dropoff_longitude varchar(50));
CREATE table lg_pickup_feb(pickup_latitude varchar(50), pickup_longitude varchar(50), dropoff_latitude varchar(50), dropoff_longitude varchar(50));
CREATE table lg_pickup_mar(pickup_latitude varchar(50), pickup_longitude varchar(50), dropoff_latitude varchar(50), dropoff_longitude varchar(50));
CREATE table lg_pickup_apr(pickup_latitude varchar(50), pickup_longitude varchar(50), dropoff_latitude varchar(50), dropoff_longitude varchar(50));
CREATE table lg_pickup_may(pickup_latitude varchar(50), pickup_longitude varchar(50), dropoff_latitude varchar(50), dropoff_longitude varchar(50));
CREATE table lg_pickup_jun(pickup_latitude varchar(50), pickup_longitude varchar(50), dropoff_latitude varchar(50), dropoff_longitude varchar(50));
CREATE table lg_pickup_jul(pickup_latitude varchar(50), pickup_longitude varchar(50), dropoff_latitude varchar(50), dropoff_longitude varchar(50));
CREATE table lg_pickup_aug(pickup_latitude varchar(50), pickup_longitude varchar(50), dropoff_latitude varchar(50), dropoff_longitude varchar(50));
CREATE table lg_pickup_sep(pickup_latitude varchar(50), pickup_longitude varchar(50), dropoff_latitude varchar(50), dropoff_longitude varchar(50));
CREATE table lg_pickup_oct(pickup_latitude varchar(50), pickup_longitude varchar(50), dropoff_latitude varchar(50), dropoff_longitude varchar(50));
CREATE table lg_pickup_nov(pickup_latitude varchar(50), pickup_longitude varchar(50), dropoff_latitude varchar(50), dropoff_longitude varchar(50));
CREATE table lg_pickup_dec(pickup_latitude varchar(50), pickup_longitude varchar(50), dropoff_latitude varchar(50), dropoff_longitude varchar(50));

#LG airport pickups - All
insert into table lg_pickup_jan SELECT a.pickup_latitude, a.pickup_longitude, a.dropoff_latitude, a.dropoff_longitude FROM trip_data_jan a WHERE ( acos(sin(a.pickup_latitude * 0.0175) * sin(40.776927 * 0.0175) + cos(a.pickup_latitude * 0.0175) * cos(40.776927 * 0.0175) *  cos((-73.873966 * 0.0175) - (a.pickup_longitude * 0.0175))) * 3959 <= 1);
insert into table lg_pickup_feb SELECT a.pickup_latitude, a.pickup_longitude, a.dropoff_latitude, a.dropoff_longitude FROM trip_data_feb a WHERE ( acos(sin(a.pickup_latitude * 0.0175) * sin(40.776927 * 0.0175) + cos(a.pickup_latitude * 0.0175) * cos(40.776927 * 0.0175) *  cos((-73.873966 * 0.0175) - (a.pickup_longitude * 0.0175))) * 3959 <= 1);
insert into table lg_pickup_mar SELECT a.pickup_latitude, a.pickup_longitude, a.dropoff_latitude, a.dropoff_longitude FROM trip_data_mar a WHERE ( acos(sin(a.pickup_latitude * 0.0175) * sin(40.776927 * 0.0175) + cos(a.pickup_latitude * 0.0175) * cos(40.776927 * 0.0175) *  cos((-73.873966 * 0.0175) - (a.pickup_longitude * 0.0175))) * 3959 <= 1);
insert into table lg_pickup_apr SELECT a.pickup_latitude, a.pickup_longitude, a.dropoff_latitude, a.dropoff_longitude FROM trip_data_apr a WHERE ( acos(sin(a.pickup_latitude * 0.0175) * sin(40.776927 * 0.0175) + cos(a.pickup_latitude * 0.0175) * cos(40.776927 * 0.0175) *  cos((-73.873966 * 0.0175) - (a.pickup_longitude * 0.0175))) * 3959 <= 1);
insert into table lg_pickup_may SELECT a.pickup_latitude, a.pickup_longitude, a.dropoff_latitude, a.dropoff_longitude FROM trip_data_may a WHERE ( acos(sin(a.pickup_latitude * 0.0175) * sin(40.776927 * 0.0175) + cos(a.pickup_latitude * 0.0175) * cos(40.776927 * 0.0175) *  cos((-73.873966 * 0.0175) - (a.pickup_longitude * 0.0175))) * 3959 <= 1);
insert into table lg_pickup_jun SELECT a.pickup_latitude, a.pickup_longitude, a.dropoff_latitude, a.dropoff_longitude FROM trip_data_jun a WHERE ( acos(sin(a.pickup_latitude * 0.0175) * sin(40.776927 * 0.0175) + cos(a.pickup_latitude * 0.0175) * cos(40.776927 * 0.0175) *  cos((-73.873966 * 0.0175) - (a.pickup_longitude * 0.0175))) * 3959 <= 1);
-- insert into table lg_pickup_jul SELECT a.pickup_latitude, a.pickup_longitude, a.dropoff_latitude, a.dropoff_longitude FROM trip_data_jul a WHERE ( acos(sin(a.pickup_latitude * 0.0175) * sin(40.776927 * 0.0175) + cos(a.pickup_latitude * 0.0175) * cos(40.776927 * 0.0175) *  cos((-73.873966 * 0.0175) - (a.pickup_longitude * 0.0175))) * 3959 <= 2)
-- insert into table lg_pickup_aug SELECT a.pickup_latitude, a.pickup_longitude, a.dropoff_latitude, a.dropoff_longitude FROM trip_data_aug a WHERE ( acos(sin(a.pickup_latitude * 0.0175) * sin(40.776927 * 0.0175) + cos(a.pickup_latitude * 0.0175) * cos(40.776927 * 0.0175) *  cos((-73.873966 * 0.0175) - (a.pickup_longitude * 0.0175))) * 3959 <= 2)
insert into table lg_pickup_sep SELECT a.pickup_latitude, a.pickup_longitude, a.dropoff_latitude, a.dropoff_longitude FROM trip_data_sept a WHERE ( acos(sin(a.pickup_latitude * 0.0175) * sin(40.776927 * 0.0175) + cos(a.pickup_latitude * 0.0175) * cos(40.776927 * 0.0175) *  cos((-73.873966 * 0.0175) - (a.pickup_longitude * 0.0175))) * 3959 <= 1);
insert into table lg_pickup_oct SELECT a.pickup_latitude, a.pickup_longitude, a.dropoff_latitude, a.dropoff_longitude FROM trip_data_oct a WHERE ( acos(sin(a.pickup_latitude * 0.0175) * sin(40.776927 * 0.0175) + cos(a.pickup_latitude * 0.0175) * cos(40.776927 * 0.0175) *  cos((-73.873966 * 0.0175) - (a.pickup_longitude * 0.0175))) * 3959 <= 1);
insert into table lg_pickup_nov SELECT a.pickup_latitude, a.pickup_longitude, a.dropoff_latitude, a.dropoff_longitude FROM trip_data_nov a WHERE ( acos(sin(a.pickup_latitude * 0.0175) * sin(40.776927 * 0.0175) + cos(a.pickup_latitude * 0.0175) * cos(40.776927 * 0.0175) *  cos((-73.873966 * 0.0175) - (a.pickup_longitude * 0.0175))) * 3959 <= 1);
insert into table lg_pickup_dec SELECT a.pickup_latitude, a.pickup_longitude, a.dropoff_latitude, a.dropoff_longitude FROM trip_data_dec a WHERE ( acos(sin(a.pickup_latitude * 0.0175) * sin(40.776927 * 0.0175) + cos(a.pickup_latitude * 0.0175) * cos(40.776927 * 0.0175) *  cos((-73.873966 * 0.0175) - (a.pickup_longitude * 0.0175))) * 3959 <= 1);



CREATE table lg_dropoff_jan(pickup_latitude varchar(50), pickup_longitude varchar(50), dropoff_latitude varchar(50), dropoff_longitude varchar(50));
CREATE table lg_dropoff_feb(pickup_latitude varchar(50), pickup_longitude varchar(50), dropoff_latitude varchar(50), dropoff_longitude varchar(50));
CREATE table lg_dropoff_mar(pickup_latitude varchar(50), pickup_longitude varchar(50), dropoff_latitude varchar(50), dropoff_longitude varchar(50));
CREATE table lg_dropoff_apr(pickup_latitude varchar(50), pickup_longitude varchar(50), dropoff_latitude varchar(50), dropoff_longitude varchar(50));
CREATE table lg_dropoff_may(pickup_latitude varchar(50), pickup_longitude varchar(50), dropoff_latitude varchar(50), dropoff_longitude varchar(50));
CREATE table lg_dropoff_jun(pickup_latitude varchar(50), pickup_longitude varchar(50), dropoff_latitude varchar(50), dropoff_longitude varchar(50));
CREATE table lg_dropoff_jul(pickup_latitude varchar(50), pickup_longitude varchar(50), dropoff_latitude varchar(50), dropoff_longitude varchar(50));
CREATE table lg_dropoff_aug(pickup_latitude varchar(50), pickup_longitude varchar(50), dropoff_latitude varchar(50), dropoff_longitude varchar(50));
CREATE table lg_dropoff_sep(pickup_latitude varchar(50), pickup_longitude varchar(50), dropoff_latitude varchar(50), dropoff_longitude varchar(50));
CREATE table lg_dropoff_oct(pickup_latitude varchar(50), pickup_longitude varchar(50), dropoff_latitude varchar(50), dropoff_longitude varchar(50));
CREATE table lg_dropoff_nov(pickup_latitude varchar(50), pickup_longitude varchar(50), dropoff_latitude varchar(50), dropoff_longitude varchar(50));
CREATE table lg_dropoff_dec(pickup_latitude varchar(50), pickup_longitude varchar(50), dropoff_latitude varchar(50), dropoff_longitude varchar(50));


#LG airport dropoffs -  All
hive -e insert into table lg_dropoff_jan SELECT a.pickup_latitude, a.pickup_longitude, a.dropoff_latitude, a.dropoff_longitude FROM trip_data_jan a WHERE ( acos(sin(a.dropoff_latitude * 0.0175) * sin(40.776927 * 0.0175) + cos(a.dropoff_latitude * 0.0175) * cos(40.776927 * 0.0175) *  cos((-73.873966 * 0.0175) - (a.dropoff_longitude * 0.0175))) * 3959 <= 1) > /home/acb583/output/dropoff/jan.tsv
hive -e 'SELECT a.pickup_latitude, a.pickup_longitude, a.dropoff_latitude, a.dropoff_longitude FROM trip_data_jan a WHERE ( acos(sin(a.dropoff_latitude * 0.0175) * sin(40.776927 * 0.0175) + cos(a.dropoff_latitude * 0.0175) * cos(40.776927 * 0.0175) *  cos((-73.873966 * 0.0175) - (a.dropoff_longitude * 0.0175))) * 3959 <= 1)' > /home/acb583/output/dropoff/jan.tsv
hive -e 'SELECT a.pickup_latitude, a.pickup_longitude, a.dropoff_latitude, a.dropoff_longitude FROM trip_data_feb a WHERE ( acos(sin(a.dropoff_latitude * 0.0175) * sin(40.776927 * 0.0175) + cos(a.dropoff_latitude * 0.0175) * cos(40.776927 * 0.0175) *  cos((-73.873966 * 0.0175) - (a.dropoff_longitude * 0.0175))) * 3959 <= 1)' > /home/acb583/output/dropoff/feb.tsv
hive -e 'SELECT a.pickup_latitude, a.pickup_longitude, a.dropoff_latitude, a.dropoff_longitude FROM trip_data_mar a WHERE ( acos(sin(a.dropoff_latitude * 0.0175) * sin(40.776927 * 0.0175) + cos(a.dropoff_latitude * 0.0175) * cos(40.776927 * 0.0175) *  cos((-73.873966 * 0.0175) - (a.dropoff_longitude * 0.0175))) * 3959 <= 1)' > /home/acb583/output/dropoff/mar.tsv 
hive -e 'SELECT a.pickup_latitude, a.pickup_longitude, a.dropoff_latitude, a.dropoff_longitude FROM trip_data_apr a WHERE ( acos(sin(a.dropoff_latitude * 0.0175) * sin(40.776927 * 0.0175) + cos(a.dropoff_latitude * 0.0175) * cos(40.776927 * 0.0175) *  cos((-73.873966 * 0.0175) - (a.dropoff_longitude * 0.0175))) * 3959 <= 1)' > /home/acb583/output/dropoff/apr.tsv 
hive -e 'SELECT a.pickup_latitude, a.pickup_longitude, a.dropoff_latitude, a.dropoff_longitude FROM trip_data_may a WHERE ( acos(sin(a.dropoff_latitude * 0.0175) * sin(40.776927 * 0.0175) + cos(a.dropoff_latitude * 0.0175) * cos(40.776927 * 0.0175) *  cos((-73.873966 * 0.0175) - (a.dropoff_longitude * 0.0175))) * 3959 <= 1)' > /home/acb583/output/dropoff/may.tsv 
hive -e 'SELECT a.pickup_latitude, a.pickup_longitude, a.dropoff_latitude, a.dropoff_longitude FROM trip_data_jun a WHERE ( acos(sin(a.dropoff_latitude * 0.0175) * sin(40.776927 * 0.0175) + cos(a.dropoff_latitude * 0.0175) * cos(40.776927 * 0.0175) *  cos((-73.873966 * 0.0175) - (a.dropoff_longitude * 0.0175))) * 3959 <= 1)' > /home/acb583/output/dropoff/jun.tsv 
hive -e 'SELECT a.pickup_latitude, a.pickup_longitude, a.dropoff_latitude, a.dropoff_longitude FROM trip_data_jul a WHERE ( acos(sin(a.dropoff_latitude * 0.0175) * sin(40.776927 * 0.0175) + cos(a.dropoff_latitude * 0.0175) * cos(40.776927 * 0.0175) *  cos((-73.873966 * 0.0175) - (a.dropoff_longitude * 0.0175))) * 3959 <= 1)' > /home/acb583/output/dropoff/jul.tsv
-- hive -e 'SELECT a.pickup_latitude, a.pickup_longitude, a.dropoff_latitude, a.dropoff_longitude FROM trip_data_aug a WHERE ( acos(sin(a.dropoff_latitude * 0.0175) * sin(40.776927 * 0.0175) + cos(a.dropoff_latitude * 0.0175) * cos(40.776927 * 0.0175) *  cos((-73.873966 * 0.0175) - (a.dropoff_longitude * 0.0175))) * 3959 <= 1)' > /home/acb583/output/dropoff/aug.tsv 
hive -e 'SELECT a.pickup_latitude, a.pickup_longitude, a.dropoff_latitude, a.dropoff_longitude FROM trip_data_sept a WHERE ( acos(sin(a.dropoff_latitude * 0.0175) * sin(40.776927 * 0.0175) + cos(a.dropoff_latitude * 0.0175) * cos(40.776927 * 0.0175) *  cos((-73.873966 * 0.0175) - (a.dropoff_longitude * 0.0175))) * 3959 <= 1)' > /home/acb583/output/dropoff/sep.tsv 
hive -e 'SELECT a.pickup_latitude, a.pickup_longitude, a.dropoff_latitude, a.dropoff_longitude FROM trip_data_oct a WHERE ( acos(sin(a.dropoff_latitude * 0.0175) * sin(40.776927 * 0.0175) + cos(a.dropoff_latitude * 0.0175) * cos(40.776927 * 0.0175) *  cos((-73.873966 * 0.0175) - (a.dropoff_longitude * 0.0175))) * 3959 <= 1)' > /home/acb583/output/dropoff/oct.tsv 
hive -e 'SELECT a.pickup_latitude, a.pickup_longitude, a.dropoff_latitude, a.dropoff_longitude FROM trip_data_nov a WHERE ( acos(sin(a.dropoff_latitude * 0.0175) * sin(40.776927 * 0.0175) + cos(a.dropoff_latitude * 0.0175) * cos(40.776927 * 0.0175) *  cos((-73.873966 * 0.0175) - (a.dropoff_longitude * 0.0175))) * 3959 <= 1)' > /home/acb583/output/dropoff/nov.tsv 
hive -e 'SELECT a.pickup_latitude, a.pickup_longitude, a.dropoff_latitude, a.dropoff_longitude FROM trip_data_dec a WHERE ( acos(sin(a.dropoff_latitude * 0.0175) * sin(40.776927 * 0.0175) + cos(a.dropoff_latitude * 0.0175) * cos(40.776927 * 0.0175) *  cos((-73.873966 * 0.0175) - (a.dropoff_longitude * 0.0175))) * 3959 <= 1)' > /home/acb583/output/dropoff/dec.tsv 


CREATE external table yolo_taxis (licence_num string, l_type string, r_status string, licence_plate string, vin string, hol string, year string, model_year string, m_type string, agent_num string, agent_name string, agent_phone string) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile;




load data local inpath '/home/acb583/output/current_medallions.csv' into table yolo_taxis;



hive -e 'select count(*) as count_model, model_year from taxis_vehicles group by model_year' > /home/acb583/output/dropoff/modelyear_count.tsv



-- lg pickups all
hive -e 'select to_date(pickup_date_trip) as day, count(*) as count_pickups from lg_pickup_all group by to_date(pickup_date_trip)' > /home/acb583/output/dropoff/lg_pickup_all_by_day.tsv

select to_date(pickup_date_trip) as day, count(*) as count_pickups from lg_pickup_all group by to_date(pickup_date_trip)

CREATE table lg_pickup_all(medallion varchar(50), hack_license varchar(50), pickup_latitude varchar(50), pickup_longitude varchar(50), dropoff_latitude varchar(50), dropoff_longitude varchar(50), pickup_date_trip timestamp);
insert into table lg_pickup_all SELECT a.medallion, a.hack_license, a.pickup_latitude, a.pickup_longitude, a.dropoff_latitude, a.dropoff_longitude, a.pickup_datetime FROM trip_data_all a WHERE ( acos(sin(a.pickup_latitude * 0.0175) * sin(40.776927 * 0.0175) + cos(a.pickup_latitude * 0.0175) * cos(40.776927 * 0.0175) *  cos((-73.873966 * 0.0175) - (a.pickup_longitude * 0.0175))) * 3959 <= 1);


-- lg dropoffs all
CREATE table lg_dropoff_all(medallion varchar(50), hack_license varchar(50), pickup_latitude varchar(50), pickup_longitude varchar(50), dropoff_latitude varchar(50), dropoff_longitude varchar(50), pickup_date_trip timestamp);
insert into table lg_dropoff_all SELECT a.medallion, a.hack_license, a.pickup_latitude, a.pickup_longitude, a.dropoff_latitude, a.dropoff_longitude, a.dropoff_datetime FROM trip_data_all a WHERE ( acos(sin(a.dropoff_latitude * 0.0175) * sin(40.776927 * 0.0175) + cos(a.dropoff_latitude * 0.0175) * cos(40.776927 * 0.0175) *  cos((-73.873966 * 0.0175) - (a.dropoff_longitude * 0.0175))) * 3959 <= 1);

select to_date(dropoff_date_trip) as day, count(*) as count_dropoffs from lg_dropoff_all group by to_date(dropoff_date_trip)

hive -e 'select to_date(dropoff_date_trip) as day, count(*) as count_dropoffs from lg_dropoff_all group by to_date(dropoff_date_trip)' > /home/acb583/output/dropoff/lg_dropoff_all_by_day.tsv


-- jfk pickups all
hive -e 'select to_date(pickup_date_trip) as day, count(*) as count_pickups from jfk_pickup_all group by to_date(pickup_date_trip)' > /home/acb583/output/dropoff/jfk_pickup_all_by_day.tsv

select to_date(pickup_date_trip) as day, count(*) as count_pickups from jfk_pickup_all group by to_date(pickup_date_trip)

CREATE table jfk_pickup_all(medallion varchar(50), hack_license varchar(50), pickup_latitude varchar(50), pickup_longitude varchar(50), dropoff_latitude varchar(50), dropoff_longitude varchar(50), pickup_date_trip timestamp);
insert into table jfk_pickup_all SELECT a.medallion, a.hack_license, a.pickup_latitude, a.pickup_longitude, a.dropoff_latitude, a.dropoff_longitude, a.pickup_datetime FROM trip_data_all a WHERE ( acos(sin(a.pickup_latitude * 0.0175) * sin(40.6423317 * 0.0175) + cos(a.pickup_latitude * 0.0175) * cos(40.6423317 * 0.0175) *  cos((-73.7876882 * 0.0175) - (a.pickup_longitude * 0.0175))) * 3959 <= 1);


-- jfk dropoffs all
CREATE table jfk_dropoff_all(medallion varchar(50), hack_license varchar(50), pickup_latitude varchar(50), pickup_longitude varchar(50), dropoff_latitude varchar(50), dropoff_longitude varchar(50), pickup_date_trip timestamp);
insert into table jfk_dropoff_all SELECT a.medallion, a.hack_license, a.pickup_latitude, a.pickup_longitude, a.dropoff_latitude, a.dropoff_longitude, a.dropoff_datetime FROM trip_data_all a WHERE ( acos(sin(a.dropoff_latitude * 0.0175) * sin(40.6423317 * 0.0175) + cos(a.dropoff_latitude * 0.0175) * cos(40.6423317 * 0.0175) *  cos((-73.7876882 * 0.0175) - (a.dropoff_longitude * 0.0175))) * 3959 <= 1);

select to_date(pickup_date_trip) as day, count(*) as count_dropoffs from jfk_dropoff_all group by to_date(pickup_date_trip)

hive -e 'select to_date(pickup_date_trip) as day, count(*) as count_dropoffs from jfk_dropoff_all group by to_date(pickup_date_trip)' > /home/acb583/output/dropoff/jfk_dropoff_all_by_day.tsv




select substr(vin,1,1) as country_code, count(*) as count_country from yolo_taxis group by substr(vin,1,1)
select substr(vin,10,1) as country_code, count(*) as count_country from yolo_taxis group by substr(vin,10,1)







