%% identifying the sample size for our gender matches
nGender = 1000;
%% rounding half of the 1000 sample size to the number one.
number0f0nesGender= round(nGender/2)
%% all zeros to start
Gender= zeros(1, nGender)
%% assigning half of the 1000 numbers of zeros into ones
indexesGender = randperm(nGender, number0f0nesGender);
Gender(indexesGender)= 1
sum(Gender)

%% identifying the sample size for our matches who are homosexual
nHomo = 1000;
%% rounding half of the 1000 sample size to the number one.
number0f0nesHomo= round(nHomo/3)
%% all zeros to start
Homo= zeros(1, nHomo)
%% assigning half of the 1000 numbers of zeros into ones
indexesHomo = randperm(nHomo, number0f0nesHomo);
Homo(indexesHomo)= 1
sum(Homo)

%%generating a vector of length 1000 containing numbers 1 to 3, where 1 =
%%white, 2= black and 3= asian
ethnicity= randi([1,3],1,1000)

%%generating a vector of length 1000 containing numbers 1 to 4, where 1 =
%%brunette, 2= black, 3= blonde and 4=red
haircolour= randi([1,4],1,1000)

%%generating a vector of length 1000 containing numbers 20 to 120, where it
%%replicates incomes �20,000 to �120,000 per annum.
income= randi([20,120],1,1000)

%%generating a vector of length 1000 containing numbers 4.7 to 6.7, where it
%%replicates heights 120cm to 180cm.
height= randi([120,180],1,1000)

%%generating a vector of length 1000 containing numbers 18 to 80, where it
%%replicates ages 18 to 65.
age= randi([18,65],1,1000)


%% identifying the sample size for our matches who smoke, assuming those who are
%% smokers are happy with matching with a smoker, and vice versa.
nSmoke = 1000;
%% rounding half of the 1000 sample size to the number one.
number0f0nesSmoke= round(nSmoke/2)
%% all zeros to start
Smoke= zeros(1, nSmoke)
%% assigning half of the 1000 numbers of zeros into ones
indexesSmoke = randperm(nSmoke, number0f0nesSmoke);
Smoke(indexesSmoke)= 1
sum(Smoke)

%% identifying the sample size for our matches who are parents, assuming those who are 
%% parents are happy with matching with a parent and vice versa.
nParent = 1000;
%% rounding half of the 1000 sample size to the number one.
number0f0nesParent= round(nParent/2)
%% all zeros to start
Parent= zeros(1, nParent)
%% assigning half of the 1000 numbers of zeros into ones
indexesParent = randperm(nParent, number0f0nesParent);
Parent(indexesParent)= 1
sum(Parent)

%%generating a vector of length 1000 containing numbers 1 to 5, where 1 =
%%South England, 2= North England, 3= The Midlands, 4= Wales and 5=
%%Scotland
location= randi([1,5],1,1000)

%%generating a vector of length 1000 for an individuals ethnicity preference, 
%%where 1= white, 2= black and 3= asian
prefeth= randi([1,3],1,1000)

%%generating a vector of length 1000 for an individuals hair colour
%%preference, where 1 = brunette, 2= black, 3= blonde and 4=red
prefhaircolour= randi([1,4],1,1000)

%%generating a vector of length 1000 for an individuals income preference, where it
%%replicates incomes �20,000 to �120,000 per annum.
prefincome= randi([20,120],1,1000)

%%generating a vector of length 1000 for an individuals height preference, where it
%%replicates heights 120cm to 180cm.
prefheight= randi([120,180],1,1000)

%%generating a vector of length 1000 for an individuals age preference, where it
%%replicates ages 18 to 80.
prefage= randi([18,65],1,1000)

%%generating a vector of length 1000 for an individuals location preference, where 1 =
%%South England, 2= North England, 3= The Midlands, 4= Wales and 5= Scotland
preflocation= randi([1,5],1,1000)

%% Extract 1000 variations of names, generating a vector length 1000
filename = '1000names.xlsx';
A = readtable('1000names.xlsx');
names = A.Names

function varargout = Individualprofile(varargin)
% INDIVIDUALPROFILE MATLAB code for Individualprofile.fig
%      INDIVIDUALPROFILE, by itself, creates a new INDIVIDUALPROFILE or raises the existing
%      singleton*.
%
%      H = INDIVIDUALPROFILE returns the handle to a new INDIVIDUALPROFILE or the handle to
%      the existing singleton*.
%
%      INDIVIDUALPROFILE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INDIVIDUALPROFILE.M with the given input arguments.
%
%      INDIVIDUALPROFILE('Property','Value',...) creates a new INDIVIDUALPROFILE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Individualprofile_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Individualprofile_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Individualprofile

% Last Modified by GUIDE v2.5 14-Jan-2019 09:08:42

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Individualprofile_OpeningFcn, ...
                   'gui_OutputFcn',  @Individualprofile_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Individualprofile is made visible.
function Individualprofile_OpeningFcn(hObject, ~, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Individualprofile (see VARARGIN)

% Choose default command line output for Individualprofile
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Individualprofile wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Individualprofile_OutputFcn(~, ~, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes on button press in malebutton.
function malebutton_Callback(hObject, eventdata, handles)
% hObject    handle to malebutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of malebutton
% We need to identify and receive the male button 
m = get(handles.malebutton,'String')
% This sets the program so that pressing the male button means extraction of
% all males within the dataset.
% The if function evaluates the expression and executes it when it is true.
if set(handles.malebutton,'String',m)
    GenderMatch = find(Gender==1)
end


% --- Executes on button press in femalebutton.
function femalebutton_Callback(hObject, eventdata, handles)
% hObject    handle to femalebutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of femalebutton
% We need to identify and receive the female button 
f = get(handles.femalebutton,'String')
% This sets the program so that pressing the female button means extraction of
% all females within the dataset
% The if function evaluates the expression and executes it when it is true.
 if set(handles.femalebutton,'String',f)
     Gendermatch = find(Gender==0)
 end


% --- Executes on selection change in agepopup.
function agepopup_Callback(hObject, eventdata, handles)
% hObject    handle to agepopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns agepopup contents as cell array
%        contents{get(hObject,'Value')} returns selected item from agepopup
% We need to identify and receive the possible age options available.
agepopstring = get(handles.agepopup,'String');
% This program identfies a value within the age options that has been
% selected from the menu.
agepopvalue = get(handles.agepopup,'Value');
if agepopvalue == 18-25 
    agematch=find(18<=age & age<=25)
else if agepopvalue == 26-35 
       agematch=find(26>=age & age<=35)
        else if agepopvalue == 36-45 
                agematch = find(36<=age & age<=45)
                else if agepopvalue == 46-55 
                        agematch= find(46<=age & age<=55)
                        else if agepopvalue == 56-65 
                                agematch= find(56<=age & age<=65)
                            end
                                        
% This evaluates the expression and executes an option chosen from the string of options of ages available.
age = agepopstring{agepopvalue};


% --- Executes during object creation, after setting all properties.
function agepopup_CreateFcn(hObject, eventdata, handles)
% hObject    handle to agepopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end                

% --- Executes on selection change in locationlistbox.
function locationlistbox_Callback(hObject, eventdata, handles)
% hObject    handle to locationlistbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns locationlistbox contents as cell array
%        contents{get(hObject,'Value')} returns selected item from locationlistbox
% We need to identify and receive the possible location options available.
locationlistboxstring = get(handles.locationlistbox,'String');
% This program identfies a value within the location options that has been
% selected from the menu.
locationlistboxvalue = get(handles.locationlistbox,'Value');
if locationlistboxvalue = North England
    locationmatch== find (location==2)
    else if locationlistboxvalue = South England 
            locationmatch = find(location==1)
            else if locationlistboxvalue = The Midlands
                    locationmatch = find(location==3)
                    else if locationlistboxvalue = Wales 
                            locationmatch= find(location==4)
                            else if locationlistboxvalue = Scotland 
                                    locationmatch= find(location==5);
                                    end
% This evaluates the expression and executes an option chosen from the string of options of ages available.
location= locationlistboxstring{locationlistboxvalue};


% --- Executes during object creation, after setting all properties.
function locationlistbox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to locationlistbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in heightpopup.
function heightpopup_Callback(hObject, eventdata, handles)
% hObject    handle to heightpopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns heightpopup contents as cell array
%        contents{get(hObject,'Value')} returns selected item from heightpopup
% We need to identify and receive the possible height options available.
heightpopstring = get(handles.heightpopup,'String');
% This program identfies a value within the height options that has been
% selected from the menu.
heightpopvalue = get(handles.heightpopup,'Value');
if heightpopvalue == 120-130 
        heightmatch =find(120<=height & height<=130)
        else if heightpopvalue == 131-140
                heightmatch = find(131<=height & height<=140)
                else if heightpopvalue == 141-150 
                        heightmatch = find(141<=height & height<=150)
                        else if heightpopvalue == 151-160
                                heightmatch = find(151<=height & height<=160)
                                else if heightpopvalue == 161-170 
                                        heightmatch = find(161<=height & height<=170)
                                        else if heightpopvalue == 171-180 
                                                heightmatch = find(171<=height & height<=180)
                                      
                                        end
% This evaluates the expression and executes an option chosen from the string of options of heights available.
height= heightpopstring{heightpopvalue};


% --- Executes during object creation, after setting all properties.
function heightpopup_CreateFcn(hObject, eventdata, handles)
% hObject    handle to heightpopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in whitebutton.
function whitebutton_Callback(hObject, eventdata, handles)
% hObject    handle to whitebutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of whitebutton
% We need to identify and receive the white race button 
w = get(handles.whitebutton,'String')
% This sets the program so that pressing the white button means extraction of
% all white people within the dataset
% The if function evaluates the expression and executes it when it is true.
if set(handles.whitebutton,'String',w)
   ethnicitymatch = find(ethnicity==1)
end

% --- Executes on button press in blackbutton.
function blackbutton_Callback(hObject, eventdata, handles)
% hObject    handle to blackbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of blackbutton
% We need to identify and receive the black button 
b = get(handles.blackbutton,'String')
% This sets the program so that pressing the black race button means extraction of
% all black people within the dataset
% The if function evaluates the expression and executes it when it is true.
if set(handles.blackbutton,'String',b)
    ethnicitymatch = find(ethnicity==2)
end

% --- Executes on button press in asianbutton.
function asianbutton_Callback(hObject, eventdata, handles)
% hObject    handle to asianbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of asianbutton
% We need to identify and receive the asian button 
as = get(handles.asianbutton,'String')
% This sets the program so that pressing the asian race button means extraction of
% all asian people within the dataset
% The if function evaluates the expression and executes it when it is true.
if set(handles.asianbutton,'String',as)
    ethnicitymatch=find(ethnicity==3)
end

% --- Executes on selection change in haircolourpopup.
function haircolourpopup_Callback(hObject, eventdata, handles)
% hObject    handle to haircolourpopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns haircolourpopup contents as cell array
%        contents{get(hObject,'Value')} returns selected item from haircolourpopup
% We need to identify and receive the possible hair colour options available.
haircolourpopstring = get(handles.haircolourpopup,'String');
% This program identfies a value within the hair colour options that has been
% selected from the menu.
haircolourpopvalue = get(handles.haircolourpopup,'Value');
if haircolourpopvalue = Blonde, 
    hairmatch =find(haircolour==3)
    else if haircolourpopvalue = Brunette, 
            hairmatch = find(haircolour==1)
            else if haircolourpopvalue = Black, 
                    hairmatch= find(haircolour==2)
                    else if haircolourpopvalue = Red, 
                            hairmatch= find(haircolour==4);
                   end
% This evaluates the expression and executes an option chosen from the string of options of hair colours available.
haircolour = haircolourpopstring{haircolourpopvalue};

% --- Executes during object creation, after setting all properties.
function haircolourpopup_CreateFcn(hObject, eventdata, handles)
% hObject    handle to haircolourpopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in parentyesbutton.
function parentyesbutton_Callback(hObject, eventdata, handles)
% hObject    handle to parentyesbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parentyesbutton
% We need to identify and receive the parent yes button 
p = get(handles.parentyesbutton,'String')
% This sets the program so that pressing the parent yes button means extraction of
% all people with children within the dataset
% The if function evaluates the expression and executes it when it is true.
if set(handles.parentyesbutton,'String',p) 
    parentmatch= find(Parent==1)
end


% --- Executes on button press in parentnobutton.
function parentnobutton_Callback(hObject, eventdata, handles)
% hObject    handle to parentnobutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of parentnobutton
% We need to identify and receive the parent no button 
p' = get(handles.parentnobutton,'String')
% This sets the program so that pressing the parent no button means extraction of
% all people without children within the dataset
% The if function evaluates the expression and executes it when it is true.
if set(handles.parentnobutton,'String',p')
    parentmatch= find(Parent==0)
end


% --- Executes on button press in smokeryesbutton.
function smokeryesbutton_Callback(hObject, eventdata, handles)
% hObject    handle to smokeryesbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of smokeryesbutton
% We need to identify and receive the smoker yes button 
s = get(handles.smokeryesbutton,'String')
% This sets the program so that pressing the smoker yes button means extraction of
% all people who do smoke within the dataset
% The if function evaluates the expression and executes it when it is true.
if set(handles.smokeryesbutton,'String',s)
    smokematch= find(Smoke==1)
end

% --- Executes on button press in smokernobutton.
function smokernobutton_Callback(hObject, eventdata, handles)
% hObject    handle to smokernobutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of smokernobutton
% We need to identify and receive the smoker no button 
s' = get(handles.smokernobutton,'String')
% This sets the program so that pressing the smoker no button means extraction of
% all people who do not smoke within the dataset
% The if function evaluates the expression and executes it when it is true.
if set(handles.smokernobutton,'String',s')
   smokematch = find(Smoke==0)
end


% --- Executes on selection change in incomepopup.
function incomepopup_Callback(hObject, eventdata, handles)
% hObject    handle to incomepopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns incomepopup contents as cell array
%        contents{get(hObject,'Value')} returns selected item from incomepopup
% We need to identify and receive the possible income options available.
incomepopstring = get(handles.incomepopup,'String');
% This program identfies a value within the income options that has been
% selected from the menu.
incomepopvalue = get(handles.incomepopup,'Value');
if incomepopvalue = 20-39
            incomematch = find(19<=income & income<=39)
            else if incomepopvalue = 40-60,
                    incomematch = find(40<=income & income<=60)
                    else if incomepopvalue = 61-81, 
                            incomematch =find(61<=income & income<=81)
                            else if incomepopvalue = 82-102,
                                        incomematch = find(82<=income & income<=102)
                                    else if incomepopvalue = 103-120, 
                                            incomematch = find(103<=income & income<=120)
                                        end
% This evaluates the expression and executes an option chosen from the string of options of incomes available.
income = incomepopstring{incomepopvalue};


% --- Executes during object creation, after setting all properties.
function incomepopup_CreateFcn(hObject, eventdata, handles)
% hObject    handle to incomepopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in homosexualyesbutton.
function homosexualyesbutton_Callback(hObject, eventdata, handles)
% hObject    handle to homosexualyesbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of homosexualyesbutton
% We need to identify and receive the homosexual yes button 
h = get(handles.homosexualyesbutton,'String')
% This sets the program so that pressing the homosexual yes button means extraction of
% all homosexual males and females within the dataset
% The if function evaluates the expression and executes it when it is true.
if set(handles.homosexualyesbutton,'String',h) 
    homomatch1 = find(Homo==1 & Gender==1 | Homo==1 & Gender==0)
end

% --- Executes on button press in homosexualnobutton.
function homosexualnobutton_Callback(hObject, eventdata, handles)
% hObject    handle to homosexualnobutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of homosexualnobutton
% We need to identify and receive the homosexual no button 
h' = get(handles.homosexualnobutton,'String')
% This sets the program so that pressing the homosexual no button means extraction of
% all males and females within the dataset that are not homosexual.
% The if function evaluates the expression and executes it when it is true.
if set(handles.homosexualnobutton,'String',h') 
    homomatch1 = find(Homo==0 & Gender==1| Homo==0 & Gender==0)
end

% --- Executes on button press in nextbutton.
function nextbutton_Callback(hObject, eventdata, handles)
% hObject    handle to nextbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
uicontrol('styl','push','call','figure('Individualprofile.m*','Prefprofile.m*');close(gcbf)')

function varargout = Prefprofile(varargin)
% PREFPROFILE MATLAB code for Prefprofile.fig
%      PREFPROFILE, by itself, creates a new PREFPROFILE or raises the existing
%      singleton*.
%
%      H = PREFPROFILE returns the handle to a new PREFPROFILE or the handle to
%      the existing singleton*.
%
%      PREFPROFILE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PREFPROFILE.M with the given input arguments.
%
%      PREFPROFILE('Property','Value',...) creates a new PREFPROFILE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Prefprofile_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Prefprofile_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Prefprofile

% Last Modified by GUIDE v2.5 14-Jan-2019 11:12:27

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Prefprofile_OpeningFcn, ...
                   'gui_OutputFcn',  @Prefprofile_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Prefprofile is made visible.
function Prefprofile_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Prefprofile (see VARARGIN)

% Choose default command line output for Prefprofile
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Prefprofile wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Prefprofile_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in overallmatchbutton.
function overallmatchbutton_Callback(hObject, eventdata, handles)
% hObject    handle to overallmatchbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% We need to identify and receive the overal match button 
match = get(handles.overallmatchbutton,'String')
% This sets the program so that pressing the overall match button means
% extraction of all randomly chosen preference options matching the
% individuals profile.
% The if function evaluates the expression and executes it when it is true.
if set(handles.overallmatchbutton,'String',match) 
   
    prefmatch= intersect(Userlike,Databaselike)   
    match = intersect(prefmatch,homomatch)
overallmatch = match(names)

if isempty(match)
    disp ("We are sorry to inform you but you have no match")
else disp(names(match))
end 
%matching the user input preferences to database (finding who in the

%database fits your criteria) info put in is user preferences

Userlike = intersect(Gender,age)
Userlike = intersect(Userlike,ethnicity)
Userlike = intersect(Userlike,haircolour)
Userlike = intersect(Userlike,income)
Userlike = intersect(Userlike,height)
Userlike = intersect(Userlike,Smoke)
Userlike = intersect(Userlike,Parent)
Userlike = intersect(Userlike,location)

%matching the users info to Databases preferences (finding who likes you

%back) the info put in is users info

Databaselike = intersect(prefeth,prefage)
Databaselike = intersect(Databaselike,prefhaircolour)
Databaselike = intersect(Databaselike,prefincome)
Databaselike = intersect(Databaselike,prefheight)
Databaselike = intersect(Databaselike,prefSmoke)
Databaselike = intersect(Databaselike,prefParent)
Databaselike = intersect(Databaselike,preflocation)

%Intersect of Userlike and Databaselike will find matches where the user

%matched their preferences and vice versa

prefmatch= intersect(Userlike,Databaselike)

 

HomoGender = Homo + Gender

GayMale = find(HomoGender==2)

StraightFemaleOrStraightmale = find(HomoGender==1)

StraightFemale = find(HomoGender==0)

if prefhomoyesbutton_Callback(hObject, eventdata, handles) && malebutton_Callback(hObject, eventdata, handles)
    homomatch=GayMale
else if prefhomonobutton_Callback(hObject, eventdata, handles) && malebutton_Callback(hObject, eventdata, handles)
        homomatch=find(Gender==1 & Homo==0)
    else if prefhomonobutton_Callback(hObject, eventdata, handles) && femalebutton_Callback(hObject, eventdata, handles)
            homomatch=StraightFemale
        else prefhomoyesbutton_Callback(hObject, eventdata, handles) && femalebutton_Callback(hObject, eventdata, handles)
            homomatch=find(Gender==0 & Homo==1)
        end
    end
end

match = intersect(prefmatch,homomatch)

if isempty(match)
    disp ("We are sorry to inform you but you have no match")
else disp(names(match))
end 

% --- Executes on button press in prefmalebutton.
function prefmalebutton_Callback(hObject, eventdata, handles)
% hObject    handle to prefmalebutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of prefmalebutton
% We need to identify and receive the preference male button 
prefm = get(handles.prefmalebutton,'String')
% This sets the program so that pressing the preference male button means extraction of
% all males within the dataset.
% The if function evaluates the expression and executes it when it is true.
if set(handles.prefmalebutton,'String',prefm)
    GenderMatch = find(Gender==1)
end


% --- Executes on button press in preffemalebutton.
function preffemalebutton_Callback(hObject, eventdata, handles)
% hObject    handle to preffemalebutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of preffemalebutton
% We need to identify and receive the preference female button 
preff = get(handles.preffemalebutton,'String')
% This sets the program so that pressing the preference female button means extraction of
% all females within the dataset
% The if function evaluates the expression and executes it when it is true.
 if set(handles.preffemalebutton,'String',preff)
     Gendermatch = find(Gender==0)
 end


% --- Executes on selection change in prefagepopup.
function prefagepopup_Callback(hObject, eventdata, handles)
% hObject    handle to prefagepopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns prefagepopup contents as cell array
%        contents{get(hObject,'Value')} returns selected item from prefagepopup
% We need to identify and receive the possible preference age options available.
prefagepopstring = get(handles.prefagepopup,'String');
% This program identfies a value within the age options that has been
% selected from the menu.
prefagepopvalue = get(handles.prefagepopup,'Value');
if prefagepopvalue == 18-25 
    agematch=find(18<=age & age<=25)
else if prefagepopvalue == 26-35 
       agematch=find(26>=age & age<=35)
        else if prefagepopvalue == 36-45 
                agematch = find(36<=age & age<=45)
                else if prefagepopvalue == 46-55 
                        agematch= find(46<=age & age<=55)
                        else if prefagepopvalue == 56-65 
                                agematch= find(56<=age & age<=65)
                            end
                                     
% This evaluates the expression and executes an option chosen from the string of options of ages available.
prefage= prefagepopstring{prefagepopvalue};


% --- Executes during object creation, after setting all properties.
function prefagepopup_CreateFcn(hObject, eventdata, handles)
% hObject    handle to prefagepopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in preflocationlistbox.
function preflocationlistbox_Callback(hObject, eventdata, handles)
% hObject    handle to preflocationlistbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns preflocationlistbox contents as cell array
%        contents{get(hObject,'Value')} returns selected item from preflocationlistbox
% We need to identify and receive the possible preferred location options available.
preflocationlistboxstring = get(handles.locationlistbox,'String');
% This program identfies a value within the location options that has been
% selected from the menu.
preflocationlistboxvalue = get(handles.preflocationlistbox,'Value');
if preflocationlistboxvalue = North England, 
    locationmatch = find(location==2)
    else if preflocationlistboxvalue = South England, 
            locationmatch = (location==1)
            else if preflocationlistboxvalue = The Midlands, 
                    locationmatch= find(location==3)
                    else if preflocationlistboxvalue = Wales, 
                            locationmatch= find(location==4)
                            else if preflocationlistboxvalue = Scotland, 
                                    locationmatch= find(location==5);
                                    end
% This evaluates the expression and executes an option chosen from the string of options of ages available.
preflocation= preflocationlistboxstring{preflocationlistboxvalue};


% --- Executes during object creation, after setting all properties.
function preflocationlistbox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to preflocationlistbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in prefheightpopup.
function prefheightpopup_Callback(hObject, eventdata, handles)
% hObject    handle to prefheightpopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns prefheightpopup contents as cell array
%        contents{get(hObject,'Value')} returns selected item from prefheightpopup
% We need to identify and receive the possible preferred height options available.
prefheightpopstring = get(handles.prefheightpopup,'String');
% This program identfies a value within the height options that has been
% selected from the menu.
prefheightpopvalue = get(handles.prefheightpopup,'Value');
if prefheightpopvalue == 120-130 
        heightmatch =find(120<=height & height<=130)
        else if prefheightpopvalue == 131-140
                heightmatch = find(131<=height & height<=140)
                else if prefheightpopvalue == 141-150 
                        heightmatch = find(141<=height & height<=150)
                        else if prefheightpopvalue == 151-160
                                heightmatch = find(151<=height & height<=160)
                                else if prefheightpopvalue == 161-170 
                                        heightmatch = find(161<=height & height<=170)
                                        else if prefheightpopvalue == 171-180 
                                                heightmatch = find(171<=height & height<=180)
                                      
                                        end
% This evaluates the expression and executes an option chosen from the string of options of heights available.
prefheight = prefheightpopstring{prefheightpopvalue};



% --- Executes during object creation, after setting all properties.
function prefheightpopup_CreateFcn(hObject, eventdata, handles)
% hObject    handle to prefheightpopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in prefwhitebutton.
function prefwhitebutton_Callback(hObject, eventdata, handles)
% hObject    handle to prefwhitebutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of prefwhitebutton
% We need to identify and receive the white race button 
prefw = get(handles.prefwhitebutton,'String')
% This sets the program so that pressing the white button means extraction of
% all white people within the dataset
% The if function evaluates the expression and executes it when it is true.
if set(handles.prefwhitebutton,'String',prefw)
   ethnicitymatch = find(ethnicity==1)
end


% --- Executes on button press in prefblackbutton.
function prefblackbutton_Callback(hObject, eventdata, handles)
% hObject    handle to prefblackbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of prefblackbutton
% We need to identify and receive the black button 
prefb = get(handles.prefblackbutton,'String')
% This sets the program so that pressing the black race button means extraction of
% all black people within the dataset
% The if function evaluates the expression and executes it when it is true.
if set(handles.prefblackbutton,'String',prefb)
    ethnicitymatch = find(ethnicity==2)
end

% --- Executes on button press in prefasianbutton.
function prefasianbutton_Callback(hObject, eventdata, handles)
% hObject    handle to prefasianbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of prefasianbutton
% We need to identify and receive the asian button 
prefas = get(handles.prefasianbutton,'String')
% This sets the program so that pressing the asian race button means extraction of
% all asian people within the dataset
% The if function evaluates the expression and executes it when it is true.
if set(handles.prefasianbutton,'String',prefas)
    ethnicitymatch=find(ethnicity==3)
end


% --- Executes on selection change in prefhaircolourpopup.
function prefhaircolourpopup_Callback(hObject, eventdata, handles)
% hObject    handle to prefhaircolourpopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns prefhaircolourpopup contents as cell array
%        contents{get(hObject,'Value')} returns selected item from prefhaircolourpopup
% We need to identify and receive the possible preferred hair colour options available.
prefhaircolourpopstring = get(handles.prefhaircolourpopup,'String');
% This program identfies a value within the hair colour options that has been
% selected from the menu.
prefhaircolourpopvalue = get(handles.prefhaircolourpopup,'Value');
if prefhaircolourpopvalue = Blonde, 
    hairmatch =find(haircolour==3)
    else if prefhaircolourpopvalue = Brunette, 
            hairmatch = find(haircolour==1)
            else if prefhaircolourpopvalue = Black, 
                    hairmatch= find(haircolour==2)
                    else if prefhaircolourpopvalue = Red, 
                            hairmatch= find(haircolour==4);
                   end
% This evaluates the expression and executes an option chosen from the string of options of hair colours available.
prefhaircolour = prefhaircolourpopstring{prefhaircolourpopvalue};


% --- Executes during object creation, after setting all properties.
function prefhaircolourpopup_CreateFcn(hObject, eventdata, handles)
% hObject    handle to prefhaircolourpopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in prefparentyesbutton.
function prefparentyesbutton_Callback(hObject, eventdata, handles)
% hObject    handle to prefparentyesbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of prefparentyesbutton
% We need to identify and receive the parent yes button 
prefp = get(handles.prefparentyesbutton,'String')
% This sets the program so that pressing the parent yes button means extraction of
% all people with children within the dataset
% The if function evaluates the expression and executes it when it is true.
if set(handles.prefparentyesbutton,'String',prefp) 
    parentmatch= find(Parent==1)
end

% --- Executes on button press in prefparentnobutton.
function prefparentnobutton_Callback(hObject, eventdata, handles)
% hObject    handle to prefparentnobutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of prefparentnobutton
% We need to identify and receive the parent no button 
prefp' = get(handles.prefparentnobutton,'String')
% This sets the program so that pressing the parent no button means extraction of
% all people without children within the dataset
% The if function evaluates the expression and executes it when it is true.
if set(handles.prefparentnobutton,'String',prefp')
    parentmatch= find(Parent==0)
end


% --- Executes on button press in prefsmokeryesbutton.
function prefsmokeryesbutton_Callback(hObject, eventdata, handles)
% hObject    handle to prefsmokeryesbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of prefsmokeryesbutton
% We need to identify and receive the smoker yes button 
prefs = get(handles.prefsmokeryesbutton,'String')
% This sets the program so that pressing the smoker yes button means extraction of
% all people who do smoke within the dataset
% The if function evaluates the expression and executes it when it is true.
if set(handles.prefsmokeryesbutton,'String',prefs)
    smokematch= find(Smoke==1)
end


% --- Executes on button press in prefsmokernobutton.
function prefsmokernobutton_Callback(hObject, eventdata, handles)
% hObject    handle to prefsmokernobutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of prefsmokernobutton
% We need to identify and receive the smoker no button 
prefs' = get(handles.prefsmokernobutton,'String')
% This sets the program so that pressing the smoker no button means extraction of
% all people who do not smoke within the dataset
% The if function evaluates the expression and executes it when it is true.
if set(handles.prefsmokernobutton,'String',prefs')
   smokematch = find(Smoke==0)
end



% --- Executes on selection change in prefincomepopup.
function prefincomepopup_Callback(hObject, eventdata, handles)
% hObject    handle to prefincomepopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns prefincomepopup contents as cell array
%        contents{get(hObject,'Value')} returns selected item from prefincomepopup
% We need to identify and receive the possible preferred income options available.
prefincomepopstring = get(handles.prefincomepopup,'String');
% This program identfies a value within the income options that has been
% selected from the menu.
prefincomepopvalue = get(handles.prefincomepopup,'Value');
if prefincomepopvalue = 20-39
            incomematch = find(19<=income & income<=39)
            else if prefincomepopvalue = 40-60,
                    incomematch = find(40<=income & income<=60)
                    else if prefincomepopvalue = 61-81, 
                            incomematch =find(61<=income & income<=81)
                            else if prefincomepopvalue = 82-102,
                                        incomematch = find(82<=income & income<=102)
                                    else if prefincomepopvalue = 103-120, 
                                            incomematch = find(103<=income & income<=120)
                                        end
% This evaluates the expression and executes an option chosen from the string of options of incomes available.
prefincome = prefincomepopstring{prefincomepopvalue};


% --- Executes during object creation, after setting all properties.
function prefincomepopup_CreateFcn(hObject, eventdata, handles)
% hObject    handle to prefincomepopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in prefhomoyesbutton.
function prefhomoyesbutton_Callback(hObject, eventdata, handles)
% hObject    handle to prefhomoyesbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of prefhomoyesbutton
% We need to identify and receive the homosexual yes button 
prefh = get(handles.prefhomosyesbutton,'String')
% This sets the program so that pressing the homosexual yes button means extraction of
% all homosexual males and females within the dataset
% The if function evaluates the expression and executes it when it is true.
if set(handles.prefhomosexualyesbutton,'String',prefh) 
    homomatch1 = find(Homo==1 & Gender==1 | Homo==1 & Gender==0)
end


% --- Executes on button press in prefhomonobutton.
function prefhomonobutton_Callback(hObject, eventdata, handles)
% hObject    handle to prefhomonobutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of prefhomonobutton
% We need to identify and receive the homosexual no button 
prefh' = get(handles.prefhomonobutton,'String')
% This sets the program so that pressing the homosexual no button means extraction of
% all males and females within the dataset that are not homosexual.
% The if function evaluates the expression and executes it when it is true.
if set(handles.prefhomosexualnobutton,'String',prefh') 
    homomatch1 = find(Homo==0 & Gender==1| Homo==0 & Gender==0)
end

