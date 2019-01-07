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


% --- Executes on button press in femalebutton.
function femalebutton_Callback(hObject, eventdata, handles)
% hObject    handle to femalebutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of femalebutton


% --- Executes on button press in malefemalebutton.
function malefemalebutton_Callback(hObject, eventdata, handles)
% hObject    handle to malefemalebutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of malefemalebutton


% --- Executes on selection change in agepopup.
function agepopup_Callback(hObject, eventdata, handles)
% hObject    handle to agepopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns agepopup contents as cell array
%        contents{get(hObject,'Value')} returns selected item from agepopup


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


% --- Executes on button press in blackbutton.
function blackbutton_Callback(hObject, eventdata, handles)
% hObject    handle to blackbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of blackbutton


% --- Executes on button press in asianbutton.
function asianbutton_Callback(hObject, eventdata, handles)
% hObject    handle to asianbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of asianbutton


% --- Executes on selection change in haircolourpopup.
function haircolourpopup_Callback(hObject, eventdata, handles)
% hObject    handle to haircolourpopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns haircolourpopup contents as cell array
%        contents{get(hObject,'Value')} returns selected item from haircolourpopup


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


% --- Executes on button press in childrennobutton.
function childrennobutton_Callback(hObject, eventdata, handles)
% hObject    handle to childrennobutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of childrennobutton


% --- Executes on button press in smokeryesbutton.
function smokeryesbutton_Callback(hObject, eventdata, handles)
% hObject    handle to smokeryesbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of smokeryesbutton


% --- Executes on button press in smokernobutton.
function smokernobutton_Callback(hObject, eventdata, handles)
% hObject    handle to smokernobutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of smokernobutton


% --- Executes on selection change in incomepopup.
function incomepopup_Callback(hObject, eventdata, handles)
% hObject    handle to incomepopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns incomepopup contents as cell array
%        contents{get(hObject,'Value')} returns selected item from incomepopup


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


% --- Executes on button press in homosexualnobutton.
function homosexualnobutton_Callback(hObject, eventdata, handles)
% hObject    handle to homosexualnobutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of homosexualnobutton
