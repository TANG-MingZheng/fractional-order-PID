function [output] = myColor()
%myColor �ṩһЩ�߼���ɫ�� RGB ����
%          color name      RGB     = [ R   G   B   ]./255;
field1  = 'kleinBlue';     value1  = [ 0   47  167 ]./255;   % ��������
field2  = 'capriBlue';     value2  = [ 26  85  153 ]./255;   % ��������
field3  = 'prussianBlue';  value3  = [ 0   49  83  ]./255;   % ��³ʿ��
field4  = 'tiffanyBlue';   value4  = [ 129 216 208 ]./255;   % ��ܽ����
field24 = 'skyBlue';       value24 = [0.68 0.85 0.9];        % ����ɫ
field5  = 'mummyBrown';    value5  = [ 143 75  40  ]./255;   % ľ������
field6  = 'titianRed';     value6  = [ 176 89  35  ]./255;   % �����
field7  = 'bordeauxRed';   value7  = [ 76  0   19  ]./255;   % �������
field8  = 'burgundyRed';   value8  = [ 144 0   33  ]./255;   % ���޵ں�
field9  = 'stoneGreen';    value9  = [ 23  128 105 ]./255;   % ʯ��ɫ
field10 = 'emeraldGreen';  value10 = [ 23  111 88  ]./255;   % ��ĸ��
field11 = 'cypressGreen';  value11 = [ 33  166 117 ]./255;   % �ɰ���
field12 = 'akaganeYellow'; value12 = [ 234 185 70  ]./255;   % ���ɫ
field13 = 'glazedYellow';  value13 = [ 240 200 0   ]./255;   % ������
field14 = 'zheYellow';     value14 = [ 244 161 53  ]./255;   % �ϻ�ɫ
field15 = 'tigerYellow';   value15 = [ 226 175 66  ]./255;   % ��Ƥ��
field16 = 'inkBlack';      value16 = [ 78  96  108 ]./255;   % īɫ
field17 = 'darkBlueBlack'; value17 = [ 59  58  78  ]./255;   % ����ɫ
field18 = 'blackBlack';    value18 = [ 55  7   8   ]./255;   % ��ɫ
field19 = 'crimsonPurple'; value19 = [ 135 65  84  ]./255;   % ���ɫ
field20 = 'darkPurple';    value20 = [ 86  65  99  ]./255;   % ����ɫ
field21 = 'greenPurple';   value21 = [ 156 100 167 ]./255;   % ����ɫ
field22 = 'shunPurplee';   value22 = [ 92  16  40  ]./255;   % ˳ʥ��
field23 = 'chinaRed';      value23 = [ 255 0   0   ]./255;   % �й��� 

output = struct(field1,value1, field2,value2, field3,value3, field4,value4, ...
    field5,value5, field6,value6, field7,value7, field8,value8, field9,value9, ...
    field10,value10, field11,value11, field12,value12, field13,value13, ...
    field14,value14, field15,value15, field16,value16, field17,value17, ...
    field18,value18, field19,value19, field20,value20, field21,value21, ...
    field22,value22, field23,value23, field24,value24);

end

