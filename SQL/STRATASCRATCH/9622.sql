/*https://platform.stratascratch.com/coding-question?id=9622&python=*/

select city,property_type,avg(bathrooms) as bathrooms,avg(bedrooms) as bedrooms from airbnb_search_details
group by city,property_type;