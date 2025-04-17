% Write your getNEOs function here.
% Remember to include comments so that when we
% type 'help getNEOs' we get ... help!
function data = getNEOs(yyyy, mm, dd, API_KEY)
    % Convert year, month, and day to strings
    yearStr = string(yyyy);
    monthStr = sprintf('%02d', mm); % Ensure two-digit month
    dayStr = sprintf('%02d', dd);   % Ensure two-digit day

    % Construct the URL for the API request
    baseURL = 'https://api.nasa.gov/neo/rest/v1/feed';
    queryDate = yearStr + '-' + monthStr + '-' + dayStr;
    requestURL = baseURL + '?start_date=' + queryDate + '&end_date=' + queryDate + '&api_key=' + API_KEY;

    % Make the API call and fetch the JSON response
    data = webread(requestURL);

    % Display success message
    disp('Successfully retrieved NEO data for the specified day.');
end
