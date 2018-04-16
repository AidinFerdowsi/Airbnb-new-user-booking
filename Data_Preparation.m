%% Data preparation
clear all;
load('DATA');
DATA.affiliate_channel = affiliate_channel;
DATA.affiliate_provider = affiliate_provider;
DATA.age = age;
DATA.country_destination = country_destination;
DATA.date_account_created = date_account_created;
DATA.date_first_booking = date_first_booking;
DATA.first_affiliate_tracked = first_affiliate_tracked;
DATA.first_browser = first_browser;
DATA.first_device_type = first_device_type;
DATA.gender = gender;
DATA.id = id;
DATA.language = language;
DATA.signup_app = signup_app;
DATA.signup_flow = signup_flow;
DATA.signup_method = signup_method;
DATA.timestamp_first_active = timestamp_first_active;
fieldNames = {'affiliate_channel', 'affiliate_provider', 'age', ...
    'country_destination', 'date_account_created','date_first_booking',...
    'first_affiliate_tracked', 'first_browser', 'first_device_type', ...
    'gender', 'id', 'language', 'signup_app', 'signup_flow', ...
    'signup_method', 'timestamp_first_active'};
axisNames= {'affiliate\_channel', 'affiliate\_provider', 'age', ...
    'country\_destination', 'date\_account\_created','date\_first\_booking',...
    'first\_affiliate\_tracked', 'first\_browser', 'first\_device\_type', ...
    'gender', 'id', 'language', 'signup\_app', 'signup\_flow', ...
    'signup\_method', 'timestamp\_first\_active'};
save('DATASTRUCT','DATA','fieldNames','axisNames');
clear all;