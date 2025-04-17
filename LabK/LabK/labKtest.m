%Replace YOUR_API_KEY_HERE with your API key from NASA!
YOUR_APIKEY = "YOUR_API_KEY_HERE";

count = 0;
try 
    data = getNEOs(2015,1,1,YOUR_APIKEY);
    assert(data.element_count == 14 | data.element_count == 15, 'Code reports wrong number of NEOs')
    count = count + 1;
catch exception
  fprintf('FAILED TEST 1: getObjects(2015,1,1,YOUR_APIKEY) returns too many or too few NEOs!\n')
end

pause(1); %to avoid rapid subsequent API calls

try 
    value = hazardousNEOs(data);
    assert(value == true, 'one of the NEOs is hazardous!')
    count = count + 1;
catch exception
  fprintf('FAILED TEST 2: hazardousNEOs(data) contains a hazardous NEO!\n')
end

pause(1); %to avoid rapid subsequent API calls

try 
    data = getNEOs(2015,9,9,YOUR_APIKEY);
    value = hazardousNEOs(data);
    assert(value == true, 'one of the NEOs is hazardous!')
    count = count + 1;
catch exception
  fprintf('FAILED TEST 3: hazardousNEOs(data) contains a hazardous NEO!\n')
end


if (count == 3)
    disp("You have passed all the tests in this file!")
end