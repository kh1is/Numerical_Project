function varargout = Gui(varargin)
% GUI MATLAB code for Gui.fig
%      GUI, by itself, creates a new GUI or raises the existing
%      singleton*.
%
%      H = GUI returns the handle to a new GUI or the handle to
%      the existing singleton*.
%
%      GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI.M with the given input arguments.
%
%      GUI('Property','Value',...) creates a new GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Gui

% Last Modified by GUIDE v2.5 11-May-2018 16:26:47

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Gui_OpeningFcn, ...
                   'gui_OutputFcn',  @Gui_OutputFcn, ...
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


% --- Executes just before Gui is made visible.
function Gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Gui (see VARARGIN)


% Choose default command line output for Gui
handles.output = hObject ;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Gui wait for user response (see UIRESUME)
% uiwait(handles.plot);


% --- Outputs from this function are returned to the command line.
function varargout = Gui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2



function xaxis_Callback(hObject, eventdata, handles)
% hObject    handle to xaxis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of xaxis as text
%        str2double(get(hObject,'String')) returns contents of xaxis as a double


% --- Executes during object creation, after setting all properties.
function xaxis_CreateFcn(hObject, eventdata, handles)
% hObject    handle to xaxis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function queries_Callback(hObject, eventdata, handles)
% hObject    handle to queries (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of queries as text
%        str2double(get(hObject,'String')) returns contents of queries as a double


% --- Executes during object creation, after setting all properties.
function queries_CreateFcn(hObject, eventdata, handles)
% hObject    handle to queries (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function order_Callback(hObject, eventdata, handles)
% hObject    handle to order (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of order as text
%        str2double(get(hObject,'String')) returns contents of order as a double


% --- Executes during object creation, after setting all properties.
function order_CreateFcn(hObject, eventdata, handles)
% hObject    handle to order (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function answer_Callback(hObject, eventdata, handles)
% hObject    handle to answer (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of answer as text
%        str2double(get(hObject,'String')) returns contents of answer as a double


% --- Executes during object creation, after setting all properties.
function answer_CreateFcn(hObject, eventdata, handles)
% hObject    handle to answer (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

    global method;
    global x;
    global y;
    global q;
    global a;
    global P;

    disp(['User selected to enter manually']);
    
    %read x axis 
    x = get(handles.xaxis, 'String');
    x = split(x);
    x = str2double(x);
    x = x';
    x
    disp(['User entered x-axis']);

    %read y axis 
    y = get(handles.yaxis, 'String');
    y = split(y);
    y = str2double(y);
    y = y';
    y
    disp(['User entered y-axis']);

    %read queries
    q = get(handles.queries, 'String');
    q = split(q);
    q = str2double(q);
    q = q';
    q
    disp(['User entered queries']);

    %read order 
    o = get(handles.order, 'String');
    o = split(o);
    o = str2double(o);
    o
    disp(['User entered equation order']);

    %get newton answer
    if (get(handles.radiobutton1,'Value') == 1)
        tic;
        a = querey_Driver( x , y , o , q );
        toc
        a = cast(a,'double');
        disp(['The answer from newton']);
        method = 1;
    end

    %get lagrange answer
    if (get(handles.radiobutton2,'Value') == 1)
        tic;
        a = ValueOfLagrange( o ,x , y , q );
        toc
        a = cast(a,'double');
        disp(['The answer from lagrange']);
        method = 2;
    end

    %set answer
    set(handles.answer, 'String', num2str(a));
    disp(['The answer is done']);
    
    %set slider2 value
    v = get( handles.slider2, 'Value');
    set(handles.slider2Value, 'String', num2str(v));

    %set the plot
    s = get( handles.slider , 'Value');
    set(handles.sliderValue, 'String', num2str(s));
    syms z;
    temp = [0:s:v];
    
    %get newton answer
    if (get(handles.radiobutton1,'Value') == 1)
        tic;
        P = Newton_divided_refrence( x , y , o);
        toc
        disp(['Equation from newton is done']);
        for i = 1 : length(temp)
            z = temp(i);
            test(i) = subs(P);
        end 
    end

    %get lagrange answer
    if (get(handles.radiobutton2,'Value') == 1)
        tic;
        P = Lagrange( o , x , y );
        toc
        disp(['Equation fro lagrange is done']);
        for i = 1 : length(temp)
            z = temp(i);
            test(i) = subs(P);
        end 
    end

    %plot the points 
    plot(temp,test);

    %set Title
    title(char(vpa(P,8)));
    
    hold on;
    for n = 1 : length(q)
          plot(q(n),a(n),'r*');
    end
    for n = 1 : length(x)
          plot(x(n),y(n),'ro');
    end
    hold off;
    
    disp(['Finished']);

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function yaxis_Callback(hObject, eventdata, handles)
% hObject    handle to xaxis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of xaxis as text
%        str2double(get(hObject,'String')) returns contents of xaxis as a double


% --- Executes during object creation, after setting all properties.
function yaxis_CreateFcn(hObject, eventdata, handles)
% hObject    handle to xaxis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function title_Callback(hObject, eventdata, handles)
% hObject    handle to title (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of title as text
%        str2double(get(hObject,'String')) returns contents of title as a double


% --- Executes during object creation, after setting all properties.
function title_CreateFcn(hObject, eventdata, handles)
% hObject    handle to title (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

    global method;
    global x;
    global y;
    global q;
    global a;
    global P;

    [file,path] = uigetfile('*.txt');
    if isequal(file,0)
       disp('User selected Cancel');
    else
       disp(['User selected ', fullfile(path,file)]);
   
    %read from file
    fid = fopen(file,'r');
    tline = fgetl(fid);
    method = tline;
    method = split(method);
    method = str2double(method(2));
    method
    disp(['Method type is selected']);
    
    tline = fgetl(fid);
    order = tline;
    order = split(order);
    o = str2double(order(2));
    o
    disp(['order size is detected']);
    
    tline = fgetl(fid);
    xaxis = tline;
    xaxis = strsplit(xaxis);
    x = readLine(xaxis);
    x
    disp(['X-axis is done']);
    
    tline = fgetl(fid);
    yaxis = tline;
    yaxis = strsplit(yaxis);
    y = readLine(yaxis);
    y
    disp(['Y-axis is done']);
    
    tline = fgetl(fid);
    querey = tline;
    querey = strsplit(querey);
    q = readLine(querey);
    q
    disp(['Queries is done']);
    
    %get newton answer
    if (method == 1)
        tic;
        a = querey_Driver( x , y , o , q );
        toc
        a = cast(a,'double');
        disp(['The answer is from newton']);
        f = @() svd(querey_Driver( x , y , o , q ));
        end

    %get lagrange answer
    if (method == 2)
        tic;
        a = ValueOfLagrange( o ,x , y , q );
        toc
        a = cast(a,'double');
        disp(['The answer is from Lagrange']);
    end
    
    %set answer
    set(handles.answer, 'String', num2str(a));
    disp(['The answer is done']);
    
    %set slider2 value
    v = get( handles.slider2 , 'Value');
    set(handles.slider2Value, 'String', num2str(v));

    %set the plot
    s = get( handles.slider , 'Value');
    set(handles.sliderValue, 'String', num2str(s));
    syms z;
    temp = [0:s:v];
    
    %get newton answer
    if (method == 1)
        tic;
        P = Newton_divided_refrence( x , y , o);
        toc
        disp(['Equation is done from newton']);
        for i = 1 : length(temp)
            z = temp(i);
            test(i) = subs(P);
        end 
    end

    %get lagrange answer
    if (method == 2)
        tic;
        P = Lagrange( o , x , y );
        toc
        disp(['Equation is done from Lagrange']);
        for i = 1 : length(temp)
            z = temp(i);
            test(i) = subs(P);
        end 
    end

    %Plot 
    plot(temp,test);
    
    %set Title
    title(char(vpa(P,8)));
    
    hold on;
    for n = 1 : length(q)
          plot(q(n),a(n),'r*');
    end
    for n = 1 : length(x)
          plot(x(n),y(n),'ro');
    end
    hold off;
    
    disp(['Done']);
    
    fclose(fid);
end


% --- Executes on slider movement.
function slider_Callback(hObject, eventdata, handles)
% hObject    handle to slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

    global method;
    global x;
    global y;
    global q;
    global a;
    global P;
    
    %set slider2 value
    v = get( handles.slider2 , 'Value');
    set(handles.slider2Value, 'String', num2str(v));
    
    %set the plot
    s = get( handles.slider , 'Value');
    set(handles.sliderValue, 'String', num2str(s));
    
    syms z;
    
    temp = [0:s:v];
    
    %get newton answer
    if (method == 1)
        for i = 1 : length(temp)
            z = temp(i);
            test(i) = subs(P);
        end 
    end

    %get lagrange answer
    if (method == 2)
        for i = 1 : length(temp)
            z = temp(i);
            test(i) = subs(P);
        end 
    end

    %Plot 
    plot(temp,test);
    
    hold on;
    for n = 1 : length(q)
          plot(q(n),a(n),'r*');
    end
    for n = 1 : length(x)
          plot(x(n),y(n),'ro');
    end
    hold off;
    
    %set Title
    title(char(vpa(P,8)));


% --- Executes during object creation, after setting all properties.
function slider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function sliderValue_Callback(hObject, eventdata, handles)
% hObject    handle to sliderValue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sliderValue as text
%        str2double(get(hObject,'String')) returns contents of sliderValue as a double


% --- Executes during object creation, after setting all properties.
function sliderValue_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderValue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
%set slider2 value

    global method;
    global x;
    global y;
    global q;
    global a;
    global P;

    v = get( handles.slider2 , 'Value');
    set(handles.slider2Value, 'String', num2str(v));
    
    %set the plot
    s = get( handles.slider , 'Value');
    set(handles.sliderValue, 'String', num2str(s));
    
    syms z;
    
    temp = [0:s:v];
    
    %get newton answer
    if (method == 1)
        for i = 1 : length(temp)
            z = temp(i);
            test(i) = subs(P);
        end 
    end

    %get lagrange answer
    if (method == 2)
        for i = 1 : length(temp)
            z = temp(i);
            test(i) = subs(P);
        end 
    end

    %Plot 
    plot(temp,test);
    
    hold on;
    for n = 1 : length(q)
          plot(q(n),a(n),'r*');
    end
    for n = 1 : length(x)
          plot(x(n),y(n),'ro');
    end
    hold off;
    
    %set Title
    title(char(vpa(P,8)));


% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function slider2Value_Callback(hObject, eventdata, handles)
% hObject    handle to slider2Value (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of slider2Value as text
%        str2double(get(hObject,'String')) returns contents of slider2Value as a double


% --- Executes during object creation, after setting all properties.
function slider2Value_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2Value (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
