.text:00541081 first_loop1_begin:
.text:00541081    xor     esi, esi        ; ESI is ������� ������� �����
.text:00541083
.text:00541083 first_loop2_begin:
.text:00541083    push    ebp             ; arg_0
.text:00541084    push    esi             ; ������� ������� �����
.text:00541085    push    edi             ; ������� ������� �����
.text:00541086    call    get_bit
.text:0054108B    add     esp, 0Ch
.text:0054108E    mov     [ebx+esi], al   ; ���������� �� ���������� ������
.text:00541091    inc     esi             ; ��������� �������� ������� �����
.text:00541092    cmp     esi, 8
.text:00541095    jl      short first_loop2_begin
.text:00541097    inc     edi             ; ��������� �������� ������� �����

; ��������� ��������� �� ���������� ������� �� 8 �� ������ �������� ������� �����
.text:00541098    add     ebx, 8          
.text:0054109B    cmp     edi, 8
.text:0054109E    jl      short first_loop1_begin
