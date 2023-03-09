function [output] = myColor()
%myColor 提供一些高级颜色的 RGB 参数
%          color name      RGB     = [ R   G   B   ]./255;
field1  = 'kleinBlue';     value1  = [ 0   47  167 ]./255;   % 克莱因蓝
field2  = 'capriBlue';     value2  = [ 26  85  153 ]./255;   % 卡布里蓝
field3  = 'prussianBlue';  value3  = [ 0   49  83  ]./255;   % 普鲁士蓝
field4  = 'tiffanyBlue';   value4  = [ 129 216 208 ]./255;   % 蒂芙尼蓝
field24 = 'skyBlue';       value24 = [0.68 0.85 0.9];        % 天蓝色
field5  = 'mummyBrown';    value5  = [ 143 75  40  ]./255;   % 木乃伊棕
field6  = 'titianRed';     value6  = [ 176 89  35  ]./255;   % 提香红
field7  = 'bordeauxRed';   value7  = [ 76  0   19  ]./255;   % 波尔多红
field8  = 'burgundyRed';   value8  = [ 144 0   33  ]./255;   % 勃艮第红
field9  = 'stoneGreen';    value9  = [ 23  128 105 ]./255;   % 石绿色
field10 = 'emeraldGreen';  value10 = [ 23  111 88  ]./255;   % 祖母绿
field11 = 'cypressGreen';  value11 = [ 33  166 117 ]./255;   % 松柏绿
field12 = 'akaganeYellow'; value12 = [ 234 185 70  ]./255;   % 赤金色
field13 = 'glazedYellow';  value13 = [ 240 200 0   ]./255;   % 琉璃黄
field14 = 'zheYellow';     value14 = [ 244 161 53  ]./255;   % 柘黄色
field15 = 'tigerYellow';   value15 = [ 226 175 66  ]./255;   % 虎皮黄
field16 = 'inkBlack';      value16 = [ 78  96  108 ]./255;   % 墨色
field17 = 'darkBlueBlack'; value17 = [ 59  58  78  ]./255;   % 玄清色
field18 = 'blackBlack';    value18 = [ 55  7   8   ]./255;   % 玄色
field19 = 'crimsonPurple'; value19 = [ 135 65  84  ]./255;   % 绛紫色
field20 = 'darkPurple';    value20 = [ 86  65  99  ]./255;   % 黛紫色
field21 = 'greenPurple';   value21 = [ 156 100 167 ]./255;   % 青莲色
field22 = 'shunPurplee';   value22 = [ 92  16  40  ]./255;   % 顺圣紫
field23 = 'chinaRed';      value23 = [ 255 0   0   ]./255;   % 中国红 

output = struct(field1,value1, field2,value2, field3,value3, field4,value4, ...
    field5,value5, field6,value6, field7,value7, field8,value8, field9,value9, ...
    field10,value10, field11,value11, field12,value12, field13,value13, ...
    field14,value14, field15,value15, field16,value16, field17,value17, ...
    field18,value18, field19,value19, field20,value20, field21,value21, ...
    field22,value22, field23,value23, field24,value24);

end

