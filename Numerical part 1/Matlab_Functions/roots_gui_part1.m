function varargout = roots_gui_part1(varargin)
% ROOTS_GUI_PART1 MATLAB code for roots_gui_part1.fig
%      ROOTS_GUI_PART1, by itself, creates a new ROOTS_GUI_PART1 or raises the existing
%      singleton*.
%
%      H = ROOTS_GUI_PART1 returns the handle to a new ROOTS_GUI_PART1 or the handle to
%      the existing singleton*.
%
%      ROOTS_GUI_PART1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ROOTS_GUI_PART1.M with the given input arguments.
%
%      ROOTS_GUI_PART1('Property','Value',...) creates a new ROOTS_GUI_PART1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before roots_gui_part1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to roots_gui_part1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help roots_gui_part1

% Last Modified by GUIDE v2.5 11-May-2018 19:58:07

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @roots_gui_part1_OpeningFcn, ...
                   'gui_OutputFcn',  @roots_gui_part1_OutputFcn, ...
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


% --- Executes just before roots_gui_part1 is made visible.
function roots_gui_part1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to roots_gui_part1 (see VARARGIN)

% Choose default command line output for roots_gui_part1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes roots_gui_part1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = roots_gui_part1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in root_methods_menu.
function root_methods_menu_Callback(hObject, eventdata, handles)
% hObject    handle to root_methods_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns root_methods_menu contents as cell array
%        contents{get(hObject,'Value')} returns selected item from root_methods_menu


% --- Executes during object creation, after setting all properties.
function root_methods_menu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to root_methods_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function formula_editor_Callback(hObject, eventdata, handles)
% hObject    handle to formula_editor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of formula_editor as text
%        str2double(get(hObject,'String')) returns contents of
%        formula_editor as a double4
% display(handles.formula_editor);

% --- Executes during object creation, after setting all properties.
function formula_editor_CreateFcn(hObject, eventdata, handles)
% hObject    handle to formula_editor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes when entered data in editable cell(s) in display_table.
function display_table_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to display_table (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)



function xl_Callback(hObject, eventdata, handles)
% hObject    handle to xl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of xl as text
%        str2double(get(hObject,'String')) returns contents of xl as a double


% --- Executes during object creation, after setting all properties.
function xl_CreateFcn(hObject, eventdata, handles)
% hObject    handle to xl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function xu_Callback(hObject, eventdata, handles)
% hObject    handle to xu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of xu as text
%        str2double(get(hObject,'String')) returns contents of xu as a double


% --- Executes during object creation, after setting all properties.
function xu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to xu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ea_Callback(hObject, eventdata, handles)
% hObject    handle to ea (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ea as text
%        str2double(get(hObject,'String')) returns contents of ea as a double


% --- Executes during object creation, after setting all properties.
function ea_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ea (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function max_iter_Callback(hObject, eventdata, handles)
% hObject    handle to max_iter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of max_iter as text
%        str2double(get(hObject,'String')) returns contents of max_iter as a double


% --- Executes during object creation, after setting all properties.
function max_iter_CreateFcn(hObject, eventdata, handles)
% hObject    handle to max_iter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function m_mul_Callback(hObject, eventdata, handles)
% hObject    handle to m_mul (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of m_mul as text
%        str2double(get(hObject,'String')) returns contents of m_mul as a double


% --- Executes during object creation, after setting all properties.
function m_mul_CreateFcn(hObject, eventdata, handles)
% hObject    handle to m_mul (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function num_prec_Callback(hObject, eventdata, handles)
% hObject    handle to num_prec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of num_prec as text
%        str2double(get(hObject,'String')) returns contents of num_prec as a double


% --- Executes during object creation, after setting all properties.
function num_prec_CreateFcn(hObject, eventdata, handles)
% hObject    handle to num_prec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in eval_button.
function eval_button_Callback(hObject, eventdata, handles)
% hObject    handle to eval_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
formula = get(handles.formula_editor, 'String');
display(formula)
equ = str2func(['@(x)',formula])
% get(handles.root_methods_menu,'Value')   
 
%     1. Bisection
%     2. False Position
%     3. Fixed Point
%     4. Newton-Raphson
%     5. Secant
%     6. Bierge-Vieta
%     7. General_method
x_left = get(handles.xl, 'String');
x_right = get(handles.xu, 'String');
ea_relative = get(handles.ea, 'String');
max_iter = get(handles.max_iter, 'String');
m_mul = get(handles.m_mul, 'String');
num_prec = get(handles.num_prec, 'String');
p0 = get(handles.intit_p_vieta, 'String');
x_fixed = get(handles.fixed_point, 'String');
try
    switch get(handles.root_methods_menu,'Value')   
      case 1
          [l, u, r, cdata] =  bisectAlgorithm(str2num(x_left), str2num(x_right), equ, str2num(ea_relative), str2num(max_iter));
          data = arrayfun(@(x) sprintf(strcat('%.', num_prec ,'f\n'), x),cell2mat(cdata(2:end, :)),'un',0);
          handles.display_table.ColumnName = cdata(1, :);
          handles.display_table.Data = data;
          fplot(equ);
      case 2
          [l, u, r, cdata] =  FalsePosition(str2num(x_left), str2num(x_right), equ, str2num(ea_relative), str2num(max_iter));
          data = arrayfun(@(x) sprintf(strcat('%.', num_prec ,'f\n'), x),cell2mat(cdata(2:end, :)),'un',0);
          handles.display_table.ColumnName = cdata(1, :);
          handles.display_table.Data = data;
          fplot(equ);
      case 3
%           gx = str2func(horzcat('@(x)', strrep(char(func),'@(x)',''), '-x'))
%           function [root,arr,tt,err, cdata]=Fixed_Point(F,G,x1,it,tolerance)
%           [root,arr,tt,err, cdata]=Fixed_Point(func, fx, .001, 10, .0001)
           Fx = str2func(horzcat('@(x)', strrep(char(equ),'@(x)',''), '-x'));
          [~,~,~,~, cdata] =  Fixed_Point(Fx, equ, str2num(x_fixed), str2num(max_iter), str2num(ea_relative));
            
          data = arrayfun(@(x) sprintf(strcat('%.', num_prec ,'f\n'), x),cell2mat(cdata(2:end, :)),'un',0);
          handles.display_table.ColumnName = cdata(1, :);
          handles.display_table.Data = data;
          hold on
          fplot(Fx);
          fplot(equ);
          fplot(@(x)x);
          fplot(0);
          hold off
          

      case 4
          [~, cdata] =  newton(str2num(x_left), equ, str2num(ea_relative), str2num(max_iter), str2num(m_mul));

          data = arrayfun(@(x) sprintf(strcat('%.', num_prec ,'f\n'), x),cell2mat(cdata(2:end, :)),'un',0);
          handles.display_table.ColumnName = cdata(1, :);
          handles.display_table.Data = data;
          fplot(equ);

      case 5
          [~, cdata] = secant_method(str2num(x_left),  str2num(x_right), equ, str2num(ea_relative), str2num(max_iter));

          data = arrayfun(@(x) sprintf(strcat('%.', num_prec ,'f\n'), x),cell2mat(cdata(2:end, :)),'un',0);
          handles.display_table.ColumnName = cdata(1, :);
          handles.display_table.Data = data;
          fplot(equ);

      case 6
          
%           function [ root, cdata ] = bierge_vieta( a_arr, p0, err, max_iter)
          syms x;
          [~, cdata] = bierge_vieta(sym2poly(equ(x)), str2num(p0), str2num(ea_relative), str2num(max_iter));
          fprintf("Here we are Bierge");
          data = arrayfun(@(x) sprintf(strcat('%.', num_prec ,'f\n'), x),cell2mat(cdata(2:end, :)),'un',0);
          handles.display_table.ColumnName = cdata(1, :);
          handles.display_table.Data = data;
          fprintf("Here we are Bierge");
          fplot(equ);
      case 7


        otherwise
          handles.display_table.ColumnName = {};
          handles.display_table.Data = {};
    end
catch
    fprintf("Error");
    handles.display_table.ColumnName = {};
    handles.display_table.Data = {};
end

grid on



function intit_p_vieta_Callback(hObject, eventdata, handles)
% hObject    handle to intit_p_vieta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of intit_p_vieta as text
%        str2double(get(hObject,'String')) returns contents of intit_p_vieta as a double


% --- Executes during object creation, after setting all properties.
function intit_p_vieta_CreateFcn(hObject, eventdata, handles)
% hObject    handle to intit_p_vieta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fixed_point_Callback(hObject, eventdata, handles)
% hObject    handle to fixed_point (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fixed_point as text
%        str2double(get(hObject,'String')) returns contents of fixed_point as a double


% --- Executes during object creation, after setting all properties.
function fixed_point_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fixed_point (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
