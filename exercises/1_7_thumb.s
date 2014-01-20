f2 PROC
        LDR      r1,|L0.48|
        LSLS     r2,r0,#24
        LSRS     r2,r2,#24
        LDRB     r2,[r1,r2]
        LSLS     r2,r2,#8
        LSRS     r0,r0,#8
        LDRB     r0,[r1,r0]
        ORRS     r0,r0,r2
        BX       lr
        ENDP

f3 PROC
        MOVS     r3,r0
        LSLS     r0,r0,#16
        PUSH     {r4,lr}
        LSRS     r0,r0,#16
        BL       f2
        LSLS     r4,r0,#16
        LSRS     r0,r3,#16
        BL       f2
        ORRS     r0,r0,r4
        POP      {r4,pc}
        ENDP

|L0.48|
        DCB      0x00,0x80,0x40,0xc0
        DCB      0x20,0xa0,0x60,0xe0
        DCB      0x10,0x90,0x50,0xd0
        DCB      0x30,0xb0,0x70,0xf0
        DCB      0x08,0x88,0x48,0xc8
        DCB      0x28,0xa8,0x68,0xe8
        DCB      0x18,0x98,0x58,0xd8
        DCB      0x38,0xb8,0x78,0xf8
        DCB      0x04,0x84,0x44,0xc4
        DCB      0x24,0xa4,0x64,0xe4
        DCB      0x14,0x94,0x54,0xd4
        DCB      0x34,0xb4,0x74,0xf4
        DCB      0x0c,0x8c,0x4c,0xcc
        DCB      0x2c,0xac,0x6c,0xec
        DCB      0x1c,0x9c,0x5c,0xdc
        DCB      0x3c,0xbc,0x7c,0xfc
        DCB      0x02,0x82,0x42,0xc2
        DCB      0x22,0xa2,0x62,0xe2
        DCB      0x12,0x92,0x52,0xd2
        DCB      0x32,0xb2,0x72,0xf2
        DCB      0x0a,0x8a,0x4a,0xca
        DCB      0x2a,0xaa,0x6a,0xea
        DCB      0x1a,0x9a,0x5a,0xda
        DCB      0x3a,0xba,0x7a,0xfa
        DCB      0x06,0x86,0x46,0xc6
        DCB      0x26,0xa6,0x66,0xe6
        DCB      0x16,0x96,0x56,0xd6
        DCB      0x36,0xb6,0x76,0xf6
        DCB      0x0e,0x8e,0x4e,0xce
        DCB      0x2e,0xae,0x6e,0xee
        DCB      0x1e,0x9e,0x5e,0xde
        DCB      0x3e,0xbe,0x7e,0xfe
        DCB      0x01,0x81,0x41,0xc1
        DCB      0x21,0xa1,0x61,0xe1
        DCB      0x11,0x91,0x51,0xd1
        DCB      0x31,0xb1,0x71,0xf1
        DCB      0x09,0x89,0x49,0xc9
        DCB      0x29,0xa9,0x69,0xe9
        DCB      0x19,0x99,0x59,0xd9
        DCB      0x39,0xb9,0x79,0xf9
        DCB      0x05,0x85,0x45,0xc5
        DCB      0x25,0xa5,0x65,0xe5
        DCB      0x15,0x95,0x55,0xd5
        DCB      0x35,0xb5,0x75,0xf5
        DCB      0x0d,0x8d,0x4d,0xcd
        DCB      0x2d,0xad,0x6d,0xed
        DCB      0x1d,0x9d,0x5d,0xdd
        DCB      0x3d,0xbd,0x7d,0xfd
        DCB      0x03,0x83,0x43,0xc3
        DCB      0x23,0xa3,0x63,0xe3
        DCB      0x13,0x93,0x53,0xd3
        DCB      0x33,0xb3,0x73,0xf3
        DCB      0x0b,0x8b,0x4b,0xcb
        DCB      0x2b,0xab,0x6b,0xeb
        DCB      0x1b,0x9b,0x5b,0xdb
        DCB      0x3b,0xbb,0x7b,0xfb
        DCB      0x07,0x87,0x47,0xc7
        DCB      0x27,0xa7,0x67,0xe7
        DCB      0x17,0x97,0x57,0xd7
        DCB      0x37,0xb7,0x77,0xf7
        DCB      0x0f,0x8f,0x4f,0xcf
        DCB      0x2f,0xaf,0x6f,0xef
        DCB      0x1f,0x9f,0x5f,0xdf
        DCB      0x3f,0xbf,0x7f,0xff
