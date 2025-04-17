%Replace YOUR_API_KEY_HERE with your API key from NASA!
YOUR_APIKEY = "O1qrqoRVf26xddrKcXa1EXWAJy7vwl4KP7XpQunj";

url="https://api.nasa.gov/neo/rest/v1/feed?start_date=2015-01-01&end_date=2015-01-01&api_key=" + YOUR_APIKEY;
data=webread(url);

%convert the list of NEOs from 'struct' type to 'cell' type
NEOs = struct2cell(data.near_earth_objects);
NEOs = NEOs{1};

disp(NEOs{1}) %display information about the first recorded NEOs
disp("name is : " + NEOs{1}.name) %display the name of the first NEOs

disp(NEOs{2}) %display information about the second recorded NEOs
disp("name is : " + NEOs{2}.name) %display the name of the first NEOs

disp(NEOs{3}) %display information about the third recorded NEOs
disp("name is : " + NEOs{3}.name) %display the name of the first NEOs


