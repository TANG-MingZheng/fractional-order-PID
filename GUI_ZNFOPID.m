function varargout = GUI_ZNFOPID(varargin)
% GUI_ZNFOPID MATLAB code for GUI_ZNFOPID.fig
%      GUI_ZNFOPID, by itself, creates a new GUI_ZNFOPID or raises the existing
%      singleton*.
%
%      H = GUI_ZNFOPID returns the handle to a new GUI_ZNFOPID or the handle to
%      the existing singleton*.
%
%      GUI_ZNFOPID('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_ZNFOPID.M with the given input arguments.
%
%      GUI_ZNFOPID('Property','Value',...) creates a new GUI_ZNFOPID or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI_ZNFOPID_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI_ZNFOPID_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI_ZNFOPID

% Last Modified by GUIDE v2.5 09-Mar-2023 19:20:08

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI_ZNFOPID_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI_ZNFOPID_OutputFcn, ...
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


% --- Executes just before GUI_ZNFOPID is made visible.
function GUI_ZNFOPID_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI_ZNFOPID (see VARARGIN)

% Choose default command line output for GUI_ZNFOPID
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUI_ZNFOPID wait for user response (see UIRESUME)
% uiwait(handles.figure1);
handles.flagRun = false;
handles.opts = struct('WindowStyle','modal', 'Interpreter','tex');
guidata(hObject, handles);
% 保存初始状态的结构体
global reset;
reset = handles;


% --- Outputs from this function are returned to the command line.
function varargout = GUI_ZNFOPID_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



% ************************************************************************ %
% *************************** Controlled Plant *************************** %
% ************************************************************************ %

function edit_Ns_Callback(hObject, eventdata, handles)
% hObject    handle to edit_Ns (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_Ns as text
%        str2double(get(hObject,'String')) returns contents of edit_Ns as a double
handles.flagRun = false;
set(handles.pushbutton_Tuning, 'enable', 'off');
set(handles.edit_Ku, 'string', '');
set(handles.edit_Tu, 'string', '');
set(handles.edit_Kc, 'string', '');
set(handles.edit_Ti, 'string', '');
set(handles.edit_Td, 'string', '');
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function edit_Ns_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_Ns (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_Ms_Callback(hObject, eventdata, handles)
% hObject    handle to edit_Ms (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_Ms as text
%        str2double(get(hObject,'String')) returns contents of edit_Ms as a double
handles.flagRun = false;
set(handles.pushbutton_Tuning, 'enable', 'off');
set(handles.edit_Ku, 'string', '');
set(handles.edit_Tu, 'string', '');
set(handles.edit_Kc, 'string', '');
set(handles.edit_Ti, 'string', '');
set(handles.edit_Td, 'string', '');
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function edit_Ms_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_Ms (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




function edit_L_Callback(hObject, eventdata, handles)
% hObject    handle to edit_L (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_L as text
%        str2double(get(hObject,'String')) returns contents of edit_L as a double
handles.flagRun = false;
set(handles.pushbutton_Tuning, 'enable', 'off');
set(handles.edit_Ku, 'string', '');
set(handles.edit_Tu, 'string', '');
set(handles.edit_Kc, 'string', '');
set(handles.edit_Ti, 'string', '');
set(handles.edit_Td, 'string', '');
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function edit_L_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_L (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% ************************************************************************ %
% ******************* Critical Oscillation Parameters ******************** %
% ************************************************************************ %

% --- Executes on button press in checkbox_RT.
function checkbox_RT_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox_RT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox_RT
handles.flagRun = false;
set(handles.pushbutton_Tuning, 'enable', 'off');
set(handles.edit_Ku, 'string', '');
set(handles.edit_Tu, 'string', '');
set(handles.edit_Kc, 'string', '');
set(handles.edit_Ti, 'string', '');
set(handles.edit_Td, 'string', '');
guidata(hObject, handles);



% --- Executes on button press in pushbutton_Get.
function pushbutton_Get_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_Get (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
color = myColor();
set(handles.pushbutton_Get, 'enable', 'off');
set(handles.pushbutton_Get, 'backgroundcolor', color.chinaRed);
set(handles.pushbutton_Get, 'string', 'Runing');
pause(1e-1);

flagRelayTestSim = get(handles.checkbox_RT, 'value');
warning off;
try
    if flagRelayTestSim
        % 初始化被控对象
        optionsFOPID = simset('SrcWorkspace', 'current');
        Ns = str2num(get(handles.edit_Ns,  'string'));                   % 读取系统
        Ms = str2num(get(handles.edit_Ms,  'string'));
        L  = str2double(get(handles.edit_L,'string'));
        
        GpL = tf(Ns, Ms, 'ioDelay', L);
        Gp  = tf(Ns, Ms);
        Gp.iodelay = 0;
        % 开关拨到 继电器回路
        SW = 1;
        % 初始化控制器
        Kc = 1; Ti = 1; Td = 1;
        ifo = 1;
        dfo = 1;
        % 初始化仿真时间及扰动
        sim_time = 200;
        step_value = 1;
        disturb_step_time = sim_time*2;
        disturb_step_value = 0.5;
        % 初始化继电器
        d = eps;   % 继电器滞环
        delta_h = 1e-1;
        h = step_value; % 继电器输出
        period_count_start = 5;
        period_count_end   = 10;
        sys_out_amplitude = 0;
        err_out_amplitude = 1;
        while (abs(sys_out_amplitude-err_out_amplitude) > 1e-2)
            h = h + delta_h;
            open_system('Model_FOPID_autotuning','loadonly');
            sim('Model_FOPID_autotuning.mdl',sim_time, optionsFOPID);
            close_system('Model_FOPID_autotuning', 0);
            num_square_wave = 0;
            if (rel_out(1) > 0)        % 以方波下降沿计数 周期
                for ntime = 1:1:(length(rel_out)-1)
                    if (rel_out(ntime+1) < 0) && (rel_out(ntime) > 0)
                        num_square_wave = num_square_wave + 1;
                        if num_square_wave == period_count_start
                            time_start = ntime;
                        end
                        if num_square_wave == period_count_end
                            time_end = ntime;
                            break;
                        end
                    end
                end
            else        % 以方波上升沿计数 周期
                for ntime = 1:1:length(rel_out)
                    if (rel_out(ntime+1) > 0) && (rel_out(ntime) < 0)
                        num_square_wave = num_square_wave + 1;
                        if num_square_wave == period_count_start
                            time_start = time(ntime);
                        end
                        if num_square_wave == period_count_end
                            time_end = time(ntime);
                            break;
                        end
                    end
                end
            end
            Tu_ntime = (time_end-time_start) / (period_count_end-period_count_start);
            for nT = 1:1:(period_count_end-period_count_start)
                sys_out_T = sys_out((time_start+Tu_ntime*(nT-1)+1):(time_start+Tu_ntime*nT));
                sys_out_amplitude_T(nT) = (max(sys_out_T) - min(sys_out_T))/2;
                err_out_T = err_out((time_start+Tu_ntime*(nT-1)+1):(time_start+Tu_ntime*nT));
                err_out_amplitude_T(nT) = (max(err_out_T) - min(err_out_T))/2;
            end
            sys_out_amplitude = sum(sys_out_amplitude_T)/(period_count_end-period_count_start);
            err_out_amplitude = sum(err_out_amplitude_T)/(period_count_end-period_count_start);
        end
        a = (sys_out_amplitude+err_out_amplitude)/2;
        Tu = (time(time_end)-time(time_start)) / (period_count_end-period_count_start);
        Ku = abs(((4*h)/(pi*a))*sqrt(1-(d/a)^2) - 1j*(4*h*d)/(pi*a^2));
        % 传递参数
        handles.L = L;
        handles.GpL = GpL;
        handles.Gp  = Gp;
        handles.Ku = Ku;                  % critical gain
        handles.Tu = Tu;                  % critical period
        guidata(hObject, handles)
    else
        Ns = str2num(get(handles.edit_Ns,  'string'));                   % 读取系统
        Ms = str2num(get(handles.edit_Ms,  'string'));
        L  = str2double(get(handles.edit_L,'string'));
        
        GpL = tf(Ns, Ms, 'ioDelay', L);
        Gp  = tf(Ns, Ms);
        [Gm,~,Wcp,~] = margin(GpL);
        % 传递参数
        handles.L = L;
        handles.GpL = GpL;
        handles.Gp  = Gp;
        handles.Ku = Gm;                  % critical gain
        handles.Tu = 2*pi/Wcp;            % critical period
        guidata(hObject, handles)
    end
    set(handles.edit_Ku, 'string', num2str(handles.Ku,'%.4f'));
    set(handles.edit_Tu, 'string', num2str(handles.Tu,'%.4f'));
catch
    errordlg('\fontsize{10} Input Error: Contrrolled Plant !', 'ERROR', handles.opts);
end

guidata(hObject, handles);

set(handles.pushbutton_Tuning, 'enable', 'on');
set(handles.pushbutton_Get, 'backgroundcolor', color.skyBlue);
set(handles.pushbutton_Get, 'string', 'Get');
set(handles.pushbutton_Get, 'enable', 'on');





function edit_Ku_Callback(hObject, eventdata, handles)
% hObject    handle to edit_Ku (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_Ku as text
%        str2double(get(hObject,'String')) returns contents of edit_Ku as a double
set(handles.pushbutton_Tuning, 'enable', 'on');
handles.flagRun = false;
set(handles.edit_Kc, 'string', '');
set(handles.edit_Ti, 'string', '');
set(handles.edit_Td, 'string', '');
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function edit_Ku_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_Ku (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_Tu_Callback(hObject, eventdata, handles)
% hObject    handle to edit_Tu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_Tu as text
%        str2double(get(hObject,'String')) returns contents of edit_Tu as a double
set(handles.pushbutton_Tuning, 'enable', 'on');
handles.flagRun = false;
set(handles.edit_Kc, 'string', '');
set(handles.edit_Ti, 'string', '');
set(handles.edit_Td, 'string', '');
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function edit_Tu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_Tu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% ************************************************************************ %
% ************************** Constrained Point *************************** %
% ************************************************************************ %

function edit_x_Callback(hObject, eventdata, handles)
% hObject    handle to edit_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_x as text
%        str2double(get(hObject,'String')) returns contents of edit_x as a double
set(handles.pushbutton_Tuning, 'enable', 'on');
handles.flagRun = false;
set(handles.edit_Kc, 'string', '');
set(handles.edit_Ti, 'string', '');
set(handles.edit_Td, 'string', '');
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function edit_x_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end





function edit_y_Callback(hObject, eventdata, handles)
% hObject    handle to edit_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_y as text
%        str2double(get(hObject,'String')) returns contents of edit_y as a double
set(handles.pushbutton_Tuning, 'enable', 'on');
handles.flagRun = false;
set(handles.edit_Kc, 'string', '');
set(handles.edit_Ti, 'string', '');
set(handles.edit_Td, 'string', '');
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function edit_y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




% ************************************************************************ %
% ************************** Preset Parameters *************************** %
% ************************************************************************ %

% --- Executes on selection change in popupmenu_SC.
function popupmenu_SC_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu_SC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu_SC contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu_SC
SC = get(handles.popupmenu_SC, 'value');
switch SC
    case 1
        color = myColor();
% ************************** Preset Parameters *************************** %
        set(handles.edit_lambda, 'string', 'λ');
        set(handles.edit_r2,  'string', 'r2');
        set(handles.popupmenu_mu, 'value', 1);
% ************************ Controller Parameters ************************* %
        set(handles.edit_Kc, 'string', '');
        set(handles.edit_Ti, 'string', '');
        set(handles.edit_Td, 'string', '');
        set(handles.pushbutton_Tuning, 'backgroundcolor', color.skyBlue);
        set(handles.pushbutton_Tuning, 'string', 'Tuning');
        set(handles.pushbutton_Tuning, 'enable', 'on');
% *********************** Delete Process Variable ************************ %
        clear handles;
        global reset;
        handles = reset;
        guidata(hObject, handles);
        clc;
        return;
    case 2
        handles.controller = 1;
        set(handles.edit_lambda, 'string', '1');
        set(handles.edit_r2,     'string', '1/μ');
        set(handles.edit_r2, 'enable', 'inactive');
    case 3
        handles.controller = 2;
        set(handles.edit_lambda, 'string', 'μ');
        set(handles.edit_r2,     'string', '1');
        set(handles.edit_r2, 'enable', 'inactive');
    case 4
        handles.controller = 3;
        set(handles.edit_r2, 'enable', 'on');
        set(handles.edit_r2, 'string', 'r2');
    otherwise
        return;
end
handles.flagRun = false;
set(handles.pushbutton_Tuning, 'enable', 'on');
set(handles.popupmenu_mu, 'Value', 1);
set(handles.edit_Kc, 'string', '');
set(handles.edit_Ti, 'string', '');
set(handles.edit_Td, 'string', '');
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function popupmenu_SC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu_SC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_lambda_Callback(hObject, eventdata, handles)
% hObject    handle to edit_lambda (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_lambda as text
%        str2double(get(hObject,'String')) returns contents of edit_lambda as a double


% --- Executes during object creation, after setting all properties.
function edit_lambda_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_lambda (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




function edit_r2_Callback(hObject, eventdata, handles)
% hObject    handle to edit_r2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_r2 as text
%        str2double(get(hObject,'String')) returns contents of edit_r2 as a double
mu = get(handles.popupmenu_mu, 'value');
r2 = str2double(get(handles.edit_r2,'string'));
if mu == 1
    set(handles.edit_lambda, 'string', 'λ');
else
    lambda =handles.mu * r2;
    set(handles.edit_lambda, 'string', num2str(lambda,'%.2f'));
end
set(handles.pushbutton_Tuning, 'enable', 'on');
handles.flagRun = false;
set(handles.edit_Kc, 'string', '');
set(handles.edit_Ti, 'string', '');
set(handles.edit_Td, 'string', '');
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function edit_r2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_r2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu_mu.
function popupmenu_mu_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu_mu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu_mu contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu_mu
mu = get(handles.popupmenu_mu, 'value');
switch mu
    case 1
        warndlg('\fontsize{10} Please choose the correct fixed-point !', 'Warning', handles.opts);
        return;
    case 2
        handles.mu = 0.4;
    case 3
        handles.mu = 0.5;
    case 4
        handles.mu = 0.6;
    case 5
        handles.mu = 0.7;
    case 6
        handles.mu = 0.8;
    case 7
        handles.mu = 0.9;
    case 8
        handles.mu = 1.0;
    otherwise
        return;
end

switch handles.controller
    case 1
        vr2 = 1/handles.mu;
        set(handles.edit_r2, 'string', num2str(vr2,'%.4f'));
        set(handles.edit_lambda, 'string', '1');
    case 2
        set(handles.edit_lambda, 'string', num2str(handles.mu));
    case 3
        vr2 = get(handles.edit_r2, 'string');
        if vr2 == "r2"
            set(handles.edit_lambda, 'string', 'λ');
        else
            vr2 = str2double(vr2);
            lambda = vr2 * handles.mu;
            set(handles.edit_lambda, 'string', num2str(lambda,'%.2f'));
        end
    otherwise
        return;
end

handles.flagRun = false;
set(handles.pushbutton_Tuning, 'enable', 'on');
set(handles.edit_Kc, 'string', '');
set(handles.edit_Ti, 'string', '');
set(handles.edit_Td, 'string', '');
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function popupmenu_mu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu_mu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% ************************************************************************ %
% ************************ Controller Parameters ************************* %
% ************************************************************************ %

% --- Executes on button press in pushbutton_Tuning.
function pushbutton_Tuning_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_Tuning (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
color = myColor();
set(handles.pushbutton_Tuning, 'enable', 'off');
set(handles.pushbutton_Tuning, 'backgroundcolor', color.chinaRed);
set(handles.pushbutton_Tuning, 'string', 'Runing');
pause(1e-1);

try
    Ku  = str2double(get(handles.edit_Ku,'string'));
    Tu  = str2double(get(handles.edit_Tu,'string'));
    m   = abs(str2double(get(handles.edit_x,'string')));
    n   = abs(str2double(get(handles.edit_y,'string')));
    switch handles.controller
        case 1
            [Kc, Ti, Td] = function_ZNPID_mu(handles.mu, Ku, Tu, m, n);
            s  = tf('s');
            handles.ifo = 1/s;
            handles.dfo = ousta_fod(handles.mu,10,1e-5,1e+5);
        case 2
            [Kc, Ti, Td] = function_ZNPID_lambda(handles.mu, Ku, Tu, m, n);
            handles.ifo = ousta_fod(-handles.mu,10,1e-5,1e+5);
            handles.dfo = ousta_fod(handles.mu,10,1e-5,1e+5);
        case 3
            r2  = str2double(get(handles.edit_r2,'string'));
            [Kc, Ti, Td, lambda] = function_ZNFOPID(handles.mu, r2, Ku, Tu, m, n);
            set(handles.edit_lambda, 'string', num2str(lambda,'%.2f'));
            handles.ifo = ousta_fod(-lambda,10,1e-5,1e+5);
            handles.dfo = ousta_fod(handles.mu,10,1e-5,1e+5);
        otherwise
            error('ERROR !!!');
    end
    set(handles.edit_Kc, 'string', num2str(Kc,'%.4f'));
    set(handles.edit_Ti, 'string', num2str(Ti,'%.4f'));
    set(handles.edit_Td, 'string', num2str(Td,'%.4f'));
    handles.x = m;
    handles.y = n;
    handles.Kc = Kc;
    handles.Ti = Ti;
    handles.Td = Td;    
    handles.Gc = Kc*(1 + (1/Ti)*handles.ifo + Td*handles.dfo);
    handles.flagRun = true;
    guidata(hObject, handles);
catch
    error('ERROR !!!');
end
set(handles.pushbutton_Tuning, 'backgroundcolor', color.skyBlue);
set(handles.pushbutton_Tuning, 'string', 'Tuning');
% set(handles.pushbutton_Tuning, 'enable', 'on');





function edit_Kc_Callback(hObject, eventdata, handles)
% hObject    handle to edit_Kc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_Kc as text
%        str2double(get(hObject,'String')) returns contents of edit_Kc as a double


% --- Executes during object creation, after setting all properties.
function edit_Kc_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_Kc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_Ti_Callback(hObject, eventdata, handles)
% hObject    handle to edit_Ti (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_Ti as text
%        str2double(get(hObject,'String')) returns contents of edit_Ti as a double


% --- Executes during object creation, after setting all properties.
function edit_Ti_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_Ti (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_Td_Callback(hObject, eventdata, handles)
% hObject    handle to edit_Td (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_Td as text
%        str2double(get(hObject,'String')) returns contents of edit_Td as a double


% --- Executes during object creation, after setting all properties.
function edit_Td_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_Td (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% ************************************************************************ %
% **************************** Function Area ***************************** %
% ************************************************************************ %

% --- Executes on button press in pushbutton_Nyquist.
function pushbutton_Nyquist_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_Nyquist (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if ~handles.flagRun
    errordlg('\fontsize{10} No Update Controller !', 'ERROR', handles.opts);
    return;
end
color = myColor();
set(handles.pushbutton_Nyquist, 'enable', 'off');
set(handles.pushbutton_Nyquist, 'backgroundcolor', color.chinaRed);
set(handles.pushbutton_Nyquist, 'string', 'Runing');
pause(1e-1);

try
    Go = handles.Gc * handles.GpL;
    W = eps:1e-2:100;
    [Re,Im, ~] = nyquist(Go, W);
    figure('Name', 'Nyquist Diagram');
    hold on;
    switch handles.controller
        case 1
            plot(squeeze(Re), squeeze(Im), 'Color',color.kleinBlue, 'LineWidth',2, 'DisplayName','ZN-PID^{\mu}');
        case 2
            plot(squeeze(Re), squeeze(Im), 'Color',color.kleinBlue, 'LineWidth',2, 'DisplayName','ZN-PI^{\lambda}D^{\lambda}');
        case 3
            plot(squeeze(Re), squeeze(Im), 'Color',color.kleinBlue, 'LineWidth',2, 'DisplayName','ZN-FOPID');
        otherwise
            error('ERROR !!!');
    end
    plot(-(handles.x),-(handles.y),'.', 'Color',color.burgundyRed,'MarkerSize',25, 'LineWidth',2, 'DisplayName',...
        ['Constrained Point: ', num2str(-(handles.x)),', ',num2str(-(handles.y)),')']);
    axis([-1.2 0.2 -1.2 0.2]);
    legend;
    grid on;
    hold off
catch
    figure('Name', 'Nyquist Diagram');
    Go = handles.Gc;
    nyquist(Go);
end

set(handles.pushbutton_Nyquist, 'backgroundcolor', color.skyBlue);
set(handles.pushbutton_Nyquist, 'string', 'Nyquist');
set(handles.pushbutton_Nyquist, 'enable', 'on');




% --- Executes on button press in pushbutton_Time.
function pushbutton_Time_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_Time (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if ~handles.flagRun
    errordlg('\fontsize{10} No Update Controller !', 'ERROR', handles.opts);
    return;
end
color = myColor();
set(handles.pushbutton_Time, 'enable', 'off');
set(handles.pushbutton_Time, 'backgroundcolor', color.chinaRed);
set(handles.pushbutton_Time, 'string', 'Runing');
pause(1e-1);

optionsFOPID = simset('SrcWorkspace', 'current');
try
    % 被控对象
    Gp = handles.Gp;
    L  = handles.L;
    Gp.iodelay = 0;
catch
    Gp = 1;
    L = 0;
end
% 开关拨到 继电器回路
SW = 0;
% 初始化控制器
Kc  = handles.Kc; 
Ti  = handles.Ti; 
Td  = handles.Td;
ifo = handles.ifo;
dfo = handles.dfo;
% 初始化仿真时间及扰动
sim_time = 100;
step_value = 1;
disturb_step_time = sim_time*2;
disturb_step_value = 0.3;
 % 初始化继电器
d = step_value;
h = step_value;
% 开始仿真
warning off;
open_system('Model_FOPID_autotuning','loadonly');
sim('Model_FOPID_autotuning.mdl',sim_time, optionsFOPID);
close_system('Model_FOPID_autotuning', 0);
figure('Name', 'Time Response');
hold on;
plot(time, sys_in, '--k',  'LineWidth',1, 'DisplayName','input');
switch handles.controller
    case 1
        plot(time, sys_out, '-', 'Color',color.burgundyRed, 'LineWidth',2, 'DisplayName','ZN-PID^{\mu}');
    case 2
        plot(time, sys_out, '-', 'Color',color.burgundyRed, 'LineWidth',2, 'DisplayName','ZN-PI^{\lambda}D^{\lambda}');
    case 3
        plot(time, sys_out, '-', 'Color',color.burgundyRed, 'LineWidth',2, 'DisplayName','ZN-FOPID');
    otherwise
        error('ERROR !!!');
end
xlabel('Time (s)',      'FontName','Times New Roman', 'FontSize', 15);
ylabel('Step response', 'FontName','Times New Roman', 'FontSize', 15);
legend;
grid on;
hold off;


set(handles.pushbutton_Time, 'backgroundcolor', color.skyBlue);
set(handles.pushbutton_Time, 'string', 'Time Response');
set(handles.pushbutton_Time, 'enable', 'on');





% --- Executes on button press in pushbutton_Save.
function pushbutton_Save_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_Save (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.pushbutton_Save, 'enable', 'off');
set(gcf,'Units','Inches');              % 调整界面使其大小合适
pos = get(gcf,'Position');
set(gcf,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])

[FileName, PathName, Fileindex] = uiputfile({'*.pdf', 'Portable Document Format (*.pdf)'; ...
    '*.bmp', 'Bitmap (*.bmp)'; ...
    '*.eps', 'EPS file (*.eps)'; ...
    '*.emf', 'Enhanced metafile (*.emf)'; ...
    '*.fig', 'MATLAB Figure (*.fig)'; ...
    '*.jpg', 'JPEG image (*.jpg)'; ...
    '*.pcx', 'Paintbrush 24-bit file (*.pcx)'; ...
    '*.pbm', 'Portable Bitmap file (*.pbm)'; ...
    '*.pgm', 'Portable Graymap file (*.pgm)'; ...
    '*.png', 'Portable Network Graphics (*.png)'; ...
    '*.ppm', 'Portable Pixmap file (*.ppm)'; ...
    '*.svg', 'Scalable Vector Graphics file (*.svg)'; ...
    '*.tif', 'TIFF image (*.tif)';...
    '*.tif', 'TIFF no compression image (*.tif)'} ,...
    'Save as', 'Untitled');

if  FileName ~= 0
    file = strcat(PathName,FileName);
    switch Fileindex                %根据不同的选择保存为不同的类型
        case 1
            print(gcf, file, '-dpdf', '-r0');
            fprintf('>>Saved to: %s\n',file);
        case 2
            print(gcf, file, '-dbmp', '-r0');
            fprintf('>>Saved to: %s\n',file);
        case 3
            print(gcf, file, '-depsc','-r0');
            fprintf('>>Saved to: %s\n',file);
        case 4
            print(gcf, file, '-dmeta','-r0');
            fprintf('>>Saved to: %s\n',file);
        case 5
            savefig(gcf, file);
            fprintf('>>Saved to: %s\n',file);
        case 6
            print(gcf, file, '-djpeg','-r0');
            fprintf('>>Saved to: %s\n',file);
        case 7
            print(gcf,file,'-dpcx24b','-r0');
            fprintf('>>Saved to: %s\n',file);
        case 8
            print(gcf, file, '-dpbm', '-r0');
            fprintf('>>Saved to: %s\n',file);
        case 9
            print(gcf, file, '-dpgm', '-r0');
            fprintf('>>Saved to: %s\n',file);
        case 10
            print(gcf, file, '-dpng', '-r0');
            fprintf('>>Saved to: %s\n',file);
        case 11
            print(gcf, file, '-dppm', '-r0');
            fprintf('>>Saved to: %s\n',file);
        case 12
            print(gcf, file, '-dsvg', '-r0');
            fprintf('>>Saved to: %s\n',file);
        case 13
            print(gcf, file, '-dtiff','-r0');
            fprintf('>>Saved to: %s\n',file);
        case 14
            print(gcf, file,'-dtiffn','-r0');
            fprintf('>>Saved to: %s\n',file);
    end
end
set(handles.pushbutton_Save, 'enable', 'on');




% --- Executes on button press in pushbutton_Reset.
function pushbutton_Reset_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_Reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.pushbutton_Reset, 'enable', 'off');
opts.Interpreter = 'tex';
opts.Default = 'No';
clear_choice = questdlg('\fontsize{10} Clear all records?', 'Warning', 'Yes', 'No', opts);
switch clear_choice
    case 'No'
        set(handles.pushbutton_reset, 'enable', 'on');
        return;
    case 'Yes'
end
color = myColor();
% ************************** Contrrolled Plant *************************** %
set(handles.edit_Ns, 'string', '[ N(s) ]');
set(handles.edit_Ms, 'string', '[ M(s) ]');
set(handles.edit_L,  'string', 'L');
% ******************** Critical Oscillation Parameters ******************* %
set(handles.edit_Ku, 'string', '');
set(handles.edit_Tu, 'string', '');
set(handles.checkbox_RT, 'Visible', 0);
set(handles.pushbutton_Get, 'backgroundcolor', color.skyBlue);
set(handles.pushbutton_Get, 'string', 'Get');
set(handles.pushbutton_Get, 'enable', 'on');
% ************************** Constrained Point *************************** %
set(handles.edit_x, 'string', 'x');
set(handles.edit_y, 'string', 'y');
% ************************** Preset Parameters *************************** %
set(handles.popupmenu_SC, 'value', 1);
set(handles.edit_lambda, 'string', 'λ');
set(handles.edit_r2,  'string', 'r2');
set(handles.popupmenu_mu, 'value', 1);
% ************************ Controller Parameters ************************* %
set(handles.edit_Kc, 'string', '');
set(handles.edit_Ti, 'string', '');
set(handles.edit_Td, 'string', '');
set(handles.pushbutton_Tuning, 'backgroundcolor', color.skyBlue);
set(handles.pushbutton_Tuning, 'string', 'Tuning');
set(handles.pushbutton_Tuning, 'enable', 'on');
% *************************** Functional Area **************************** %
set(handles.pushbutton_Nyquist, 'backgroundcolor', color.skyBlue);
set(handles.pushbutton_Nyquist, 'string', 'Nyquist');
set(handles.pushbutton_Nyquist, 'enable', 'on');
set(handles.pushbutton_Time, 'backgroundcolor', color.skyBlue);
set(handles.pushbutton_Time, 'string', 'Step Response');
set(handles.pushbutton_Time, 'enable', 'on');
set(handles.pushbutton_Save, 'backgroundcolor', color.skyBlue);
set(handles.pushbutton_Save, 'string', 'Save Interface');
set(handles.pushbutton_Save, 'enable', 'on');
% *********************** Delete Process Variable ************************ %
clear handles;
global reset;
handles = reset;
guidata(hObject, handles);
clc;
set(handles.pushbutton_Reset, 'enable', 'on');
