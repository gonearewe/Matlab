clear all % �����ڴ�
delta=0.01;  % ȡ�����
t=0:delta:15; % �ź���ʼʱ���ɵ�һ������ָ���������Լ��жϵ��źſ�ʼ��Ϊ 0 ��ʱ��
t_start=0;  % �����źŵľ������ʼʱ���Ǹ�����ʼʱ�̵ĺ�

% Two functions.
f=exp(-t);
h=(t.*t).*exp(-2*t);

y=conv(f,h)*delta; % conv() ����ֻ�ܹ�������ɢ���
n=length(y); % ���� y ���г���

t_y=(0:n-1)*delta+t_start;
plot(t_y, y);
axis([0 15 -0.01 0.1]);

grid on;