function varargout = untitled(varargin)
% UNTITLED MATLAB code for untitled.fig
%      UNTITLED, by itself, creates a new UNTITLED or raises the existing
%      singleton*.
%
%      H = UNTITLED returns the handle to a new UNTITLED or the handle to
%      the existing singleton*.
%
%      UNTITLED('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNTITLED.M with the given input arguments.
%
%      UNTITLED('Property','Value',...) creates a new UNTITLED or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled

% Last Modified by GUIDE v2.5 07-Jan-2019 15:24:21

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled_OutputFcn, ...
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


% --- Executes just before untitled is made visible.
function untitled_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled (see VARARGIN)

% Choose default command line output for untitled
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes untitled wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = untitled_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in matchbutton.
function matchbutton_Callback(hObject, eventdata, handles)
% hObject    handle to matchbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



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
set(handles.malebutton,'String',m if male==1)

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
set(handles.femalebutton,'String',f if female==1)

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
set(handles.homosexualyesbutton,'String',h if homosexual==1 & female==1 | homosexual==1 & male==1)


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
set(handles.homosexualnobutton,'String',h' if homosexual==0 & female==1 | homosexual==0 & male==1)
   

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
if agepopvalue == 18-25 if 18<=age<=25
else if agepopvalue == 26-35 if 26<=age<=35
        else if agepopvalue == 36-45 if 36<=age<=45
                else if agepopvalue == 46-55 if 46<=age<=55
                        else if agepopvalue == 56-65 if 56<=age<=65
                                else if agepopvalue == 65< if age<65
                                        end
% This evaluates the expression and executes an option chosen from the string of options of ages available.
ageresult = agepopstring{agepopvalue};

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
% This program identfies a value within the age options that has been
% selected from the menu.
locationlistboxvalue = get(handles.locationlistbox,'Value');
if locationlistboxvalue = North England, if NorthernE==1
    else if locationlistboxvalue = South England, if SouthernE==1
            else if locationlistboxvalue = The Midlands, if MidlandE==1
                    else if locationlistboxvalue = Wales, if Wales==1
                            else if locationlistboxvalue = Scotland, if Scotland=1
                                    end
% This evaluates the expression and executes an option chosen from the string of options of ages available.
locationresult = locationlistboxstring{locationlistboxvalue};

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
if heightpopvalue == <4.0 if height<4.0
else if heightpopvalue == 4.0-4.5 if 4.0<=height<=4.5
        else if heightpopvalue == 4.6-4.11 if 4.6<=height<=4.11
                else if heightpopvalue == 5.0-5.5 if 5.0<=height<=5.5
                        else if heightpopvalue == 5.6-5.11 if 5.6<=height<=5.11
                                else if heightpopvalue == 6.0-6.5 if 6.0<=height<=6.5
                                        else if heightpopvalue == >6.5 if height>6.5
                                        end
% This evaluates the expression and executes an option chosen from the string of options of heights available.
heightresult = heightpopstring{heightpopvalue};

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
set(handles.whitebutton,'String',w if white==1)

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
set(handles.blackbutton,'String',b if black==1)

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
set(handles.asianbutton,'String',as if asian==1)

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
if haircolourpopvalue = Blonde, if HairBlonde==1
    else if haircolourpopvalue = Brunette, if HairBrunette==1
            else if haircolourpopvalue = Black, if HairBlack==1
                    else if haircolourpopvalue = Red, if HairRed==1
                   end
% This evaluates the expression and executes an option chosen from the string of options of hair colours available.
haircolourresult = haircolourpopstring{haircolourpopvalue};

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


% --- Executes on button press in childrenyesbutton.
function childrenyesbutton_Callback(hObject, eventdata, handles)
% hObject    handle to childrenyesbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of childrenyesbutton
% We need to identify and receive the children yes button 
c = get(handles.childrenyesbutton,'String')
% This sets the program so that pressing the children yes button means extraction of
% all people with children within the dataset
% The if function evaluates the expression and executes it when it is true.
set(handles.childrenyesbutton,'String',c if children==1)

% --- Executes on button press in childrennobutton.
function childrennobutton_Callback(hObject, eventdata, handles)
% hObject    handle to childrennobutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of childrennobutton
% We need to identify and receive the children no button 
c' = get(handles.childrennobutton,'String')
% This sets the program so that pressing the children no button means extraction of
% all people without children within the dataset
% The if function evaluates the expression and executes it when it is true.
set(handles.childrennobutton,'String',c' if children==0)


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
set(handles.smokeryesbutton,'String',s' if smoker==1)


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
set(handles.smokernobutton,'String',s' if smoker==0)


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
if incomepopvalue = <18, if income<=18
    else if incomepopvalue = 19-39, if 19<=income<=39
            else if incomepopvalue = 40-60, if 40<=income<=60
                    else if incomepopvalue = 61-81, if 61<=income<=81
                            else if incomepopvalue = 82-102, if 82<=income<=102
                                    else if incomepopvalue = 103-123, if 103<=income<=123
                                            else if incomepopvalue = >124, if income>124
                                                    end
% This evaluates the expression and executes an option chosen from the string of options of incomes available.
incomeresult = incomepopstring{incomepopvalue};


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


