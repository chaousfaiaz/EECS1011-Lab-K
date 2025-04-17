% Write your hazardousNEOs function here.
% Remember to include comments so that when we
% type 'help hazardousNEOs' we get ... help!
function isHazardous = hazardousNEOs(data)
    % Initialize output to false
    isHazardous = false;

    % Extract all NEOs from the JSON data
    dateFields = fieldnames(data.near_earth_objects); % Get date keys
    dateKey = dateFields{1}; % Assuming one day's worth of data is retrieved
    neoList = data.near_earth_objects.(dateKey); % Access NEO objects

    % Check if any NEO is potentially hazardous
    for i = 1:numel(neoList)
        if neoList{i}.is_potentially_hazardous_asteroid
            isHazardous = true;
            return; % Exit early if a hazardous NEO is found
        end
    end
end
