00020400  668CD8            mov ax,ds
00020403  8ED0              mov ss,ax
00020405  8EE0              mov fs,ax
00020407  8EE8              mov gs,ax
00020409  BCE0620200        mov esp,0x262e0
0002040E  0F0105B8750300    sgdt [0x375b8]
00020415  E82E000000        call 0x20448
0002041A  0F0115B8750300    lgdt [0x375b8]
00020421  0F011DE07A0200    lidt [0x27ae0]
00020428  8B25E87D0300      mov esp,[0x37de8]
0002042E  0FA9              pop gs
00020430  0FA1              pop fs
00020432  07                pop es
00020433  1F                pop ds
00020434  61                popa
00020435  CF                iret
00020436  0F20E0            mov eax,cr4
00020439  0D00020000        or eax,0x200
0002043E  0F22E0            mov cr4,eax
00020441  D92D00400200      fldcw [0x24000]
00020447  C3                ret
00020448  55                push ebp
00020449  89E5              mov ebp,esp
0002044B  83EC08            sub esp,byte +0x8
0002044E  C705E07D03000000  mov dword [0x37de0],0x0
         -0000
00020458  C705007303002003  mov dword [0x37300],0x320
         -0000
00020462  C705F07D03000000  mov dword [0x37df0],0x0
         -0000
0002046C  C605E67A020000    mov byte [0x27ae6],0x0
00020473  C605E57D030000    mov byte [0x37de5],0x0
0002047A  C605E47D030000    mov byte [0x37de4],0x0
00020481  C705F07A02000000  mov dword [0x27af0],0x0
         -0000
0002048B  C705C07503000000  mov dword [0x375c0],0x0
         -0000
00020495  E8D6180000        call 0x21d70
0002049A  E8811E0000        call 0x22320
0002049F  C7042450340200    mov dword [esp],0x23450
000204A6  E82B130000        call 0x217d6
000204AB  E8EC100000        call 0x2159c
000204B0  C704246D340200    mov dword [esp],0x2346d
000204B7  E81A130000        call 0x217d6
000204BC  E887050000        call 0x20a48
000204C1  C7042481340200    mov dword [esp],0x23481
000204C8  E809130000        call 0x217d6
000204CD  E892250000        call 0x22a64
000204D2  E8C11C0000        call 0x22198
000204D7  C704249C340200    mov dword [esp],0x2349c
000204DE  E8F3120000        call 0x217d6
000204E3  E838000000        call 0x20520
000204E8  C70424B5340200    mov dword [esp],0x234b5
000204EF  E8E2120000        call 0x217d6
000204F4  E8870A0000        call 0x20f80
000204F9  C70424D3340200    mov dword [esp],0x234d3
00020500  E8D1120000        call 0x217d6
00020505  E8362F0000        call 0x23440
0002050A  A100730300        mov eax,[0x37300]
0002050F  890424            mov [esp],eax
00020512  E8C5220000        call 0x227dc
00020517  E8C8270000        call 0x22ce4
0002051C  C9                leave
0002051D  C3                ret
0002051E  90                nop
0002051F  90                nop
00020520  55                push ebp
00020521  89E5              mov ebp,esp
00020523  83EC18            sub esp,byte +0x18
00020526  C745FC007E0300    mov dword [ebp-0x4],0x37e00
0002052D  C705E87D0300007E  mov dword [0x37de8],0x37e00
         -0300
00020537  B8CF270200        mov eax,0x227cf
0002053C  89C2              mov edx,eax
0002053E  8B45FC            mov eax,[ebp-0x4]
00020541  895030            mov [eax+0x30],edx
00020544  8B45FC            mov eax,[ebp-0x4]
00020547  C7403431000000    mov dword [eax+0x34],0x31
0002054E  8B45FC            mov eax,[ebp-0x4]
00020551  C7400C39000000    mov dword [eax+0xc],0x39
00020558  8B45FC            mov eax,[ebp-0x4]
0002055B  C7400839000000    mov dword [eax+0x8],0x39
00020562  8B45FC            mov eax,[ebp-0x4]
00020565  C70039000000      mov dword [eax],0x39
0002056B  8B45FC            mov eax,[ebp-0x4]
0002056E  C7400439000000    mov dword [eax+0x4],0x39
00020575  8B45FC            mov eax,[ebp-0x4]
00020578  C7404039000000    mov dword [eax+0x40],0x39
0002057F  8B45FC            mov eax,[ebp-0x4]
00020582  C7403802120000    mov dword [eax+0x38],0x1202
00020589  C7042400040000    mov dword [esp],0x400
00020590  E8C51E0000        call 0x2245a
00020595  8D9000040000      lea edx,[eax+0x400]
0002059B  8B45FC            mov eax,[ebp-0x4]
0002059E  89501C            mov [eax+0x1c],edx
000205A1  8B45FC            mov eax,[ebp-0x4]
000205A4  8B501C            mov edx,[eax+0x1c]
000205A7  8B45FC            mov eax,[ebp-0x4]
000205AA  89503C            mov [eax+0x3c],edx
000205AD  8B45FC            mov eax,[ebp-0x4]
000205B0  C7404400000000    mov dword [eax+0x44],0x0
000205B7  8B45FC            mov eax,[ebp-0x4]
000205BA  C7406000000000    mov dword [eax+0x60],0x0
000205C1  8B45FC            mov eax,[ebp-0x4]
000205C4  C7406800000000    mov dword [eax+0x68],0x0
000205CB  8B45FC            mov eax,[ebp-0x4]
000205CE  C7406400000000    mov dword [eax+0x64],0x0
000205D5  A1C0750300        mov eax,[0x375c0]
000205DA  83C001            add eax,byte +0x1
000205DD  A3C0750300        mov [0x375c0],eax
000205E2  8345FC70          add dword [ebp-0x4],byte +0x70
000205E6  B8CD1A0200        mov eax,0x21acd
000205EB  89C2              mov edx,eax
000205ED  8B45FC            mov eax,[ebp-0x4]
000205F0  895030            mov [eax+0x30],edx
000205F3  8B45FC            mov eax,[ebp-0x4]
000205F6  C740341B000000    mov dword [eax+0x34],0x1b
000205FD  8B45FC            mov eax,[ebp-0x4]
00020600  C7400C23000000    mov dword [eax+0xc],0x23
00020607  8B45FC            mov eax,[ebp-0x4]
0002060A  C7400823000000    mov dword [eax+0x8],0x23
00020611  8B45FC            mov eax,[ebp-0x4]
00020614  C70023000000      mov dword [eax],0x23
0002061A  8B45FC            mov eax,[ebp-0x4]
0002061D  C7400423000000    mov dword [eax+0x4],0x23
00020624  8B45FC            mov eax,[ebp-0x4]
00020627  C7404023000000    mov dword [eax+0x40],0x23
0002062E  8B45FC            mov eax,[ebp-0x4]
00020631  C7403802020000    mov dword [eax+0x38],0x202
00020638  C7042400040000    mov dword [esp],0x400
0002063F  E8161E0000        call 0x2245a
00020644  8D9000040000      lea edx,[eax+0x400]
0002064A  8B45FC            mov eax,[ebp-0x4]
0002064D  89501C            mov [eax+0x1c],edx
00020650  8B45FC            mov eax,[ebp-0x4]
00020653  8B501C            mov edx,[eax+0x1c]
00020656  8B45FC            mov eax,[ebp-0x4]
00020659  89503C            mov [eax+0x3c],edx
0002065C  8B45FC            mov eax,[ebp-0x4]
0002065F  C7404400000000    mov dword [eax+0x44],0x0
00020666  8B45FC            mov eax,[ebp-0x4]
00020669  C7406000000000    mov dword [eax+0x60],0x0
00020670  8B45FC            mov eax,[ebp-0x4]
00020673  C7406800000000    mov dword [eax+0x68],0x0
0002067A  8B45FC            mov eax,[ebp-0x4]
0002067D  C7406400000000    mov dword [eax+0x64],0x0
00020684  A1F07A0200        mov eax,[0x27af0]
00020689  83C001            add eax,byte +0x1
0002068C  A3F07A0200        mov [0x27af0],eax
00020691  C705EC7D03000000  mov dword [0x37dec],0x0
         -0000
0002069B  C9                leave
0002069C  C3                ret
0002069D  55                push ebp
0002069E  89E5              mov ebp,esp
000206A0  A1E87D0300        mov eax,[0x37de8]
000206A5  C7404401000000    mov dword [eax+0x44],0x1
000206AC  A1E87D0300        mov eax,[0x37de8]
000206B1  8B4064            mov eax,[eax+0x64]
000206B4  83F801            cmp eax,byte +0x1
000206B7  0F8483000000      jz near 0x20740
000206BD  A1E87D0300        mov eax,[0x37de8]
000206C2  A3AC750300        mov [0x375ac],eax
000206C7  A1E87D0300        mov eax,[0x37de8]
000206CC  89C2              mov edx,eax
000206CE  B8007E0300        mov eax,0x37e00
000206D3  89D1              mov ecx,edx
000206D5  29C1              sub ecx,eax
000206D7  89C8              mov eax,ecx
000206D9  C1F804            sar eax,0x4
000206DC  69C0B76DDBB6      imul eax,eax,dword 0xb6db6db7
000206E2  89C1              mov ecx,eax
000206E4  8B15F07A0200      mov edx,[0x27af0]
000206EA  A1C0750300        mov eax,[0x375c0]
000206EF  8D0402            lea eax,[edx+eax]
000206F2  83E801            sub eax,byte +0x1
000206F5  39C1              cmp ecx,eax
000206F7  750C              jnz 0x20705
000206F9  C705E87D0300007E  mov dword [0x37de8],0x37e00
         -0300
00020703  EB0D              jmp short 0x20712
00020705  A1E87D0300        mov eax,[0x37de8]
0002070A  83C070            add eax,byte +0x70
0002070D  A3E87D0300        mov [0x37de8],eax
00020712  A1E87D0300        mov eax,[0x37de8]
00020717  8B4060            mov eax,[eax+0x60]
0002071A  83F801            cmp eax,byte +0x1
0002071D  7505              jnz 0x20724
0002071F  E879FFFFFF        call 0x2069d
00020724  A1E87D0300        mov eax,[0x37de8]
00020729  8B4068            mov eax,[eax+0x68]
0002072C  83F801            cmp eax,byte +0x1
0002072F  7505              jnz 0x20736
00020731  E867FFFFFF        call 0x2069d
00020736  C705EC7D03000100  mov dword [0x37dec],0x1
         -0000
00020740  5D                pop ebp
00020741  C3                ret
00020742  55                push ebp
00020743  89E5              mov ebp,esp
00020745  83EC18            sub esp,byte +0x18
00020748  C745F800000000    mov dword [ebp-0x8],0x0
0002074F  C745FC007E0300    mov dword [ebp-0x4],0x37e00
00020756  EB17              jmp short 0x2076f
00020758  8B45FC            mov eax,[ebp-0x4]
0002075B  8B4068            mov eax,[eax+0x68]
0002075E  85C0              test eax,eax
00020760  7409              jz 0x2076b
00020762  C745F801000000    mov dword [ebp-0x8],0x1
00020769  EB32              jmp short 0x2079d
0002076B  8345FC70          add dword [ebp-0x4],byte +0x70
0002076F  8B55FC            mov edx,[ebp-0x4]
00020772  B8007E0300        mov eax,0x37e00
00020777  89D1              mov ecx,edx
00020779  29C1              sub ecx,eax
0002077B  89C8              mov eax,ecx
0002077D  C1F804            sar eax,0x4
00020780  69C0B76DDBB6      imul eax,eax,dword 0xb6db6db7
00020786  89C1              mov ecx,eax
00020788  8B15C0750300      mov edx,[0x375c0]
0002078E  A1F07A0200        mov eax,[0x27af0]
00020793  8D0402            lea eax,[edx+eax]
00020796  83E801            sub eax,byte +0x1
00020799  39C1              cmp ecx,eax
0002079B  72BB              jc 0x20758
0002079D  837DF800          cmp dword [ebp-0x8],byte +0x0
000207A1  7540              jnz 0x207e3
000207A3  8345FC70          add dword [ebp-0x4],byte +0x70
000207A7  837D0C01          cmp dword [ebp+0xc],byte +0x1
000207AB  7406              jz 0x207b3
000207AD  837D0C00          cmp dword [ebp+0xc],byte +0x0
000207B1  750F              jnz 0x207c2
000207B3  A1C0750300        mov eax,[0x375c0]
000207B8  83C001            add eax,byte +0x1
000207BB  A3C0750300        mov [0x375c0],eax
000207C0  EB21              jmp short 0x207e3
000207C2  837D0C03          cmp dword [ebp+0xc],byte +0x3
000207C6  750F              jnz 0x207d7
000207C8  A1F07A0200        mov eax,[0x27af0]
000207CD  83C001            add eax,byte +0x1
000207D0  A3F07A0200        mov [0x27af0],eax
000207D5  EB0C              jmp short 0x207e3
000207D7  C745EC00000000    mov dword [ebp-0x14],0x0
000207DE  E98D010000        jmp 0x20970
000207E3  837D0C01          cmp dword [ebp+0xc],byte +0x1
000207E7  756E              jnz 0x20857
000207E9  8B45FC            mov eax,[ebp-0x4]
000207EC  C7403431000000    mov dword [eax+0x34],0x31
000207F3  8B45FC            mov eax,[ebp-0x4]
000207F6  C7400C39000000    mov dword [eax+0xc],0x39
000207FD  8B45FC            mov eax,[ebp-0x4]
00020800  C7400839000000    mov dword [eax+0x8],0x39
00020807  8B45FC            mov eax,[ebp-0x4]
0002080A  C70039000000      mov dword [eax],0x39
00020810  8B45FC            mov eax,[ebp-0x4]
00020813  C7400439000000    mov dword [eax+0x4],0x39
0002081A  8B45FC            mov eax,[ebp-0x4]
0002081D  C7404039000000    mov dword [eax+0x40],0x39
00020824  8B45FC            mov eax,[ebp-0x4]
00020827  C7403802120000    mov dword [eax+0x38],0x1202
0002082E  C7042400040000    mov dword [esp],0x400
00020835  E8201C0000        call 0x2245a
0002083A  8D9000040000      lea edx,[eax+0x400]
00020840  8B45FC            mov eax,[ebp-0x4]
00020843  89501C            mov [eax+0x1c],edx
00020846  8B45FC            mov eax,[ebp-0x4]
00020849  8B501C            mov edx,[eax+0x1c]
0002084C  8B45FC            mov eax,[ebp-0x4]
0002084F  89503C            mov [eax+0x3c],edx
00020852  E9E1000000        jmp 0x20938
00020857  837D0C03          cmp dword [ebp+0xc],byte +0x3
0002085B  756B              jnz 0x208c8
0002085D  8B45FC            mov eax,[ebp-0x4]
00020860  C740341B000000    mov dword [eax+0x34],0x1b
00020867  8B45FC            mov eax,[ebp-0x4]
0002086A  C7400C23000000    mov dword [eax+0xc],0x23
00020871  8B45FC            mov eax,[ebp-0x4]
00020874  C7400823000000    mov dword [eax+0x8],0x23
0002087B  8B45FC            mov eax,[ebp-0x4]
0002087E  C70023000000      mov dword [eax],0x23
00020884  8B45FC            mov eax,[ebp-0x4]
00020887  C7400423000000    mov dword [eax+0x4],0x23
0002088E  8B45FC            mov eax,[ebp-0x4]
00020891  C7404023000000    mov dword [eax+0x40],0x23
00020898  8B45FC            mov eax,[ebp-0x4]
0002089B  C7403802020000    mov dword [eax+0x38],0x202
000208A2  C7042400100000    mov dword [esp],0x1000
000208A9  E8E71A0000        call 0x22395
000208AE  8D9000100000      lea edx,[eax+0x1000]
000208B4  8B45FC            mov eax,[ebp-0x4]
000208B7  89501C            mov [eax+0x1c],edx
000208BA  8B45FC            mov eax,[ebp-0x4]
000208BD  8B501C            mov edx,[eax+0x1c]
000208C0  8B45FC            mov eax,[ebp-0x4]
000208C3  89503C            mov [eax+0x3c],edx
000208C6  EB70              jmp short 0x20938
000208C8  837D0C00          cmp dword [ebp+0xc],byte +0x0
000208CC  7561              jnz 0x2092f
000208CE  8B45FC            mov eax,[ebp-0x4]
000208D1  C7403408000000    mov dword [eax+0x34],0x8
000208D8  8B45FC            mov eax,[ebp-0x4]
000208DB  C7400C10000000    mov dword [eax+0xc],0x10
000208E2  8B45FC            mov eax,[ebp-0x4]
000208E5  C7400810000000    mov dword [eax+0x8],0x10
000208EC  8B45FC            mov eax,[ebp-0x4]
000208EF  C70010000000      mov dword [eax],0x10
000208F5  8B45FC            mov eax,[ebp-0x4]
000208F8  C7400410000000    mov dword [eax+0x4],0x10
000208FF  8B45FC            mov eax,[ebp-0x4]
00020902  C7404010000000    mov dword [eax+0x40],0x10
00020909  C7042400040000    mov dword [esp],0x400
00020910  E8451B0000        call 0x2245a
00020915  8D9000040000      lea edx,[eax+0x400]
0002091B  8B45FC            mov eax,[ebp-0x4]
0002091E  89501C            mov [eax+0x1c],edx
00020921  8B45FC            mov eax,[ebp-0x4]
00020924  8B501C            mov edx,[eax+0x1c]
00020927  8B45FC            mov eax,[ebp-0x4]
0002092A  89503C            mov [eax+0x3c],edx
0002092D  EB09              jmp short 0x20938
0002092F  C745EC00000000    mov dword [ebp-0x14],0x0
00020936  EB38              jmp short 0x20970
00020938  8B55FC            mov edx,[ebp-0x4]
0002093B  8B4508            mov eax,[ebp+0x8]
0002093E  894230            mov [edx+0x30],eax
00020941  8B45FC            mov eax,[ebp-0x4]
00020944  C7404400000000    mov dword [eax+0x44],0x0
0002094B  8B45FC            mov eax,[ebp-0x4]
0002094E  C7406000000000    mov dword [eax+0x60],0x0
00020955  8B45FC            mov eax,[ebp-0x4]
00020958  C7406800000000    mov dword [eax+0x68],0x0
0002095F  8B45FC            mov eax,[ebp-0x4]
00020962  C7406400000000    mov dword [eax+0x64],0x0
00020969  C745EC01000000    mov dword [ebp-0x14],0x1
00020970  8B45EC            mov eax,[ebp-0x14]
00020973  C9                leave
00020974  C3                ret
00020975  55                push ebp
00020976  89E5              mov ebp,esp
00020978  83EC14            sub esp,byte +0x14
0002097B  C745FC007E0300    mov dword [ebp-0x4],0x37e00
00020982  EB1F              jmp short 0x209a3
00020984  8B45FC            mov eax,[ebp-0x4]
00020987  3B4508            cmp eax,[ebp+0x8]
0002098A  7513              jnz 0x2099f
0002098C  8B4508            mov eax,[ebp+0x8]
0002098F  C7406801000000    mov dword [eax+0x68],0x1
00020996  C745EC01000000    mov dword [ebp-0x14],0x1
0002099D  EB39              jmp short 0x209d8
0002099F  8345FC70          add dword [ebp-0x4],byte +0x70
000209A3  8B55FC            mov edx,[ebp-0x4]
000209A6  B8007E0300        mov eax,0x37e00
000209AB  89D1              mov ecx,edx
000209AD  29C1              sub ecx,eax
000209AF  89C8              mov eax,ecx
000209B1  C1F804            sar eax,0x4
000209B4  69C0B76DDBB6      imul eax,eax,dword 0xb6db6db7
000209BA  89C1              mov ecx,eax
000209BC  8B15C0750300      mov edx,[0x375c0]
000209C2  A1F07A0200        mov eax,[0x27af0]
000209C7  8D0402            lea eax,[edx+eax]
000209CA  83E801            sub eax,byte +0x1
000209CD  39C1              cmp ecx,eax
000209CF  72B3              jc 0x20984
000209D1  C745EC00000000    mov dword [ebp-0x14],0x0
000209D8  8B45EC            mov eax,[ebp-0x14]
000209DB  C9                leave
000209DC  C3                ret
000209DD  55                push ebp
000209DE  89E5              mov ebp,esp
000209E0  83EC14            sub esp,byte +0x14
000209E3  C745FC007E0300    mov dword [ebp-0x4],0x37e00
000209EA  EB1F              jmp short 0x20a0b
000209EC  8B45FC            mov eax,[ebp-0x4]
000209EF  3B4508            cmp eax,[ebp+0x8]
000209F2  7513              jnz 0x20a07
000209F4  8B4508            mov eax,[ebp+0x8]
000209F7  C7406001000000    mov dword [eax+0x60],0x1
000209FE  C745EC01000000    mov dword [ebp-0x14],0x1
00020A05  EB39              jmp short 0x20a40
00020A07  8345FC70          add dword [ebp-0x4],byte +0x70
00020A0B  8B55FC            mov edx,[ebp-0x4]
00020A0E  B8007E0300        mov eax,0x37e00
00020A13  89D1              mov ecx,edx
00020A15  29C1              sub ecx,eax
00020A17  89C8              mov eax,ecx
00020A19  C1F804            sar eax,0x4
00020A1C  69C0B76DDBB6      imul eax,eax,dword 0xb6db6db7
00020A22  89C1              mov ecx,eax
00020A24  8B15C0750300      mov edx,[0x375c0]
00020A2A  A1F07A0200        mov eax,[0x27af0]
00020A2F  8D0402            lea eax,[edx+eax]
00020A32  83E801            sub eax,byte +0x1
00020A35  39C1              cmp ecx,eax
00020A37  72B3              jc 0x209ec
00020A39  C745EC00000000    mov dword [ebp-0x14],0x0
00020A40  8B45EC            mov eax,[ebp-0x14]
00020A43  C9                leave
00020A44  C3                ret
00020A45  90                nop
00020A46  90                nop
00020A47  90                nop
00020A48  55                push ebp
00020A49  89E5              mov ebp,esp
00020A4B  83EC28            sub esp,byte +0x28
00020A4E  B8B8750300        mov eax,0x375b8
00020A53  0FB700            movzx eax,word [eax]
00020A56  0FB7C0            movzx eax,ax
00020A59  83C001            add eax,byte +0x1
00020A5C  89C1              mov ecx,eax
00020A5E  B8BA750300        mov eax,0x375ba
00020A63  8B10              mov edx,[eax]
00020A65  B8006B0300        mov eax,0x36b00
00020A6A  894C2408          mov [esp+0x8],ecx
00020A6E  89542404          mov [esp+0x4],edx
00020A72  890424            mov [esp],eax
00020A75  E8BA0D0000        call 0x21834
00020A7A  B8BA750300        mov eax,0x375ba
00020A7F  8945F8            mov [ebp-0x8],eax
00020A82  C745FCB8750300    mov dword [ebp-0x4],0x375b8
00020A89  B8006B0300        mov eax,0x36b00
00020A8E  89C2              mov edx,eax
00020A90  8B45F8            mov eax,[ebp-0x8]
00020A93  8910              mov [eax],edx
00020A95  8B45FC            mov eax,[ebp-0x4]
00020A98  66C700FF07        mov word [eax],0x7ff
00020A9D  B8E27A0200        mov eax,0x27ae2
00020AA2  8945F8            mov [ebp-0x8],eax
00020AA5  C745FCE07A0200    mov dword [ebp-0x4],0x27ae0
00020AAC  B8E0750300        mov eax,0x375e0
00020AB1  89C2              mov edx,eax
00020AB3  8B45F8            mov eax,[ebp-0x8]
00020AB6  8910              mov [eax],edx
00020AB8  8B45FC            mov eax,[ebp-0x4]
00020ABB  66C700FF07        mov word [eax],0x7ff
00020AC0  C7442408301C0200  mov dword [esp+0x8],0x21c30
00020AC8  C74424048F000000  mov dword [esp+0x4],0x8f
00020AD0  C7042400000000    mov dword [esp],0x0
00020AD7  E844040000        call 0x20f20
00020ADC  C7442408401C0200  mov dword [esp+0x8],0x21c40
00020AE4  C74424048F000000  mov dword [esp+0x4],0x8f
00020AEC  C7042401000000    mov dword [esp],0x1
00020AF3  E828040000        call 0x20f20
00020AF8  C7442408501C0200  mov dword [esp+0x8],0x21c50
00020B00  C74424048F000000  mov dword [esp+0x4],0x8f
00020B08  C7042402000000    mov dword [esp],0x2
00020B0F  E80C040000        call 0x20f20
00020B14  C7442408601C0200  mov dword [esp+0x8],0x21c60
00020B1C  C74424048F000000  mov dword [esp+0x4],0x8f
00020B24  C7042403000000    mov dword [esp],0x3
00020B2B  E8F0030000        call 0x20f20
00020B30  C7442408701C0200  mov dword [esp+0x8],0x21c70
00020B38  C74424048F000000  mov dword [esp+0x4],0x8f
00020B40  C7042404000000    mov dword [esp],0x4
00020B47  E8D4030000        call 0x20f20
00020B4C  C7442408801C0200  mov dword [esp+0x8],0x21c80
00020B54  C74424048F000000  mov dword [esp+0x4],0x8f
00020B5C  C7042405000000    mov dword [esp],0x5
00020B63  E8B8030000        call 0x20f20
00020B68  C7442408901C0200  mov dword [esp+0x8],0x21c90
00020B70  C74424048F000000  mov dword [esp+0x4],0x8f
00020B78  C7042406000000    mov dword [esp],0x6
00020B7F  E89C030000        call 0x20f20
00020B84  C7442408A01C0200  mov dword [esp+0x8],0x21ca0
00020B8C  C74424048F000000  mov dword [esp+0x4],0x8f
00020B94  C7042407000000    mov dword [esp],0x7
00020B9B  E880030000        call 0x20f20
00020BA0  C7442408B01C0200  mov dword [esp+0x8],0x21cb0
00020BA8  C74424048F000000  mov dword [esp+0x4],0x8f
00020BB0  C7042408000000    mov dword [esp],0x8
00020BB7  E864030000        call 0x20f20
00020BBC  C7442408C01C0200  mov dword [esp+0x8],0x21cc0
00020BC4  C74424048F000000  mov dword [esp+0x4],0x8f
00020BCC  C7042409000000    mov dword [esp],0x9
00020BD3  E848030000        call 0x20f20
00020BD8  C7442408D01C0200  mov dword [esp+0x8],0x21cd0
00020BE0  C74424048F000000  mov dword [esp+0x4],0x8f
00020BE8  C704240A000000    mov dword [esp],0xa
00020BEF  E82C030000        call 0x20f20
00020BF4  C7442408E01C0200  mov dword [esp+0x8],0x21ce0
00020BFC  C74424048F000000  mov dword [esp+0x4],0x8f
00020C04  C704240B000000    mov dword [esp],0xb
00020C0B  E810030000        call 0x20f20
00020C10  C7442408F01C0200  mov dword [esp+0x8],0x21cf0
00020C18  C74424048F000000  mov dword [esp+0x4],0x8f
00020C20  C704240C000000    mov dword [esp],0xc
00020C27  E8F4020000        call 0x20f20
00020C2C  C7442408001D0200  mov dword [esp+0x8],0x21d00
00020C34  C74424048F000000  mov dword [esp+0x4],0x8f
00020C3C  C704240D000000    mov dword [esp],0xd
00020C43  E8D8020000        call 0x20f20
00020C48  C7442408201D0200  mov dword [esp+0x8],0x21d20
00020C50  C74424048F000000  mov dword [esp+0x4],0x8f
00020C58  C704240E000000    mov dword [esp],0xe
00020C5F  E8BC020000        call 0x20f20
00020C64  C7442408301D0200  mov dword [esp+0x8],0x21d30
00020C6C  C74424048F000000  mov dword [esp+0x4],0x8f
00020C74  C7042410000000    mov dword [esp],0x10
00020C7B  E8A0020000        call 0x20f20
00020C80  C7442408401D0200  mov dword [esp+0x8],0x21d40
00020C88  C74424048F000000  mov dword [esp+0x4],0x8f
00020C90  C7042411000000    mov dword [esp],0x11
00020C97  E884020000        call 0x20f20
00020C9C  C7442408501D0200  mov dword [esp+0x8],0x21d50
00020CA4  C74424048F000000  mov dword [esp+0x4],0x8f
00020CAC  C7042412000000    mov dword [esp],0x12
00020CB3  E868020000        call 0x20f20
00020CB8  C7442408601D0200  mov dword [esp+0x8],0x21d60
00020CC0  C74424048F000000  mov dword [esp+0x4],0x8f
00020CC8  C7042413000000    mov dword [esp],0x13
00020CCF  E84C020000        call 0x20f20
00020CD4  C7442408201B0200  mov dword [esp+0x8],0x21b20
00020CDC  C74424048E000000  mov dword [esp+0x4],0x8e
00020CE4  C7042420000000    mov dword [esp],0x20
00020CEB  E830020000        call 0x20f20
00020CF0  C7442408B01B0200  mov dword [esp+0x8],0x21bb0
00020CF8  C74424048E000000  mov dword [esp+0x4],0x8e
00020D00  C7042421000000    mov dword [esp],0x21
00020D07  E814020000        call 0x20f20
00020D0C  C7442408E01B0200  mov dword [esp+0x8],0x21be0
00020D14  C74424048E000000  mov dword [esp+0x4],0x8e
00020D1C  C7042422000000    mov dword [esp],0x22
00020D23  E8F8010000        call 0x20f20
00020D28  C7442408E01B0200  mov dword [esp+0x8],0x21be0
00020D30  C74424048E000000  mov dword [esp+0x4],0x8e
00020D38  C7042423000000    mov dword [esp],0x23
00020D3F  E8DC010000        call 0x20f20
00020D44  C7442408E01B0200  mov dword [esp+0x8],0x21be0
00020D4C  C74424048E000000  mov dword [esp+0x4],0x8e
00020D54  C7042424000000    mov dword [esp],0x24
00020D5B  E8C0010000        call 0x20f20
00020D60  C7442408E01B0200  mov dword [esp+0x8],0x21be0
00020D68  C74424048E000000  mov dword [esp+0x4],0x8e
00020D70  C7042425000000    mov dword [esp],0x25
00020D77  E8A4010000        call 0x20f20
00020D7C  C7442408E01B0200  mov dword [esp+0x8],0x21be0
00020D84  C74424048E000000  mov dword [esp+0x4],0x8e
00020D8C  C7042426000000    mov dword [esp],0x26
00020D93  E888010000        call 0x20f20
00020D98  C7442408E01B0200  mov dword [esp+0x8],0x21be0
00020DA0  C74424048E000000  mov dword [esp+0x4],0x8e
00020DA8  C7042427000000    mov dword [esp],0x27
00020DAF  E86C010000        call 0x20f20
00020DB4  C7442408E01B0200  mov dword [esp+0x8],0x21be0
00020DBC  C74424048E000000  mov dword [esp+0x4],0x8e
00020DC4  C7042428000000    mov dword [esp],0x28
00020DCB  E850010000        call 0x20f20
00020DD0  C7442408001C0200  mov dword [esp+0x8],0x21c00
00020DD8  C74424048E000000  mov dword [esp+0x4],0x8e
00020DE0  C7042429000000    mov dword [esp],0x29
00020DE7  E834010000        call 0x20f20
00020DEC  C7442408001C0200  mov dword [esp+0x8],0x21c00
00020DF4  C74424048E000000  mov dword [esp+0x4],0x8e
00020DFC  C704242A000000    mov dword [esp],0x2a
00020E03  E818010000        call 0x20f20
00020E08  C7442408001C0200  mov dword [esp+0x8],0x21c00
00020E10  C74424048E000000  mov dword [esp+0x4],0x8e
00020E18  C704242B000000    mov dword [esp],0x2b
00020E1F  E8FC000000        call 0x20f20
00020E24  C7442408001C0200  mov dword [esp+0x8],0x21c00
00020E2C  C74424048E000000  mov dword [esp+0x4],0x8e
00020E34  C704242C000000    mov dword [esp],0x2c
00020E3B  E8E0000000        call 0x20f20
00020E40  C7442408301C0200  mov dword [esp+0x8],0x21c30
00020E48  C74424048E000000  mov dword [esp+0x4],0x8e
00020E50  C704242D000000    mov dword [esp],0x2d
00020E57  E8C4000000        call 0x20f20
00020E5C  C7442408301C0200  mov dword [esp+0x8],0x21c30
00020E64  C74424048E000000  mov dword [esp+0x4],0x8e
00020E6C  C704242E000000    mov dword [esp],0x2e
00020E73  E8A8000000        call 0x20f20
00020E78  C7442408301C0200  mov dword [esp+0x8],0x21c30
00020E80  C74424048E000000  mov dword [esp+0x4],0x8e
00020E88  C704242F000000    mov dword [esp],0x2f
00020E8F  E88C000000        call 0x20f20
00020E94  C9                leave
00020E95  C3                ret
00020E96  55                push ebp
00020E97  89E5              mov ebp,esp
00020E99  83EC14            sub esp,byte +0x14
00020E9C  8B4508            mov eax,[ebp+0x8]
00020E9F  C1E003            shl eax,0x3
00020EA2  05E0750300        add eax,0x375e0
00020EA7  8945FC            mov [ebp-0x4],eax
00020EAA  837D0800          cmp dword [ebp+0x8],byte +0x0
00020EAE  7909              jns 0x20eb9
00020EB0  C745ECFFFFFFFF    mov dword [ebp-0x14],0xffffffff
00020EB7  EB2C              jmp short 0x20ee5
00020EB9  8B45FC            mov eax,[ebp-0x4]
00020EBC  66C740020800      mov word [eax+0x2],0x8
00020EC2  8B450C            mov eax,[ebp+0xc]
00020EC5  0FB6D0            movzx edx,al
00020EC8  8B45FC            mov eax,[ebp-0x4]
00020ECB  668910            mov [eax],dx
00020ECE  8B450C            mov eax,[ebp+0xc]
00020ED1  C1E810            shr eax,0x10
00020ED4  0FB6D0            movzx edx,al
00020ED7  8B45FC            mov eax,[ebp-0x4]
00020EDA  66895006          mov [eax+0x6],dx
00020EDE  C745EC00000000    mov dword [ebp-0x14],0x0
00020EE5  8B45EC            mov eax,[ebp-0x14]
00020EE8  C9                leave
00020EE9  C3                ret
00020EEA  55                push ebp
00020EEB  89E5              mov ebp,esp
00020EED  83EC10            sub esp,byte +0x10
00020EF0  8B4508            mov eax,[ebp+0x8]
00020EF3  C1E003            shl eax,0x3
00020EF6  05E0750300        add eax,0x375e0
00020EFB  8945FC            mov [ebp-0x4],eax
00020EFE  837D0800          cmp dword [ebp+0x8],byte +0x0
00020F02  781A              js 0x20f1e
00020F04  8B45FC            mov eax,[ebp-0x4]
00020F07  66C740020000      mov word [eax+0x2],0x0
00020F0D  8B45FC            mov eax,[ebp-0x4]
00020F10  66C7000000        mov word [eax],0x0
00020F15  8B45FC            mov eax,[ebp-0x4]
00020F18  66C740060000      mov word [eax+0x6],0x0
00020F1E  C9                leave
00020F1F  C3                ret
00020F20  55                push ebp
00020F21  89E5              mov ebp,esp
00020F23  83EC18            sub esp,byte +0x18
00020F26  8B4508            mov eax,[ebp+0x8]
00020F29  8B550C            mov edx,[ebp+0xc]
00020F2C  8845EC            mov [ebp-0x14],al
00020F2F  8855E8            mov [ebp-0x18],dl
00020F32  0FB645EC          movzx eax,byte [ebp-0x14]
00020F36  C1E003            shl eax,0x3
00020F39  05E0750300        add eax,0x375e0
00020F3E  8945F8            mov [ebp-0x8],eax
00020F41  8B4510            mov eax,[ebp+0x10]
00020F44  8945FC            mov [ebp-0x4],eax
00020F47  8B45FC            mov eax,[ebp-0x4]
00020F4A  89C2              mov edx,eax
00020F4C  8B45F8            mov eax,[ebp-0x8]
00020F4F  668910            mov [eax],dx
00020F52  8B45F8            mov eax,[ebp-0x8]
00020F55  66C740020800      mov word [eax+0x2],0x8
00020F5B  8B45F8            mov eax,[ebp-0x8]
00020F5E  C6400400          mov byte [eax+0x4],0x0
00020F62  8B55F8            mov edx,[ebp-0x8]
00020F65  0FB645E8          movzx eax,byte [ebp-0x18]
00020F69  884205            mov [edx+0x5],al
00020F6C  8B45FC            mov eax,[ebp-0x4]
00020F6F  C1E810            shr eax,0x10
00020F72  89C2              mov edx,eax
00020F74  8B45F8            mov eax,[ebp-0x8]
00020F77  66895006          mov [eax+0x6],dx
00020F7B  C9                leave
00020F7C  C3                ret
00020F7D  90                nop
00020F7E  90                nop
00020F7F  90                nop
00020F80  55                push ebp
00020F81  89E5              mov ebp,esp
00020F83  83EC18            sub esp,byte +0x18
00020F86  E847080000        call 0x217d2
00020F8B  C74424040B000000  mov dword [esp+0x4],0xb
00020F93  C7042470000000    mov dword [esp],0x70
00020F9A  E811080000        call 0x217b0
00020F9F  C7042471000000    mov dword [esp],0x71
00020FA6  E817080000        call 0x217c2
00020FAB  8845FF            mov [ebp-0x1],al
00020FAE  C74424040B000000  mov dword [esp+0x4],0xb
00020FB6  C7042470000000    mov dword [esp],0x70
00020FBD  E8EE070000        call 0x217b0
00020FC2  0FB645FF          movzx eax,byte [ebp-0x1]
00020FC6  83C840            or eax,byte +0x40
00020FC9  0FB6C0            movzx eax,al
00020FCC  89442404          mov [esp+0x4],eax
00020FD0  C7042471000000    mov dword [esp],0x71
00020FD7  E8D4070000        call 0x217b0
00020FDC  E8F3070000        call 0x217d4
00020FE1  C7042409000000    mov dword [esp],0x9
00020FE8  E889060000        call 0x21676
00020FED  C7042400000000    mov dword [esp],0x0
00020FF4  E87D060000        call 0x21676
00020FF9  C9                leave
00020FFA  C3                ret
00020FFB  55                push ebp
00020FFC  89E5              mov ebp,esp
00020FFE  5D                pop ebp
00020FFF  C3                ret
00021000  55                push ebp
00021001  89E5              mov ebp,esp
00021003  53                push ebx
00021004  83EC54            sub esp,byte +0x54
00021007  A1E07D0300        mov eax,[0x37de0]
0002100C  8945DC            mov [ebp-0x24],eax
0002100F  8B4DDC            mov ecx,[ebp-0x24]
00021012  C745B489888888    mov dword [ebp-0x4c],0x88888889
00021019  8B45B4            mov eax,[ebp-0x4c]
0002101C  F7E1              mul ecx
0002101E  89D0              mov eax,edx
00021020  C1E805            shr eax,0x5
00021023  8945B8            mov [ebp-0x48],eax
00021026  8B45B8            mov eax,[ebp-0x48]
00021029  8D148500000000    lea edx,[eax*4+0x0]
00021030  89D0              mov eax,edx
00021032  C1E004            shl eax,0x4
00021035  29D0              sub eax,edx
00021037  89CA              mov edx,ecx
00021039  29C2              sub edx,eax
0002103B  8955B8            mov [ebp-0x48],edx
0002103E  8B45B8            mov eax,[ebp-0x48]
00021041  8945E0            mov [ebp-0x20],eax
00021044  8B55DC            mov edx,[ebp-0x24]
00021047  C745B489888888    mov dword [ebp-0x4c],0x88888889
0002104E  8B45B4            mov eax,[ebp-0x4c]
00021051  F7E2              mul edx
00021053  89D0              mov eax,edx
00021055  C1E805            shr eax,0x5
00021058  8945DC            mov [ebp-0x24],eax
0002105B  8B4DDC            mov ecx,[ebp-0x24]
0002105E  C745B489888888    mov dword [ebp-0x4c],0x88888889
00021065  8B45B4            mov eax,[ebp-0x4c]
00021068  F7E1              mul ecx
0002106A  89D0              mov eax,edx
0002106C  C1E805            shr eax,0x5
0002106F  8945BC            mov [ebp-0x44],eax
00021072  8B45BC            mov eax,[ebp-0x44]
00021075  8D148500000000    lea edx,[eax*4+0x0]
0002107C  89D0              mov eax,edx
0002107E  C1E004            shl eax,0x4
00021081  29D0              sub eax,edx
00021083  89CA              mov edx,ecx
00021085  29C2              sub edx,eax
00021087  8955BC            mov [ebp-0x44],edx
0002108A  8B45BC            mov eax,[ebp-0x44]
0002108D  8945E4            mov [ebp-0x1c],eax
00021090  8B55DC            mov edx,[ebp-0x24]
00021093  C745B489888888    mov dword [ebp-0x4c],0x88888889
0002109A  8B45B4            mov eax,[ebp-0x4c]
0002109D  F7E2              mul edx
0002109F  89D0              mov eax,edx
000210A1  C1E805            shr eax,0x5
000210A4  8945DC            mov [ebp-0x24],eax
000210A7  8B4DDC            mov ecx,[ebp-0x24]
000210AA  C745B489888888    mov dword [ebp-0x4c],0x88888889
000210B1  8B45B4            mov eax,[ebp-0x4c]
000210B4  F7E1              mul ecx
000210B6  89D0              mov eax,edx
000210B8  C1E805            shr eax,0x5
000210BB  8945C0            mov [ebp-0x40],eax
000210BE  8B45C0            mov eax,[ebp-0x40]
000210C1  8D148500000000    lea edx,[eax*4+0x0]
000210C8  89D0              mov eax,edx
000210CA  C1E004            shl eax,0x4
000210CD  29D0              sub eax,edx
000210CF  89CA              mov edx,ecx
000210D1  29C2              sub edx,eax
000210D3  8955C0            mov [ebp-0x40],edx
000210D6  8B45C0            mov eax,[ebp-0x40]
000210D9  8945E8            mov [ebp-0x18],eax
000210DC  8B55DC            mov edx,[ebp-0x24]
000210DF  C745B489888888    mov dword [ebp-0x4c],0x88888889
000210E6  8B45B4            mov eax,[ebp-0x4c]
000210E9  F7E2              mul edx
000210EB  89D0              mov eax,edx
000210ED  C1E805            shr eax,0x5
000210F0  8945DC            mov [ebp-0x24],eax
000210F3  8B4DDC            mov ecx,[ebp-0x24]
000210F6  C745B4ABAAAAAA    mov dword [ebp-0x4c],0xaaaaaaab
000210FD  8B45B4            mov eax,[ebp-0x4c]
00021100  F7E1              mul ecx
00021102  89D0              mov eax,edx
00021104  C1E804            shr eax,0x4
00021107  8945C4            mov [ebp-0x3c],eax
0002110A  8B45C4            mov eax,[ebp-0x3c]
0002110D  01C0              add eax,eax
0002110F  0345C4            add eax,[ebp-0x3c]
00021112  C1E003            shl eax,0x3
00021115  89CA              mov edx,ecx
00021117  29C2              sub edx,eax
00021119  8955C4            mov [ebp-0x3c],edx
0002111C  8B45C4            mov eax,[ebp-0x3c]
0002111F  8945EC            mov [ebp-0x14],eax
00021122  8B45E4            mov eax,[ebp-0x1c]
00021125  8945F0            mov [ebp-0x10],eax
00021128  0FB605E97A0200    movzx eax,byte [0x27ae9]
0002112F  0FB6C0            movzx eax,al
00021132  0345E8            add eax,[ebp-0x18]
00021135  8945F4            mov [ebp-0xc],eax
00021138  0FB605EA7A0200    movzx eax,byte [0x27aea]
0002113F  0FB6C0            movzx eax,al
00021142  0345EC            add eax,[ebp-0x14]
00021145  8945F8            mov [ebp-0x8],eax
00021148  837DF03B          cmp dword [ebp-0x10],byte +0x3b
0002114C  7E0B              jng 0x21159
0002114E  8345F401          add dword [ebp-0xc],byte +0x1
00021152  C745F000000000    mov dword [ebp-0x10],0x0
00021159  837DF43B          cmp dword [ebp-0xc],byte +0x3b
0002115D  0F8E3C020000      jng near 0x2139f
00021163  C744240409000000  mov dword [esp+0x4],0x9
0002116B  C7042470000000    mov dword [esp],0x70
00021172  E839060000        call 0x217b0
00021177  C7042471000000    mov dword [esp],0x71
0002117E  E83F060000        call 0x217c2
00021183  C0E804            shr al,0x4
00021186  0FB6C0            movzx eax,al
00021189  89C2              mov edx,eax
0002118B  83E20F            and edx,byte +0xf
0002118E  89D0              mov eax,edx
00021190  C1E002            shl eax,0x2
00021193  01D0              add eax,edx
00021195  01C0              add eax,eax
00021197  89C3              mov ebx,eax
00021199  C7042471000000    mov dword [esp],0x71
000211A0  E81D060000        call 0x217c2
000211A5  83E00F            and eax,byte +0xf
000211A8  8D0403            lea eax,[ebx+eax]
000211AB  A2EE7A0200        mov [0x27aee],al
000211B0  C744240408000000  mov dword [esp+0x4],0x8
000211B8  C7042470000000    mov dword [esp],0x70
000211BF  E8EC050000        call 0x217b0
000211C4  C7042471000000    mov dword [esp],0x71
000211CB  E8F2050000        call 0x217c2
000211D0  C0E804            shr al,0x4
000211D3  0FB6C0            movzx eax,al
000211D6  89C2              mov edx,eax
000211D8  83E20F            and edx,byte +0xf
000211DB  89D0              mov eax,edx
000211DD  C1E002            shl eax,0x2
000211E0  01D0              add eax,edx
000211E2  01C0              add eax,eax
000211E4  89C3              mov ebx,eax
000211E6  C7042471000000    mov dword [esp],0x71
000211ED  E8D0050000        call 0x217c2
000211F2  83E00F            and eax,byte +0xf
000211F5  8D0403            lea eax,[ebx+eax]
000211F8  A2ED7A0200        mov [0x27aed],al
000211FD  C744240407000000  mov dword [esp+0x4],0x7
00021205  C7042470000000    mov dword [esp],0x70
0002120C  E89F050000        call 0x217b0
00021211  C7042471000000    mov dword [esp],0x71
00021218  E8A5050000        call 0x217c2
0002121D  C0E804            shr al,0x4
00021220  0FB6C0            movzx eax,al
00021223  89C2              mov edx,eax
00021225  83E20F            and edx,byte +0xf
00021228  89D0              mov eax,edx
0002122A  C1E002            shl eax,0x2
0002122D  01D0              add eax,edx
0002122F  01C0              add eax,eax
00021231  89C3              mov ebx,eax
00021233  C7042471000000    mov dword [esp],0x71
0002123A  E883050000        call 0x217c2
0002123F  83E00F            and eax,byte +0xf
00021242  8D0403            lea eax,[ebx+eax]
00021245  A2EC7A0200        mov [0x27aec],al
0002124A  C744240406000000  mov dword [esp+0x4],0x6
00021252  C7042470000000    mov dword [esp],0x70
00021259  E852050000        call 0x217b0
0002125E  C7042471000000    mov dword [esp],0x71
00021265  E858050000        call 0x217c2
0002126A  C0E804            shr al,0x4
0002126D  0FB6C0            movzx eax,al
00021270  89C2              mov edx,eax
00021272  83E20F            and edx,byte +0xf
00021275  89D0              mov eax,edx
00021277  C1E002            shl eax,0x2
0002127A  01D0              add eax,edx
0002127C  01C0              add eax,eax
0002127E  89C3              mov ebx,eax
00021280  C7042471000000    mov dword [esp],0x71
00021287  E836050000        call 0x217c2
0002128C  83E00F            and eax,byte +0xf
0002128F  8D0403            lea eax,[ebx+eax]
00021292  A2EB7A0200        mov [0x27aeb],al
00021297  C744240404000000  mov dword [esp+0x4],0x4
0002129F  C7042470000000    mov dword [esp],0x70
000212A6  E805050000        call 0x217b0
000212AB  C7042471000000    mov dword [esp],0x71
000212B2  E80B050000        call 0x217c2
000212B7  C0E804            shr al,0x4
000212BA  0FB6C0            movzx eax,al
000212BD  89C2              mov edx,eax
000212BF  83E20F            and edx,byte +0xf
000212C2  89D0              mov eax,edx
000212C4  C1E002            shl eax,0x2
000212C7  01D0              add eax,edx
000212C9  01C0              add eax,eax
000212CB  89C3              mov ebx,eax
000212CD  C7042471000000    mov dword [esp],0x71
000212D4  E8E9040000        call 0x217c2
000212D9  83E00F            and eax,byte +0xf
000212DC  8D0403            lea eax,[ebx+eax]
000212DF  A2EA7A0200        mov [0x27aea],al
000212E4  C744240402000000  mov dword [esp+0x4],0x2
000212EC  C7042470000000    mov dword [esp],0x70
000212F3  E8B8040000        call 0x217b0
000212F8  C7042471000000    mov dword [esp],0x71
000212FF  E8BE040000        call 0x217c2
00021304  C0E804            shr al,0x4
00021307  0FB6C0            movzx eax,al
0002130A  89C2              mov edx,eax
0002130C  83E20F            and edx,byte +0xf
0002130F  89D0              mov eax,edx
00021311  C1E002            shl eax,0x2
00021314  01D0              add eax,edx
00021316  01C0              add eax,eax
00021318  89C3              mov ebx,eax
0002131A  C7042471000000    mov dword [esp],0x71
00021321  E89C040000        call 0x217c2
00021326  83E00F            and eax,byte +0xf
00021329  8D0403            lea eax,[ebx+eax]
0002132C  A2E97A0200        mov [0x27ae9],al
00021331  C744240400000000  mov dword [esp+0x4],0x0
00021339  C7042470000000    mov dword [esp],0x70
00021340  E86B040000        call 0x217b0
00021345  C7042471000000    mov dword [esp],0x71
0002134C  E871040000        call 0x217c2
00021351  C0E804            shr al,0x4
00021354  0FB6C0            movzx eax,al
00021357  89C2              mov edx,eax
00021359  83E20F            and edx,byte +0xf
0002135C  89D0              mov eax,edx
0002135E  C1E002            shl eax,0x2
00021361  01D0              add eax,edx
00021363  01C0              add eax,eax
00021365  89C3              mov ebx,eax
00021367  C7042471000000    mov dword [esp],0x71
0002136E  E84F040000        call 0x217c2
00021373  83E00F            and eax,byte +0xf
00021376  8D0403            lea eax,[ebx+eax]
00021379  A2E87A0200        mov [0x27ae8],al
0002137E  C745F000000000    mov dword [ebp-0x10],0x0
00021385  0FB605E97A0200    movzx eax,byte [0x27ae9]
0002138C  0FB6C0            movzx eax,al
0002138F  8945F4            mov [ebp-0xc],eax
00021392  0FB605EA7A0200    movzx eax,byte [0x27aea]
00021399  0FB6C0            movzx eax,al
0002139C  8945F8            mov [ebp-0x8],eax
0002139F  A1E87D0300        mov eax,[0x37de8]
000213A4  C7406401000000    mov dword [eax+0x64],0x1
000213AB  A100730300        mov eax,[0x37300]
000213B0  8945D8            mov [ebp-0x28],eax
000213B3  A1F07D0300        mov eax,[0x37df0]
000213B8  059E070000        add eax,0x79e
000213BD  A300730300        mov [0x37300],eax
000213C2  C70424E8340200    mov dword [esp],0x234e8
000213C9  E808040000        call 0x217d6
000213CE  0FB605E67A0200    movzx eax,byte [0x27ae6]
000213D5  0FB6C0            movzx eax,al
000213D8  890424            mov [esp],eax
000213DB  E827050000        call 0x21907
000213E0  C70424EA340200    mov dword [esp],0x234ea
000213E7  E8EA030000        call 0x217d6
000213EC  0FB605E57D0300    movzx eax,byte [0x37de5]
000213F3  0FB6C0            movzx eax,al
000213F6  890424            mov [esp],eax
000213F9  E809050000        call 0x21907
000213FE  C70424EA340200    mov dword [esp],0x234ea
00021405  E8CC030000        call 0x217d6
0002140A  0FB605E47D0300    movzx eax,byte [0x37de4]
00021411  0FB6C0            movzx eax,al
00021414  890424            mov [esp],eax
00021417  E8EB040000        call 0x21907
0002141C  C70424EC340200    mov dword [esp],0x234ec
00021423  E8AE030000        call 0x217d6
00021428  8B45F8            mov eax,[ebp-0x8]
0002142B  890424            mov [esp],eax
0002142E  E8D4040000        call 0x21907
00021433  C70424EE340200    mov dword [esp],0x234ee
0002143A  E897030000        call 0x217d6
0002143F  8B45F4            mov eax,[ebp-0xc]
00021442  890424            mov [esp],eax
00021445  E8BD040000        call 0x21907
0002144A  C70424EE340200    mov dword [esp],0x234ee
00021451  E880030000        call 0x217d6
00021456  8B45F0            mov eax,[ebp-0x10]
00021459  890424            mov [esp],eax
0002145C  E8A6040000        call 0x21907
00021461  C70424F0340200    mov dword [esp],0x234f0
00021468  E869030000        call 0x217d6
0002146D  0FB605EB7A0200    movzx eax,byte [0x27aeb]
00021474  0FB6C0            movzx eax,al
00021477  8945C8            mov [ebp-0x38],eax
0002147A  837DC807          cmp dword [ebp-0x38],byte +0x7
0002147E  776C              ja 0x214ec
00021480  8B55C8            mov edx,[ebp-0x38]
00021483  8B04953C350200    mov eax,[edx*4+0x2353c]
0002148A  FFE0              jmp eax
0002148C  C70424F3340200    mov dword [esp],0x234f3
00021493  E83E030000        call 0x217d6
00021498  EB52              jmp short 0x214ec
0002149A  C70424FA340200    mov dword [esp],0x234fa
000214A1  E830030000        call 0x217d6
000214A6  EB44              jmp short 0x214ec
000214A8  C7042401350200    mov dword [esp],0x23501
000214AF  E822030000        call 0x217d6
000214B4  EB36              jmp short 0x214ec
000214B6  C7042409350200    mov dword [esp],0x23509
000214BD  E814030000        call 0x217d6
000214C2  EB28              jmp short 0x214ec
000214C4  C7042413350200    mov dword [esp],0x23513
000214CB  E806030000        call 0x217d6
000214D0  EB1A              jmp short 0x214ec
000214D2  C704241C350200    mov dword [esp],0x2351c
000214D9  E8F8020000        call 0x217d6
000214DE  EB0C              jmp short 0x214ec
000214E0  C7042423350200    mov dword [esp],0x23523
000214E7  E8EA020000        call 0x217d6
000214EC  C704242C350200    mov dword [esp],0x2352c
000214F3  E8DE020000        call 0x217d6
000214F8  0FB605EE7A0200    movzx eax,byte [0x27aee]
000214FF  0FB6C0            movzx eax,al
00021502  890424            mov [esp],eax
00021505  E8FD030000        call 0x21907
0002150A  C7042431350200    mov dword [esp],0x23531
00021511  E8C0020000        call 0x217d6
00021516  0FB605ED7A0200    movzx eax,byte [0x27aed]
0002151D  0FB6C0            movzx eax,al
00021520  890424            mov [esp],eax
00021523  E8DF030000        call 0x21907
00021528  C7042431350200    mov dword [esp],0x23531
0002152F  E8A2020000        call 0x217d6
00021534  0FB605EC7A0200    movzx eax,byte [0x27aec]
0002153B  0FB6C0            movzx eax,al
0002153E  890424            mov [esp],eax
00021541  E8C1030000        call 0x21907
00021546  C7042433350200    mov dword [esp],0x23533
0002154D  E884020000        call 0x217d6
00021552  8B45D8            mov eax,[ebp-0x28]
00021555  A300730300        mov [0x37300],eax
0002155A  A1E87D0300        mov eax,[0x37de8]
0002155F  C7406400000000    mov dword [eax+0x64],0x0
00021566  E99CFAFFFF        jmp 0x21007
0002156B  55                push ebp
0002156C  89E5              mov ebp,esp
0002156E  5D                pop ebp
0002156F  C3                ret
00021570  55                push ebp
00021571  89E5              mov ebp,esp
00021573  83EC08            sub esp,byte +0x8
00021576  A1E07D0300        mov eax,[0x37de0]
0002157B  83C001            add eax,byte +0x1
0002157E  A3E07D0300        mov [0x37de0],eax
00021583  E815F1FFFF        call 0x2069d
00021588  C7042400000000    mov dword [esp],0x0
0002158F  E8E6010000        call 0x2177a
00021594  C9                leave
00021595  C3                ret
00021596  55                push ebp
00021597  89E5              mov ebp,esp
00021599  5D                pop ebp
0002159A  C3                ret
0002159B  90                nop
0002159C  55                push ebp
0002159D  89E5              mov ebp,esp
0002159F  83EC08            sub esp,byte +0x8
000215A2  C744240411000000  mov dword [esp+0x4],0x11
000215AA  C7042420000000    mov dword [esp],0x20
000215B1  E8FA010000        call 0x217b0
000215B6  C744240411000000  mov dword [esp+0x4],0x11
000215BE  C70424A0000000    mov dword [esp],0xa0
000215C5  E8E6010000        call 0x217b0
000215CA  C744240420000000  mov dword [esp+0x4],0x20
000215D2  C7042421000000    mov dword [esp],0x21
000215D9  E8D2010000        call 0x217b0
000215DE  C744240428000000  mov dword [esp+0x4],0x28
000215E6  C70424A1000000    mov dword [esp],0xa1
000215ED  E8BE010000        call 0x217b0
000215F2  C744240404000000  mov dword [esp+0x4],0x4
000215FA  C7042421000000    mov dword [esp],0x21
00021601  E8AA010000        call 0x217b0
00021606  C744240402000000  mov dword [esp+0x4],0x2
0002160E  C70424A1000000    mov dword [esp],0xa1
00021615  E896010000        call 0x217b0
0002161A  C744240401000000  mov dword [esp+0x4],0x1
00021622  C7042421000000    mov dword [esp],0x21
00021629  E882010000        call 0x217b0
0002162E  C744240401000000  mov dword [esp+0x4],0x1
00021636  C70424A1000000    mov dword [esp],0xa1
0002163D  E86E010000        call 0x217b0
00021642  C7442404FB000000  mov dword [esp+0x4],0xfb
0002164A  C7042421000000    mov dword [esp],0x21
00021651  E85A010000        call 0x217b0
00021656  C7442404FF000000  mov dword [esp+0x4],0xff
0002165E  C70424A1000000    mov dword [esp],0xa1
00021665  E846010000        call 0x217b0
0002166A  C9                leave
0002166B  C3                ret
0002166C  55                push ebp
0002166D  89E5              mov ebp,esp
0002166F  5D                pop ebp
00021670  C3                ret
00021671  55                push ebp
00021672  89E5              mov ebp,esp
00021674  5D                pop ebp
00021675  C3                ret
00021676  55                push ebp
00021677  89E5              mov ebp,esp
00021679  53                push ebx
0002167A  83EC14            sub esp,byte +0x14
0002167D  837D0800          cmp dword [ebp+0x8],byte +0x0
00021681  7871              js 0x216f4
00021683  837D080F          cmp dword [ebp+0x8],byte +0xf
00021687  7E02              jng 0x2168b
00021689  EB69              jmp short 0x216f4
0002168B  837D0807          cmp dword [ebp+0x8],byte +0x7
0002168F  7E34              jng 0x216c5
00021691  8B4D08            mov ecx,[ebp+0x8]
00021694  83E908            sub ecx,byte +0x8
00021697  B801000000        mov eax,0x1
0002169C  D3E0              shl eax,cl
0002169E  89C3              mov ebx,eax
000216A0  F7D3              not ebx
000216A2  C70424A1000000    mov dword [esp],0xa1
000216A9  E814010000        call 0x217c2
000216AE  21D8              and eax,ebx
000216B0  0FB6C0            movzx eax,al
000216B3  89442404          mov [esp+0x4],eax
000216B7  C70424A1000000    mov dword [esp],0xa1
000216BE  E8ED000000        call 0x217b0
000216C3  EB2F              jmp short 0x216f4
000216C5  8B4D08            mov ecx,[ebp+0x8]
000216C8  B801000000        mov eax,0x1
000216CD  D3E0              shl eax,cl
000216CF  89C3              mov ebx,eax
000216D1  F7D3              not ebx
000216D3  C7042421000000    mov dword [esp],0x21
000216DA  E8E3000000        call 0x217c2
000216DF  21D8              and eax,ebx
000216E1  0FB6C0            movzx eax,al
000216E4  89442404          mov [esp+0x4],eax
000216E8  C7042421000000    mov dword [esp],0x21
000216EF  E8BC000000        call 0x217b0
000216F4  83C414            add esp,byte +0x14
000216F7  5B                pop ebx
000216F8  5D                pop ebp
000216F9  C3                ret
000216FA  55                push ebp
000216FB  89E5              mov ebp,esp
000216FD  53                push ebx
000216FE  83EC14            sub esp,byte +0x14
00021701  837D0800          cmp dword [ebp+0x8],byte +0x0
00021705  786D              js 0x21774
00021707  837D080F          cmp dword [ebp+0x8],byte +0xf
0002170B  7E02              jng 0x2170f
0002170D  EB65              jmp short 0x21774
0002170F  837D0807          cmp dword [ebp+0x8],byte +0x7
00021713  7E32              jng 0x21747
00021715  8B4D08            mov ecx,[ebp+0x8]
00021718  83E908            sub ecx,byte +0x8
0002171B  B801000000        mov eax,0x1
00021720  D3E0              shl eax,cl
00021722  89C3              mov ebx,eax
00021724  C70424A1000000    mov dword [esp],0xa1
0002172B  E892000000        call 0x217c2
00021730  09D8              or eax,ebx
00021732  0FB6C0            movzx eax,al
00021735  89442404          mov [esp+0x4],eax
00021739  C70424A1000000    mov dword [esp],0xa1
00021740  E86B000000        call 0x217b0
00021745  EB2D              jmp short 0x21774
00021747  8B4D08            mov ecx,[ebp+0x8]
0002174A  B801000000        mov eax,0x1
0002174F  D3E0              shl eax,cl
00021751  89C3              mov ebx,eax
00021753  C7042421000000    mov dword [esp],0x21
0002175A  E863000000        call 0x217c2
0002175F  09D8              or eax,ebx
00021761  0FB6C0            movzx eax,al
00021764  89442404          mov [esp+0x4],eax
00021768  C7042421000000    mov dword [esp],0x21
0002176F  E83C000000        call 0x217b0
00021774  83C414            add esp,byte +0x14
00021777  5B                pop ebx
00021778  5D                pop ebp
00021779  C3                ret
0002177A  55                push ebp
0002177B  89E5              mov ebp,esp
0002177D  83EC08            sub esp,byte +0x8
00021780  837D0807          cmp dword [ebp+0x8],byte +0x7
00021784  7E14              jng 0x2179a
00021786  C744240420000000  mov dword [esp+0x4],0x20
0002178E  C70424A0000000    mov dword [esp],0xa0
00021795  E816000000        call 0x217b0
0002179A  C744240420000000  mov dword [esp+0x4],0x20
000217A2  C7042420000000    mov dword [esp],0x20
000217A9  E802000000        call 0x217b0
000217AE  C9                leave
000217AF  C3                ret
000217B0  55                push ebp
000217B1  89E5              mov ebp,esp
000217B3  8A44240C          mov al,[esp+0xc]
000217B7  668B542408        mov dx,[esp+0x8]
000217BC  EE                out dx,al
000217BD  90                nop
000217BE  90                nop
000217BF  90                nop
000217C0  5D                pop ebp
000217C1  C3                ret
000217C2  55                push ebp
000217C3  89E5              mov ebp,esp
000217C5  668B542408        mov dx,[esp+0x8]
000217CA  31C0              xor eax,eax
000217CC  EC                in al,dx
000217CD  90                nop
000217CE  90                nop
000217CF  90                nop
000217D0  5D                pop ebp
000217D1  C3                ret
000217D2  FA                cli
000217D3  C3                ret
000217D4  FB                sti
000217D5  C3                ret
000217D6  55                push ebp
000217D7  89E5              mov ebp,esp
000217D9  31C0              xor eax,eax
000217DB  31DB              xor ebx,ebx
000217DD  31C9              xor ecx,ecx
000217DF  8B742408          mov esi,[esp+0x8]
000217E3  4E                dec esi
000217E4  BF00800B00        mov edi,0xb8000
000217E9  B1A0              mov cl,0xa0
000217EB  668B1D00730300    mov bx,[0x37300]
000217F2  66D1E3            shl bx,1
000217F5  01DF              add edi,ebx
000217F7  46                inc esi
000217F8  8A16              mov dl,[esi]
000217FA  80FA00            cmp dl,0x0
000217FD  7424              jz 0x21823
000217FF  80FA0A            cmp dl,0xa
00021802  7515              jnz 0x21819
00021804  89F8              mov eax,edi
00021806  2D00800B00        sub eax,0xb8000
0002180B  88CD              mov ch,cl
0002180D  F6F1              div cl
0002180F  28E5              sub ch,ah
00021811  31C0              xor eax,eax
00021813  88E8              mov al,ch
00021815  01C7              add edi,eax
00021817  EBDE              jmp short 0x217f7
00021819  8817              mov [edi],dl
0002181B  81C702000000      add edi,0x2
00021821  EBD4              jmp short 0x217f7
00021823  81EF00800B00      sub edi,0xb8000
00021829  D1EF              shr edi,1
0002182B  66893D00730300    mov [0x37300],di
00021832  5D                pop ebp
00021833  C3                ret
00021834  55                push ebp
00021835  31C9              xor ecx,ecx
00021837  89E5              mov ebp,esp
00021839  8B4C2410          mov ecx,[esp+0x10]
0002183D  8B74240C          mov esi,[esp+0xc]
00021841  8B7C2408          mov edi,[esp+0x8]
00021845  FC                cld
00021846  F3A4              rep movsb
00021848  5D                pop ebp
00021849  C3                ret
0002184A  55                push ebp
0002184B  89E5              mov ebp,esp
0002184D  31C9              xor ecx,ecx
0002184F  31DB              xor ebx,ebx
00021851  31C0              xor eax,eax
00021853  8B442410          mov eax,[esp+0x10]
00021857  8B4C240C          mov ecx,[esp+0xc]
0002185B  8B5C2408          mov ebx,[esp+0x8]
0002185F  8903              mov [ebx],eax
00021861  81C304000000      add ebx,0x4
00021867  49                dec ecx
00021868  75F5              jnz 0x2185f
0002186A  5D                pop ebp
0002186B  C3                ret
0002186C  90                nop
0002186D  90                nop
0002186E  90                nop
0002186F  90                nop
00021870  55                push ebp
00021871  89E5              mov ebp,esp
00021873  E815000000        call 0x2188d
00021878  BB00000000        mov ebx,0x0
0002187D  0F22DB            mov cr3,ebx
00021880  0F20C0            mov eax,cr0
00021883  0D00000080        or eax,0x80000000
00021888  0F22C0            mov cr0,eax
0002188B  5D                pop ebp
0002188C  C3                ret
0002188D  55                push ebp
0002188E  89E5              mov ebp,esp
00021890  31C9              xor ecx,ecx
00021892  B800000000        mov eax,0x0
00021897  BB00000000        mov ebx,0x0
0002189C  66B90014          mov cx,0x1400
000218A0  8903              mov [ebx],eax
000218A2  81C304000000      add ebx,0x4
000218A8  6649              dec cx
000218AA  6681F90000        cmp cx,0x0
000218AF  75EF              jnz 0x218a0
000218B1  BB00000000        mov ebx,0x0
000218B6  B807100000        mov eax,0x1007
000218BB  66B90400          mov cx,0x4
000218BF  8903              mov [ebx],eax
000218C1  81C304000000      add ebx,0x4
000218C7  0500100000        add eax,0x1000
000218CC  6649              dec cx
000218CE  6681F90000        cmp cx,0x0
000218D3  75EA              jnz 0x218bf
000218D5  FD                std
000218D6  B807F0FF00        mov eax,0xfff007
000218DB  BFFC4F0000        mov edi,0x4ffc
000218E0  FD                std
000218E1  AB                stosd
000218E2  2D00100000        sub eax,0x1000
000218E7  7DF8              jnl 0x218e1
000218E9  5D                pop ebp
000218EA  C3                ret
000218EB  90                nop
000218EC  55                push ebp
000218ED  89E5              mov ebp,esp
000218EF  8B4508            mov eax,[ebp+0x8]
000218F2  F7D8              neg eax
000218F4  5D                pop ebp
000218F5  C3                ret
000218F6  55                push ebp
000218F7  89E5              mov ebp,esp
000218F9  837D0800          cmp dword [ebp+0x8],byte +0x0
000218FD  7903              jns 0x21902
000218FF  F75D08            neg dword [ebp+0x8]
00021902  8B4508            mov eax,[ebp+0x8]
00021905  5D                pop ebp
00021906  C3                ret
00021907  55                push ebp
00021908  89E5              mov ebp,esp
0002190A  83EC18            sub esp,byte +0x18
0002190D  8D45F2            lea eax,[ebp-0xe]
00021910  8945FC            mov [ebp-0x4],eax
00021913  8B45FC            mov eax,[ebp-0x4]
00021916  89442404          mov [esp+0x4],eax
0002191A  8B4508            mov eax,[ebp+0x8]
0002191D  890424            mov [esp],eax
00021920  E80D000000        call 0x21932
00021925  8B45FC            mov eax,[ebp-0x4]
00021928  890424            mov [esp],eax
0002192B  E8A6FEFFFF        call 0x217d6
00021930  C9                leave
00021931  C3                ret
00021932  55                push ebp
00021933  89E5              mov ebp,esp
00021935  83EC18            sub esp,byte +0x18
00021938  8B4508            mov eax,[ebp+0x8]
0002193B  890424            mov [esp],eax
0002193E  E893000000        call 0x219d6
00021943  8945F8            mov [ebp-0x8],eax
00021946  8B450C            mov eax,[ebp+0xc]
00021949  8945F4            mov [ebp-0xc],eax
0002194C  837DF800          cmp dword [ebp-0x8],byte +0x0
00021950  7512              jnz 0x21964
00021952  8B45F4            mov eax,[ebp-0xc]
00021955  C60030            mov byte [eax],0x30
00021958  8345F401          add dword [ebp-0xc],byte +0x1
0002195C  8B45F4            mov eax,[ebp-0xc]
0002195F  C60000            mov byte [eax],0x0
00021962  EB70              jmp short 0x219d4
00021964  8B45F8            mov eax,[ebp-0x8]
00021967  0345F4            add eax,[ebp-0xc]
0002196A  C60000            mov byte [eax],0x0
0002196D  EB5B              jmp short 0x219ca
0002196F  8B4D08            mov ecx,[ebp+0x8]
00021972  C745EC67666666    mov dword [ebp-0x14],0x66666667
00021979  8B45EC            mov eax,[ebp-0x14]
0002197C  F7E9              imul ecx
0002197E  C1FA02            sar edx,0x2
00021981  89C8              mov eax,ecx
00021983  C1F81F            sar eax,0x1f
00021986  29C2              sub edx,eax
00021988  89D0              mov eax,edx
0002198A  C1E002            shl eax,0x2
0002198D  01D0              add eax,edx
0002198F  01C0              add eax,eax
00021991  89CA              mov edx,ecx
00021993  29C2              sub edx,eax
00021995  89D0              mov eax,edx
00021997  8945FC            mov [ebp-0x4],eax
0002199A  8B4D08            mov ecx,[ebp+0x8]
0002199D  C745EC67666666    mov dword [ebp-0x14],0x66666667
000219A4  8B45EC            mov eax,[ebp-0x14]
000219A7  F7E9              imul ecx
000219A9  C1FA02            sar edx,0x2
000219AC  89C8              mov eax,ecx
000219AE  C1F81F            sar eax,0x1f
000219B1  89D1              mov ecx,edx
000219B3  29C1              sub ecx,eax
000219B5  89C8              mov eax,ecx
000219B7  894508            mov [ebp+0x8],eax
000219BA  8B45F8            mov eax,[ebp-0x8]
000219BD  89C2              mov edx,eax
000219BF  0355F4            add edx,[ebp-0xc]
000219C2  8B45FC            mov eax,[ebp-0x4]
000219C5  83C030            add eax,byte +0x30
000219C8  8802              mov [edx],al
000219CA  836DF801          sub dword [ebp-0x8],byte +0x1
000219CE  837DF8FF          cmp dword [ebp-0x8],byte -0x1
000219D2  759B              jnz 0x2196f
000219D4  C9                leave
000219D5  C3                ret
000219D6  55                push ebp
000219D7  89E5              mov ebp,esp
000219D9  83EC14            sub esp,byte +0x14
000219DC  C745FC00000000    mov dword [ebp-0x4],0x0
000219E3  EB24              jmp short 0x21a09
000219E5  8B4D08            mov ecx,[ebp+0x8]
000219E8  C745EC67666666    mov dword [ebp-0x14],0x66666667
000219EF  8B45EC            mov eax,[ebp-0x14]
000219F2  F7E9              imul ecx
000219F4  C1FA02            sar edx,0x2
000219F7  89C8              mov eax,ecx
000219F9  C1F81F            sar eax,0x1f
000219FC  89D1              mov ecx,edx
000219FE  29C1              sub ecx,eax
00021A00  89C8              mov eax,ecx
00021A02  894508            mov [ebp+0x8],eax
00021A05  8345FC01          add dword [ebp-0x4],byte +0x1
00021A09  837D0800          cmp dword [ebp+0x8],byte +0x0
00021A0D  75D6              jnz 0x219e5
00021A0F  8B45FC            mov eax,[ebp-0x4]
00021A12  C9                leave
00021A13  C3                ret
00021A14  55                push ebp
00021A15  89E5              mov ebp,esp
00021A17  83EC10            sub esp,byte +0x10
00021A1A  C745FC00000000    mov dword [ebp-0x4],0x0
00021A21  EB04              jmp short 0x21a27
00021A23  8345FC01          add dword [ebp-0x4],byte +0x1
00021A27  8B4508            mov eax,[ebp+0x8]
00021A2A  0FB600            movzx eax,byte [eax]
00021A2D  84C0              test al,al
00021A2F  0F95C0            setnz al
00021A32  83450801          add dword [ebp+0x8],byte +0x1
00021A36  84C0              test al,al
00021A38  75E9              jnz 0x21a23
00021A3A  8B45FC            mov eax,[ebp-0x4]
00021A3D  C9                leave
00021A3E  C3                ret
00021A3F  55                push ebp
00021A40  89E5              mov ebp,esp
00021A42  83EC10            sub esp,byte +0x10
00021A45  C745F400000000    mov dword [ebp-0xc],0x0
00021A4C  EB2A              jmp short 0x21a78
00021A4E  C745F800000000    mov dword [ebp-0x8],0x0
00021A55  EB17              jmp short 0x21a6e
00021A57  C745FC00000000    mov dword [ebp-0x4],0x0
00021A5E  EB04              jmp short 0x21a64
00021A60  8345FC01          add dword [ebp-0x4],byte +0x1
00021A64  837DFC63          cmp dword [ebp-0x4],byte +0x63
00021A68  7EF6              jng 0x21a60
00021A6A  8345F801          add dword [ebp-0x8],byte +0x1
00021A6E  837DF863          cmp dword [ebp-0x8],byte +0x63
00021A72  7EE3              jng 0x21a57
00021A74  8345F401          add dword [ebp-0xc],byte +0x1
00021A78  837DF463          cmp dword [ebp-0xc],byte +0x63
00021A7C  7ED0              jng 0x21a4e
00021A7E  C9                leave
00021A7F  C3                ret
00021A80  55                push ebp
00021A81  89E5              mov ebp,esp
00021A83  83EC18            sub esp,byte +0x18
00021A86  A100730300        mov eax,[0x37300]
00021A8B  8945FC            mov [ebp-0x4],eax
00021A8E  A1F07D0300        mov eax,[0x37df0]
00021A93  034508            add eax,[ebp+0x8]
00021A96  A300730300        mov [0x37300],eax
00021A9B  C745F800000000    mov dword [ebp-0x8],0x0
00021AA2  EB10              jmp short 0x21ab4
00021AA4  C704245C350200    mov dword [esp],0x2355c
00021AAB  E826FDFFFF        call 0x217d6
00021AB0  8345F801          add dword [ebp-0x8],byte +0x1
00021AB4  8B45F8            mov eax,[ebp-0x8]
00021AB7  3B450C            cmp eax,[ebp+0xc]
00021ABA  7CE8              jl 0x21aa4
00021ABC  8B45FC            mov eax,[ebp-0x4]
00021ABF  A300730300        mov [0x37300],eax
00021AC4  C9                leave
00021AC5  C3                ret
00021AC6  90                nop
00021AC7  90                nop
00021AC8  55                push ebp
00021AC9  89E5              mov ebp,esp
00021ACB  EBFE              jmp short 0x21acb
00021ACD  55                push ebp
00021ACE  89E5              mov ebp,esp
00021AD0  83EC18            sub esp,byte +0x18
00021AD3  E867FFFFFF        call 0x21a3f
00021AD8  E862FFFFFF        call 0x21a3f
00021ADD  E85DFFFFFF        call 0x21a3f
00021AE2  E858FFFFFF        call 0x21a3f
00021AE7  B800100200        mov eax,0x21000
00021AEC  C744240403000000  mov dword [esp+0x4],0x3
00021AF4  890424            mov [esp],eax
00021AF7  E846ECFFFF        call 0x20742
00021AFC  EBFE              jmp short 0x21afc
00021AFE  55                push ebp
00021AFF  89E5              mov ebp,esp
00021B01  EBFE              jmp short 0x21b01
00021B03  90                nop
00021B04  90                nop
00021B05  90                nop
00021B06  90                nop
00021B07  90                nop
00021B08  90                nop
00021B09  90                nop
00021B0A  90                nop
00021B0B  90                nop
00021B0C  90                nop
00021B0D  90                nop
00021B0E  90                nop
00021B0F  90                nop
00021B10  0000              add [eax],al
00021B12  0000              add [eax],al
00021B14  E8E3060000        call 0x221fc
00021B19  81C408000000      add esp,0x8
00021B1F  F4                hlt
00021B20  60                pusha
00021B21  1E                push ds
00021B22  06                push es
00021B23  0FA0              push fs
00021B25  0FA8              push gs
00021B27  668CD0            mov ax,ss
00021B2A  8EC0              mov es,ax
00021B2C  8ED8              mov ds,ax
00021B2E  89E0              mov eax,esp
00021B30  A3B0750300        mov [0x375b0],eax
00021B35  BCE07A0200        mov esp,0x27ae0
00021B3A  E831FAFFFF        call 0x21570
00021B3F  A1B0750300        mov eax,[0x375b0]
00021B44  89C4              mov esp,eax
00021B46  A1EC7D0300        mov eax,[0x37dec]
00021B4B  3D00000000        cmp eax,0x0
00021B50  7452              jz 0x21ba4
00021B52  B800000000        mov eax,0x0
00021B57  A3EC7D0300        mov [0x37dec],eax
00021B5C  FC                cld
00021B5D  B944000000        mov ecx,0x44
00021B62  89E6              mov esi,esp
00021B64  8B3DAC750300      mov edi,[0x375ac]
00021B6A  F3A4              rep movsb
00021B6C  8B3DAC750300      mov edi,[0x375ac]
00021B72  81C73C000000      add edi,0x3c
00021B78  8B07              mov eax,[edi]
00021B7A  81EF20000000      sub edi,0x20
00021B80  8907              mov [edi],eax
00021B82  8B25E87D0300      mov esp,[0x37de8]
00021B88  81C444000000      add esp,0x44
00021B8E  58                pop eax
00021B8F  3D01000000        cmp eax,0x1
00021B94  7400              jz 0x21b96
00021B96  81EC48000000      sub esp,0x48
00021B9C  0FA9              pop gs
00021B9E  0FA1              pop fs
00021BA0  07                pop es
00021BA1  1F                pop ds
00021BA2  61                popa
00021BA3  CF                iret
00021BA4  0FA9              pop gs
00021BA6  0FA1              pop fs
00021BA8  07                pop es
00021BA9  1F                pop ds
00021BAA  61                popa
00021BAB  CF                iret
00021BAC  90                nop
00021BAD  90                nop
00021BAE  90                nop
00021BAF  90                nop
00021BB0  60                pusha
00021BB1  1E                push ds
00021BB2  06                push es
00021BB3  0FA0              push fs
00021BB5  0FA8              push gs
00021BB7  668CD0            mov ax,ss
00021BBA  8EC0              mov es,ax
00021BBC  8ED8              mov ds,ax
00021BBE  89E0              mov eax,esp
00021BC0  A3101B0200        mov [0x21b10],eax
00021BC5  BCE0720200        mov esp,0x272e0
00021BCA  E8FB050000        call 0x221ca
00021BCF  A1101B0200        mov eax,[0x21b10]
00021BD4  89C4              mov esp,eax
00021BD6  0FA9              pop gs
00021BD8  0FA1              pop fs
00021BDA  07                pop es
00021BDB  1F                pop ds
00021BDC  61                popa
00021BDD  CF                iret
00021BDE  90                nop
00021BDF  90                nop
00021BE0  60                pusha
00021BE1  B020              mov al,0x20
00021BE3  E620              out 0x20,al
00021BE5  E6A0              out 0xa0,al
00021BE7  BE04800B00        mov esi,0xb8004
00021BEC  FE06              inc byte [esi]
00021BEE  B020              mov al,0x20
00021BF0  E620              out 0x20,al
00021BF2  E6A0              out 0xa0,al
00021BF4  61                popa
00021BF5  CF                iret
00021BF6  90                nop
00021BF7  90                nop
00021BF8  90                nop
00021BF9  90                nop
00021BFA  90                nop
00021BFB  90                nop
00021BFC  90                nop
00021BFD  90                nop
00021BFE  90                nop
00021BFF  90                nop
00021C00  60                pusha
00021C01  1E                push ds
00021C02  06                push es
00021C03  0FA0              push fs
00021C05  0FA8              push gs
00021C07  89E0              mov eax,esp
00021C09  A3101B0200        mov [0x21b10],eax
00021C0E  BCE0720200        mov esp,0x272e0
00021C13  E82F0F0000        call 0x22b47
00021C18  A1101B0200        mov eax,[0x21b10]
00021C1D  89C4              mov esp,eax
00021C1F  0FA9              pop gs
00021C21  0FA1              pop fs
00021C23  07                pop es
00021C24  1F                pop ds
00021C25  61                popa
00021C26  CF                iret
00021C27  90                nop
00021C28  90                nop
00021C29  90                nop
00021C2A  90                nop
00021C2B  90                nop
00021C2C  90                nop
00021C2D  90                nop
00021C2E  90                nop
00021C2F  90                nop
00021C30  68FFFFFFFF        push dword 0xffffffff
00021C35  6800000000        push dword 0x0
00021C3A  E9D5FEFFFF        jmp 0x21b14
00021C3F  90                nop
00021C40  68FFFFFFFF        push dword 0xffffffff
00021C45  6801000000        push dword 0x1
00021C4A  E9C5FEFFFF        jmp 0x21b14
00021C4F  90                nop
00021C50  68FFFFFFFF        push dword 0xffffffff
00021C55  6802000000        push dword 0x2
00021C5A  E9B5FEFFFF        jmp 0x21b14
00021C5F  90                nop
00021C60  68FFFFFFFF        push dword 0xffffffff
00021C65  6803000000        push dword 0x3
00021C6A  E9A5FEFFFF        jmp 0x21b14
00021C6F  90                nop
00021C70  68FFFFFFFF        push dword 0xffffffff
00021C75  6804000000        push dword 0x4
00021C7A  E995FEFFFF        jmp 0x21b14
00021C7F  90                nop
00021C80  68FFFFFFFF        push dword 0xffffffff
00021C85  6805000000        push dword 0x5
00021C8A  E985FEFFFF        jmp 0x21b14
00021C8F  90                nop
00021C90  68FFFFFFFF        push dword 0xffffffff
00021C95  6806000000        push dword 0x6
00021C9A  E975FEFFFF        jmp 0x21b14
00021C9F  90                nop
00021CA0  68FFFFFFFF        push dword 0xffffffff
00021CA5  6807000000        push dword 0x7
00021CAA  E965FEFFFF        jmp 0x21b14
00021CAF  90                nop
00021CB0  6808000000        push dword 0x8
00021CB5  E95AFEFFFF        jmp 0x21b14
00021CBA  90                nop
00021CBB  90                nop
00021CBC  90                nop
00021CBD  90                nop
00021CBE  90                nop
00021CBF  90                nop
00021CC0  68FFFFFFFF        push dword 0xffffffff
00021CC5  6809000000        push dword 0x9
00021CCA  E945FEFFFF        jmp 0x21b14
00021CCF  90                nop
00021CD0  680A000000        push dword 0xa
00021CD5  E93AFEFFFF        jmp 0x21b14
00021CDA  90                nop
00021CDB  90                nop
00021CDC  90                nop
00021CDD  90                nop
00021CDE  90                nop
00021CDF  90                nop
00021CE0  680B000000        push dword 0xb
00021CE5  E92AFEFFFF        jmp 0x21b14
00021CEA  90                nop
00021CEB  90                nop
00021CEC  90                nop
00021CED  90                nop
00021CEE  90                nop
00021CEF  90                nop
00021CF0  680C000000        push dword 0xc
00021CF5  E91AFEFFFF        jmp 0x21b14
00021CFA  90                nop
00021CFB  90                nop
00021CFC  90                nop
00021CFD  90                nop
00021CFE  90                nop
00021CFF  90                nop
00021D00  66B81000          mov ax,0x10
00021D04  8ED8              mov ds,ax
00021D06  8EC0              mov es,ax
00021D08  E8DC0F0000        call 0x22ce9
00021D0D  81C404000000      add esp,0x4
00021D13  CF                iret
00021D14  90                nop
00021D15  90                nop
00021D16  90                nop
00021D17  90                nop
00021D18  90                nop
00021D19  90                nop
00021D1A  90                nop
00021D1B  90                nop
00021D1C  90                nop
00021D1D  90                nop
00021D1E  90                nop
00021D1F  90                nop
00021D20  680E000000        push dword 0xe
00021D25  E9EAFDFFFF        jmp 0x21b14
00021D2A  90                nop
00021D2B  90                nop
00021D2C  90                nop
00021D2D  90                nop
00021D2E  90                nop
00021D2F  90                nop
00021D30  68FFFFFFFF        push dword 0xffffffff
00021D35  6810000000        push dword 0x10
00021D3A  E9D5FDFFFF        jmp 0x21b14
00021D3F  90                nop
00021D40  6811000000        push dword 0x11
00021D45  E9CAFDFFFF        jmp 0x21b14
00021D4A  90                nop
00021D4B  90                nop
00021D4C  90                nop
00021D4D  90                nop
00021D4E  90                nop
00021D4F  90                nop
00021D50  68FFFFFFFF        push dword 0xffffffff
00021D55  6812000000        push dword 0x12
00021D5A  E9B5FDFFFF        jmp 0x21b14
00021D5F  90                nop
00021D60  68FFFFFFFF        push dword 0xffffffff
00021D65  6813000000        push dword 0x13
00021D6A  E9A5FDFFFF        jmp 0x21b14
00021D6F  90                nop
00021D70  55                push ebp
00021D71  89E5              mov ebp,esp
00021D73  83EC08            sub esp,byte +0x8
00021D76  E87E030000        call 0x220f9
00021D7B  E87E000000        call 0x21dfe
00021D80  C9                leave
00021D81  C3                ret
00021D82  55                push ebp
00021D83  89E5              mov ebp,esp
00021D85  83EC18            sub esp,byte +0x18
00021D88  E845FAFFFF        call 0x217d2
00021D8D  C744240415000000  mov dword [esp+0x4],0x15
00021D95  C7042470000000    mov dword [esp],0x70
00021D9C  E80FFAFFFF        call 0x217b0
00021DA1  C7042471000000    mov dword [esp],0x71
00021DA8  E815FAFFFF        call 0x217c2
00021DAD  8845FF            mov [ebp-0x1],al
00021DB0  0FB645FF          movzx eax,byte [ebp-0x1]
00021DB4  890424            mov [esp],eax
00021DB7  E84BFBFFFF        call 0x21907
00021DBC  C7042460350200    mov dword [esp],0x23560
00021DC3  E80EFAFFFF        call 0x217d6
00021DC8  C744240410000000  mov dword [esp+0x4],0x10
00021DD0  C7042470000000    mov dword [esp],0x70
00021DD7  E8D4F9FFFF        call 0x217b0
00021DDC  C7042471000000    mov dword [esp],0x71
00021DE3  E8DAF9FFFF        call 0x217c2
00021DE8  8845FF            mov [ebp-0x1],al
00021DEB  0FB645FF          movzx eax,byte [ebp-0x1]
00021DEF  890424            mov [esp],eax
00021DF2  E810FBFFFF        call 0x21907
00021DF7  E8D8F9FFFF        call 0x217d4
00021DFC  C9                leave
00021DFD  C3                ret
00021DFE  55                push ebp
00021DFF  89E5              mov ebp,esp
00021E01  53                push ebx
00021E02  83EC14            sub esp,byte +0x14
00021E05  C744240409000000  mov dword [esp+0x4],0x9
00021E0D  C7042470000000    mov dword [esp],0x70
00021E14  E897F9FFFF        call 0x217b0
00021E19  C7042471000000    mov dword [esp],0x71
00021E20  E89DF9FFFF        call 0x217c2
00021E25  C0E804            shr al,0x4
00021E28  0FB6C0            movzx eax,al
00021E2B  89C2              mov edx,eax
00021E2D  83E20F            and edx,byte +0xf
00021E30  89D0              mov eax,edx
00021E32  C1E002            shl eax,0x2
00021E35  01D0              add eax,edx
00021E37  01C0              add eax,eax
00021E39  89C3              mov ebx,eax
00021E3B  C7042471000000    mov dword [esp],0x71
00021E42  E87BF9FFFF        call 0x217c2
00021E47  83E00F            and eax,byte +0xf
00021E4A  8D0403            lea eax,[ebx+eax]
00021E4D  A2EE7A0200        mov [0x27aee],al
00021E52  C744240408000000  mov dword [esp+0x4],0x8
00021E5A  C7042470000000    mov dword [esp],0x70
00021E61  E84AF9FFFF        call 0x217b0
00021E66  C7042471000000    mov dword [esp],0x71
00021E6D  E850F9FFFF        call 0x217c2
00021E72  C0E804            shr al,0x4
00021E75  0FB6C0            movzx eax,al
00021E78  89C2              mov edx,eax
00021E7A  83E20F            and edx,byte +0xf
00021E7D  89D0              mov eax,edx
00021E7F  C1E002            shl eax,0x2
00021E82  01D0              add eax,edx
00021E84  01C0              add eax,eax
00021E86  89C3              mov ebx,eax
00021E88  C7042471000000    mov dword [esp],0x71
00021E8F  E82EF9FFFF        call 0x217c2
00021E94  83E00F            and eax,byte +0xf
00021E97  8D0403            lea eax,[ebx+eax]
00021E9A  A2ED7A0200        mov [0x27aed],al
00021E9F  C744240407000000  mov dword [esp+0x4],0x7
00021EA7  C7042470000000    mov dword [esp],0x70
00021EAE  E8FDF8FFFF        call 0x217b0
00021EB3  C7042471000000    mov dword [esp],0x71
00021EBA  E803F9FFFF        call 0x217c2
00021EBF  C0E804            shr al,0x4
00021EC2  0FB6C0            movzx eax,al
00021EC5  89C2              mov edx,eax
00021EC7  83E20F            and edx,byte +0xf
00021ECA  89D0              mov eax,edx
00021ECC  C1E002            shl eax,0x2
00021ECF  01D0              add eax,edx
00021ED1  01C0              add eax,eax
00021ED3  89C3              mov ebx,eax
00021ED5  C7042471000000    mov dword [esp],0x71
00021EDC  E8E1F8FFFF        call 0x217c2
00021EE1  83E00F            and eax,byte +0xf
00021EE4  8D0403            lea eax,[ebx+eax]
00021EE7  A2EC7A0200        mov [0x27aec],al
00021EEC  C744240406000000  mov dword [esp+0x4],0x6
00021EF4  C7042470000000    mov dword [esp],0x70
00021EFB  E8B0F8FFFF        call 0x217b0
00021F00  C7042471000000    mov dword [esp],0x71
00021F07  E8B6F8FFFF        call 0x217c2
00021F0C  C0E804            shr al,0x4
00021F0F  0FB6C0            movzx eax,al
00021F12  89C2              mov edx,eax
00021F14  83E20F            and edx,byte +0xf
00021F17  89D0              mov eax,edx
00021F19  C1E002            shl eax,0x2
00021F1C  01D0              add eax,edx
00021F1E  01C0              add eax,eax
00021F20  89C3              mov ebx,eax
00021F22  C7042471000000    mov dword [esp],0x71
00021F29  E894F8FFFF        call 0x217c2
00021F2E  83E00F            and eax,byte +0xf
00021F31  8D0403            lea eax,[ebx+eax]
00021F34  A2EB7A0200        mov [0x27aeb],al
00021F39  C744240404000000  mov dword [esp+0x4],0x4
00021F41  C7042470000000    mov dword [esp],0x70
00021F48  E863F8FFFF        call 0x217b0
00021F4D  C7042471000000    mov dword [esp],0x71
00021F54  E869F8FFFF        call 0x217c2
00021F59  C0E804            shr al,0x4
00021F5C  0FB6C0            movzx eax,al
00021F5F  89C2              mov edx,eax
00021F61  83E20F            and edx,byte +0xf
00021F64  89D0              mov eax,edx
00021F66  C1E002            shl eax,0x2
00021F69  01D0              add eax,edx
00021F6B  01C0              add eax,eax
00021F6D  89C3              mov ebx,eax
00021F6F  C7042471000000    mov dword [esp],0x71
00021F76  E847F8FFFF        call 0x217c2
00021F7B  83E00F            and eax,byte +0xf
00021F7E  8D0403            lea eax,[ebx+eax]
00021F81  A2EA7A0200        mov [0x27aea],al
00021F86  C744240402000000  mov dword [esp+0x4],0x2
00021F8E  C7042470000000    mov dword [esp],0x70
00021F95  E816F8FFFF        call 0x217b0
00021F9A  C7042471000000    mov dword [esp],0x71
00021FA1  E81CF8FFFF        call 0x217c2
00021FA6  C0E804            shr al,0x4
00021FA9  0FB6C0            movzx eax,al
00021FAC  89C2              mov edx,eax
00021FAE  83E20F            and edx,byte +0xf
00021FB1  89D0              mov eax,edx
00021FB3  C1E002            shl eax,0x2
00021FB6  01D0              add eax,edx
00021FB8  01C0              add eax,eax
00021FBA  89C3              mov ebx,eax
00021FBC  C7042471000000    mov dword [esp],0x71
00021FC3  E8FAF7FFFF        call 0x217c2
00021FC8  83E00F            and eax,byte +0xf
00021FCB  8D0403            lea eax,[ebx+eax]
00021FCE  A2E97A0200        mov [0x27ae9],al
00021FD3  C744240400000000  mov dword [esp+0x4],0x0
00021FDB  C7042470000000    mov dword [esp],0x70
00021FE2  E8C9F7FFFF        call 0x217b0
00021FE7  C7042471000000    mov dword [esp],0x71
00021FEE  E8CFF7FFFF        call 0x217c2
00021FF3  C0E804            shr al,0x4
00021FF6  0FB6C0            movzx eax,al
00021FF9  89C2              mov edx,eax
00021FFB  83E20F            and edx,byte +0xf
00021FFE  89D0              mov eax,edx
00022000  C1E002            shl eax,0x2
00022003  01D0              add eax,edx
00022005  01C0              add eax,eax
00022007  89C3              mov ebx,eax
00022009  C7042471000000    mov dword [esp],0x71
00022010  E8ADF7FFFF        call 0x217c2
00022015  83E00F            and eax,byte +0xf
00022018  8D0403            lea eax,[ebx+eax]
0002201B  A2E87A0200        mov [0x27ae8],al
00022020  C605E77A020000    mov byte [0x27ae7],0x0
00022027  C7042462350200    mov dword [esp],0x23562
0002202E  E8A3F7FFFF        call 0x217d6
00022033  0FB605EA7A0200    movzx eax,byte [0x27aea]
0002203A  0FB6C0            movzx eax,al
0002203D  890424            mov [esp],eax
00022040  E8C2F8FFFF        call 0x21907
00022045  C704246D350200    mov dword [esp],0x2356d
0002204C  E885F7FFFF        call 0x217d6
00022051  0FB605E97A0200    movzx eax,byte [0x27ae9]
00022058  0FB6C0            movzx eax,al
0002205B  890424            mov [esp],eax
0002205E  E8A4F8FFFF        call 0x21907
00022063  C704246D350200    mov dword [esp],0x2356d
0002206A  E867F7FFFF        call 0x217d6
0002206F  0FB605E87A0200    movzx eax,byte [0x27ae8]
00022076  0FB6C0            movzx eax,al
00022079  890424            mov [esp],eax
0002207C  E886F8FFFF        call 0x21907
00022081  C704246F350200    mov dword [esp],0x2356f
00022088  E849F7FFFF        call 0x217d6
0002208D  C7042472350200    mov dword [esp],0x23572
00022094  E83DF7FFFF        call 0x217d6
00022099  0FB605EE7A0200    movzx eax,byte [0x27aee]
000220A0  0FB6C0            movzx eax,al
000220A3  890424            mov [esp],eax
000220A6  E85CF8FFFF        call 0x21907
000220AB  C7042475350200    mov dword [esp],0x23575
000220B2  E81FF7FFFF        call 0x217d6
000220B7  0FB605ED7A0200    movzx eax,byte [0x27aed]
000220BE  0FB6C0            movzx eax,al
000220C1  890424            mov [esp],eax
000220C4  E83EF8FFFF        call 0x21907
000220C9  C7042475350200    mov dword [esp],0x23575
000220D0  E801F7FFFF        call 0x217d6
000220D5  0FB605EC7A0200    movzx eax,byte [0x27aec]
000220DC  0FB6C0            movzx eax,al
000220DF  890424            mov [esp],eax
000220E2  E820F8FFFF        call 0x21907
000220E7  C7042460350200    mov dword [esp],0x23560
000220EE  E8E3F6FFFF        call 0x217d6
000220F3  83C414            add esp,byte +0x14
000220F6  5B                pop ebx
000220F7  5D                pop ebp
000220F8  C3                ret
000220F9  55                push ebp
000220FA  89E5              mov ebp,esp
000220FC  83EC28            sub esp,byte +0x28
000220FF  C7042477350200    mov dword [esp],0x23577
00022106  E8CBF6FFFF        call 0x217d6
0002210B  C744240410000000  mov dword [esp+0x4],0x10
00022113  C7042470000000    mov dword [esp],0x70
0002211A  E891F6FFFF        call 0x217b0
0002211F  C7042471000000    mov dword [esp],0x71
00022126  E897F6FFFF        call 0x217c2
0002212B  8845FF            mov [ebp-0x1],al
0002212E  0FB645FF          movzx eax,byte [ebp-0x1]
00022132  C0E804            shr al,0x4
00022135  0FB6C0            movzx eax,al
00022138  89C2              mov edx,eax
0002213A  83E20F            and edx,byte +0xf
0002213D  8955EC            mov [ebp-0x14],edx
00022140  837DEC04          cmp dword [ebp-0x14],byte +0x4
00022144  7750              ja 0x22196
00022146  8B55EC            mov edx,[ebp-0x14]
00022149  8B0495C8350200    mov eax,[edx*4+0x235c8]
00022150  FFE0              jmp eax
00022152  C704248B350200    mov dword [esp],0x2358b
00022159  E878F6FFFF        call 0x217d6
0002215E  EB36              jmp short 0x22196
00022160  C7042496350200    mov dword [esp],0x23596
00022167  E86AF6FFFF        call 0x217d6
0002216C  EB28              jmp short 0x22196
0002216E  C70424A2350200    mov dword [esp],0x235a2
00022175  E85CF6FFFF        call 0x217d6
0002217A  EB1A              jmp short 0x22196
0002217C  C70424AE350200    mov dword [esp],0x235ae
00022183  E84EF6FFFF        call 0x217d6
00022188  EB0C              jmp short 0x22196
0002218A  C70424BA350200    mov dword [esp],0x235ba
00022191  E840F6FFFF        call 0x217d6
00022196  C9                leave
00022197  C3                ret
00022198  55                push ebp
00022199  89E5              mov ebp,esp
0002219B  83EC08            sub esp,byte +0x8
0002219E  C705207503000000  mov dword [0x37520],0x0
         -0000
000221A8  C705247503002C75  mov dword [0x37524],0x3752c
         -0300
000221B2  A124750300        mov eax,[0x37524]
000221B7  A328750300        mov [0x37528],eax
000221BC  C7042401000000    mov dword [esp],0x1
000221C3  E8AEF4FFFF        call 0x21676
000221C8  C9                leave
000221C9  C3                ret
000221CA  55                push ebp
000221CB  89E5              mov ebp,esp
000221CD  83EC18            sub esp,byte +0x18
000221D0  C7042460000000    mov dword [esp],0x60
000221D7  E8E6F5FFFF        call 0x217c2
000221DC  0FB6C0            movzx eax,al
000221DF  8945FC            mov [ebp-0x4],eax
000221E2  8B45FC            mov eax,[ebp-0x4]
000221E5  890424            mov [esp],eax
000221E8  E837040000        call 0x22624
000221ED  C7042401000000    mov dword [esp],0x1
000221F4  E881F5FFFF        call 0x2177a
000221F9  C9                leave
000221FA  C3                ret
000221FB  90                nop
000221FC  55                push ebp
000221FD  89E5              mov ebp,esp
000221FF  83EC08            sub esp,byte +0x8
00022202  837D0810          cmp dword [ebp+0x8],byte +0x10
00022206  7E0E              jng 0x22216
00022208  C70424DC350200    mov dword [esp],0x235dc
0002220F  E8C2F5FFFF        call 0x217d6
00022214  EB0B              jmp short 0x22221
00022216  8B4508            mov eax,[ebp+0x8]
00022219  890424            mov [esp],eax
0002221C  E802000000        call 0x22223
00022221  C9                leave
00022222  C3                ret
00022223  55                push ebp
00022224  89E5              mov ebp,esp
00022226  83EC58            sub esp,byte +0x58
00022229  A100730300        mov eax,[0x37300]
0002222E  8945FC            mov [ebp-0x4],eax
00022231  C745BCE9350200    mov dword [ebp-0x44],0x235e9
00022238  C745C0F5350200    mov dword [ebp-0x40],0x235f5
0002223F  C745C401360200    mov dword [ebp-0x3c],0x23601
00022246  C745C80D360200    mov dword [ebp-0x38],0x2360d
0002224D  C745CC19360200    mov dword [ebp-0x34],0x23619
00022254  C745D025360200    mov dword [ebp-0x30],0x23625
0002225B  C745D431360200    mov dword [ebp-0x2c],0x23631
00022262  C745D83D360200    mov dword [ebp-0x28],0x2363d
00022269  C745DC49360200    mov dword [ebp-0x24],0x23649
00022270  C745E055360200    mov dword [ebp-0x20],0x23655
00022277  C745E461360200    mov dword [ebp-0x1c],0x23661
0002227E  C745E86E360200    mov dword [ebp-0x18],0x2366e
00022285  C745EC7B360200    mov dword [ebp-0x14],0x2367b
0002228C  C745F088360200    mov dword [ebp-0x10],0x23688
00022293  C745F495360200    mov dword [ebp-0xc],0x23695
0002229A  C745F8A2360200    mov dword [ebp-0x8],0x236a2
000222A1  C70500730300DA03  mov dword [0x37300],0x3da
         -0000
000222AB  C70424AF360200    mov dword [esp],0x236af
000222B2  E81FF5FFFF        call 0x217d6
000222B7  8B4508            mov eax,[ebp+0x8]
000222BA  C1E002            shl eax,0x2
000222BD  89C2              mov edx,eax
000222BF  8D45BC            lea eax,[ebp-0x44]
000222C2  01D0              add eax,edx
000222C4  8B00              mov eax,[eax]
000222C6  890424            mov [esp],eax
000222C9  E808F5FFFF        call 0x217d6
000222CE  C70424AF360200    mov dword [esp],0x236af
000222D5  E8FCF4FFFF        call 0x217d6
000222DA  8B45FC            mov eax,[ebp-0x4]
000222DD  A300730300        mov [0x37300],eax
000222E2  C9                leave
000222E3  C3                ret
000222E4  55                push ebp
000222E5  89E5              mov ebp,esp
000222E7  83EC08            sub esp,byte +0x8
000222EA  E881F5FFFF        call 0x21870
000222EF  E802000000        call 0x222f6
000222F4  C9                leave
000222F5  C3                ret
000222F6  55                push ebp
000222F7  89E5              mov ebp,esp
000222F9  83EC10            sub esp,byte +0x10
000222FC  C745FC18000000    mov dword [ebp-0x4],0x18
00022303  EB0E              jmp short 0x22313
00022305  8B45FC            mov eax,[ebp-0x4]
00022308  C7048500BB030000  mov dword [eax*4+0x3bb00],0x0
         -000000
00022313  836DFC01          sub dword [ebp-0x4],byte +0x1
00022317  837DFCFF          cmp dword [ebp-0x4],byte -0x1
0002231B  75E8              jnz 0x22305
0002231D  C9                leave
0002231E  C3                ret
0002231F  90                nop
00022320  55                push ebp
00022321  89E5              mov ebp,esp
00022323  83EC10            sub esp,byte +0x10
00022326  C745FC00000000    mov dword [ebp-0x4],0x0
0002232D  EB12              jmp short 0x22341
0002232F  8B45FC            mov eax,[ebp-0x4]
00022332  C704852073030000  mov dword [eax*4+0x37320],0x0
         -000000
0002233D  8345FC01          add dword [ebp-0x4],byte +0x1
00022341  837DFC7F          cmp dword [ebp-0x4],byte +0x7f
00022345  7EE8              jng 0x2232f
00022347  C745FC00000000    mov dword [ebp-0x4],0x0
0002234E  EB12              jmp short 0x22362
00022350  8B45FC            mov eax,[ebp-0x4]
00022353  C70485007B020000  mov dword [eax*4+0x27b00],0x0
         -000000
0002235E  8345FC01          add dword [ebp-0x4],byte +0x1
00022362  817DFCFF3B0000    cmp dword [ebp-0x4],0x3bff
00022369  7EE5              jng 0x22350
0002236B  C705207303000100  mov dword [0x37320],0x1
         -0000
00022375  C705247303000100  mov dword [0x37324],0x1
         -0000
0002237F  C705287303000100  mov dword [0x37328],0x1
         -0000
00022389  C7052C7303000100  mov dword [0x3732c],0x1
         -0000
00022393  C9                leave
00022394  C3                ret
00022395  55                push ebp
00022396  89E5              mov ebp,esp
00022398  83EC18            sub esp,byte +0x18
0002239B  817D08FF030000    cmp dword [ebp+0x8],0x3ff
000223A2  7709              ja 0x223ad
000223A4  C745F001000000    mov dword [ebp-0x10],0x1
000223AB  EB23              jmp short 0x223d0
000223AD  8B4508            mov eax,[ebp+0x8]
000223B0  25FF030000        and eax,0x3ff
000223B5  85C0              test eax,eax
000223B7  740E              jz 0x223c7
000223B9  8B4508            mov eax,[ebp+0x8]
000223BC  C1E80A            shr eax,0xa
000223BF  83C001            add eax,byte +0x1
000223C2  8945F0            mov [ebp-0x10],eax
000223C5  EB09              jmp short 0x223d0
000223C7  8B4508            mov eax,[ebp+0x8]
000223CA  C1E80A            shr eax,0xa
000223CD  8945F0            mov [ebp-0x10],eax
000223D0  C745F400000000    mov dword [ebp-0xc],0x0
000223D7  EB6A              jmp short 0x22443
000223D9  8B45F4            mov eax,[ebp-0xc]
000223DC  8B0485007B0200    mov eax,[eax*4+0x27b00]
000223E3  85C0              test eax,eax
000223E5  7558              jnz 0x2243f
000223E7  837DF001          cmp dword [ebp-0x10],byte +0x1
000223EB  7510              jnz 0x223fd
000223ED  8B45F4            mov eax,[ebp-0xc]
000223F0  C70485007B020001  mov dword [eax*4+0x27b00],0x1
         -000000
000223FB  EB4F              jmp short 0x2244c
000223FD  8B45F0            mov eax,[ebp-0x10]
00022400  89442404          mov [esp+0x4],eax
00022404  8B45F4            mov eax,[ebp-0xc]
00022407  890424            mov [esp],eax
0002240A  E80D010000        call 0x2251c
0002240F  8945F8            mov [ebp-0x8],eax
00022412  8B45F8            mov eax,[ebp-0x8]
00022415  3B45F0            cmp eax,[ebp-0x10]
00022418  751F              jnz 0x22439
0002241A  EB11              jmp short 0x2242d
0002241C  8B45F8            mov eax,[ebp-0x8]
0002241F  0345F4            add eax,[ebp-0xc]
00022422  C70485007B020001  mov dword [eax*4+0x27b00],0x1
         -000000
0002242D  836DF801          sub dword [ebp-0x8],byte +0x1
00022431  837DF8FF          cmp dword [ebp-0x8],byte -0x1
00022435  75E5              jnz 0x2241c
00022437  EB13              jmp short 0x2244c
00022439  8B45F8            mov eax,[ebp-0x8]
0002243C  0145F4            add [ebp-0xc],eax
0002243F  8345F401          add dword [ebp-0xc],byte +0x1
00022443  817DF4FF3B0000    cmp dword [ebp-0xc],0x3bff
0002244A  7E8D              jng 0x223d9
0002244C  8B45F4            mov eax,[ebp-0xc]
0002244F  C1E00A            shl eax,0xa
00022452  8945FC            mov [ebp-0x4],eax
00022455  8B45FC            mov eax,[ebp-0x4]
00022458  C9                leave
00022459  C3                ret
0002245A  55                push ebp
0002245B  89E5              mov ebp,esp
0002245D  83EC18            sub esp,byte +0x18
00022460  817D08FF030000    cmp dword [ebp+0x8],0x3ff
00022467  7709              ja 0x22472
00022469  C745F001000000    mov dword [ebp-0x10],0x1
00022470  EB23              jmp short 0x22495
00022472  8B4508            mov eax,[ebp+0x8]
00022475  25FF030000        and eax,0x3ff
0002247A  85C0              test eax,eax
0002247C  740E              jz 0x2248c
0002247E  8B4508            mov eax,[ebp+0x8]
00022481  C1E80A            shr eax,0xa
00022484  83C001            add eax,byte +0x1
00022487  8945F0            mov [ebp-0x10],eax
0002248A  EB09              jmp short 0x22495
0002248C  8B4508            mov eax,[ebp+0x8]
0002248F  C1E80A            shr eax,0xa
00022492  8945F0            mov [ebp-0x10],eax
00022495  C745F400000000    mov dword [ebp-0xc],0x0
0002249C  EB6A              jmp short 0x22508
0002249E  8B45F4            mov eax,[ebp-0xc]
000224A1  8B048520730300    mov eax,[eax*4+0x37320]
000224A8  85C0              test eax,eax
000224AA  7558              jnz 0x22504
000224AC  837DF001          cmp dword [ebp-0x10],byte +0x1
000224B0  7510              jnz 0x224c2
000224B2  8B45F4            mov eax,[ebp-0xc]
000224B5  C704852073030001  mov dword [eax*4+0x37320],0x1
         -000000
000224C0  EB4C              jmp short 0x2250e
000224C2  8B45F0            mov eax,[ebp-0x10]
000224C5  89442404          mov [esp+0x4],eax
000224C9  8B45F4            mov eax,[ebp-0xc]
000224CC  890424            mov [esp],eax
000224CF  E848000000        call 0x2251c
000224D4  8945F8            mov [ebp-0x8],eax
000224D7  8B45F8            mov eax,[ebp-0x8]
000224DA  3B45F0            cmp eax,[ebp-0x10]
000224DD  751F              jnz 0x224fe
000224DF  EB11              jmp short 0x224f2
000224E1  8B45F8            mov eax,[ebp-0x8]
000224E4  0345F4            add eax,[ebp-0xc]
000224E7  C704852073030001  mov dword [eax*4+0x37320],0x1
         -000000
000224F2  836DF801          sub dword [ebp-0x8],byte +0x1
000224F6  837DF8FF          cmp dword [ebp-0x8],byte -0x1
000224FA  75E5              jnz 0x224e1
000224FC  EB10              jmp short 0x2250e
000224FE  8B45F8            mov eax,[ebp-0x8]
00022501  0145F4            add [ebp-0xc],eax
00022504  8345F401          add dword [ebp-0xc],byte +0x1
00022508  837DF47F          cmp dword [ebp-0xc],byte +0x7f
0002250C  7E90              jng 0x2249e
0002250E  8B45F4            mov eax,[ebp-0xc]
00022511  C1E00A            shl eax,0xa
00022514  8945FC            mov [ebp-0x4],eax
00022517  8B45FC            mov eax,[ebp-0x4]
0002251A  C9                leave
0002251B  C3                ret
0002251C  55                push ebp
0002251D  89E5              mov ebp,esp
0002251F  83EC10            sub esp,byte +0x10
00022522  C745FC01000000    mov dword [ebp-0x4],0x1
00022529  8B4508            mov eax,[ebp+0x8]
0002252C  83C001            add eax,byte +0x1
0002252F  8945F8            mov [ebp-0x8],eax
00022532  EB1E              jmp short 0x22552
00022534  8B45F8            mov eax,[ebp-0x8]
00022537  8B048520730300    mov eax,[eax*4+0x37320]
0002253E  85C0              test eax,eax
00022540  7516              jnz 0x22558
00022542  8B45FC            mov eax,[ebp-0x4]
00022545  3B450C            cmp eax,[ebp+0xc]
00022548  740E              jz 0x22558
0002254A  8345FC01          add dword [ebp-0x4],byte +0x1
0002254E  8345F801          add dword [ebp-0x8],byte +0x1
00022552  837DF87F          cmp dword [ebp-0x8],byte +0x7f
00022556  7EDC              jng 0x22534
00022558  8B45FC            mov eax,[ebp-0x4]
0002255B  C9                leave
0002255C  C3                ret
0002255D  55                push ebp
0002255E  89E5              mov ebp,esp
00022560  83EC10            sub esp,byte +0x10
00022563  817D0CFF030000    cmp dword [ebp+0xc],0x3ff
0002256A  7709              ja 0x22575
0002256C  C745FC01000000    mov dword [ebp-0x4],0x1
00022573  EB23              jmp short 0x22598
00022575  8B450C            mov eax,[ebp+0xc]
00022578  25FF030000        and eax,0x3ff
0002257D  85C0              test eax,eax
0002257F  740E              jz 0x2258f
00022581  8B450C            mov eax,[ebp+0xc]
00022584  C1E80A            shr eax,0xa
00022587  83C001            add eax,byte +0x1
0002258A  8945FC            mov [ebp-0x4],eax
0002258D  EB09              jmp short 0x22598
0002258F  8B450C            mov eax,[ebp+0xc]
00022592  C1E80A            shr eax,0xa
00022595  8945FC            mov [ebp-0x4],eax
00022598  8B4508            mov eax,[ebp+0x8]
0002259B  C1E80A            shr eax,0xa
0002259E  8945F8            mov [ebp-0x8],eax
000225A1  EB11              jmp short 0x225b4
000225A3  8B45FC            mov eax,[ebp-0x4]
000225A6  0345F8            add eax,[ebp-0x8]
000225A9  C704852073030000  mov dword [eax*4+0x37320],0x0
         -000000
000225B4  836DFC01          sub dword [ebp-0x4],byte +0x1
000225B8  837DFCFF          cmp dword [ebp-0x4],byte -0x1
000225BC  75E5              jnz 0x225a3
000225BE  C9                leave
000225BF  C3                ret
000225C0  55                push ebp
000225C1  89E5              mov ebp,esp
000225C3  83EC10            sub esp,byte +0x10
000225C6  817D0CFF030000    cmp dword [ebp+0xc],0x3ff
000225CD  7709              ja 0x225d8
000225CF  C745FC01000000    mov dword [ebp-0x4],0x1
000225D6  EB23              jmp short 0x225fb
000225D8  8B450C            mov eax,[ebp+0xc]
000225DB  25FF030000        and eax,0x3ff
000225E0  85C0              test eax,eax
000225E2  740E              jz 0x225f2
000225E4  8B450C            mov eax,[ebp+0xc]
000225E7  C1E80A            shr eax,0xa
000225EA  83C001            add eax,byte +0x1
000225ED  8945FC            mov [ebp-0x4],eax
000225F0  EB09              jmp short 0x225fb
000225F2  8B450C            mov eax,[ebp+0xc]
000225F5  C1E80A            shr eax,0xa
000225F8  8945FC            mov [ebp-0x4],eax
000225FB  8B4508            mov eax,[ebp+0x8]
000225FE  C1E80A            shr eax,0xa
00022601  8945F8            mov [ebp-0x8],eax
00022604  EB11              jmp short 0x22617
00022606  8B45FC            mov eax,[ebp-0x4]
00022609  0345F8            add eax,[ebp-0x8]
0002260C  C70485007B020000  mov dword [eax*4+0x27b00],0x0
         -000000
00022617  836DFC01          sub dword [ebp-0x4],byte +0x1
0002261B  837DFCFF          cmp dword [ebp-0x4],byte -0x1
0002261F  75E5              jnz 0x22606
00022621  C9                leave
00022622  C3                ret
00022623  90                nop
00022624  55                push ebp
00022625  89E5              mov ebp,esp
00022627  8B1524750300      mov edx,[0x37524]
0002262D  8B4508            mov eax,[ebp+0x8]
00022630  8902              mov [edx],eax
00022632  8D4204            lea eax,[edx+0x4]
00022635  A324750300        mov [0x37524],eax
0002263A  A124750300        mov eax,[0x37524]
0002263F  89C2              mov edx,eax
00022641  B82C750300        mov eax,0x3752c
00022646  F7D8              neg eax
00022648  83C080            add eax,byte -0x80
0002264B  8D0402            lea eax,[edx+eax]
0002264E  83F803            cmp eax,byte +0x3
00022651  770A              ja 0x2265d
00022653  C705247503002C75  mov dword [0x37524],0x3752c
         -0300
0002265D  5D                pop ebp
0002265E  C3                ret
0002265F  55                push ebp
00022660  89E5              mov ebp,esp
00022662  83EC18            sub esp,byte +0x18
00022665  C645FB00          mov byte [ebp-0x5],0x0
00022669  C645FA00          mov byte [ebp-0x6],0x0
0002266D  E948010000        jmp 0x227ba
00022672  8B1528750300      mov edx,[0x37528]
00022678  8B02              mov eax,[edx]
0002267A  8945FC            mov [ebp-0x4],eax
0002267D  8D4204            lea eax,[edx+0x4]
00022680  A328750300        mov [0x37528],eax
00022685  A128750300        mov eax,[0x37528]
0002268A  89C2              mov edx,eax
0002268C  B82C750300        mov eax,0x3752c
00022691  F7D8              neg eax
00022693  83C080            add eax,byte -0x80
00022696  8D0402            lea eax,[edx+eax]
00022699  83F803            cmp eax,byte +0x3
0002269C  770A              ja 0x226a8
0002269E  C705287503002C75  mov dword [0x37528],0x3752c
         -0300
000226A8  8B45FC            mov eax,[ebp-0x4]
000226AB  83E80E            sub eax,byte +0xe
000226AE  8945EC            mov [ebp-0x14],eax
000226B1  837DEC42          cmp dword [ebp-0x14],byte +0x42
000226B5  0F8792000000      ja near 0x2274d
000226BB  8B55EC            mov edx,[ebp-0x14]
000226BE  8B0495BC360200    mov eax,[edx*4+0x236bc]
000226C5  FFE0              jmp eax
000226C7  0FB645FB          movzx eax,byte [ebp-0x5]
000226CB  F7D0              not eax
000226CD  83E001            and eax,byte +0x1
000226D0  8845FB            mov [ebp-0x5],al
000226D3  E9E2000000        jmp 0x227ba
000226D8  0FB645FB          movzx eax,byte [ebp-0x5]
000226DC  F7D0              not eax
000226DE  83E001            and eax,byte +0x1
000226E1  8845FB            mov [ebp-0x5],al
000226E4  E9D1000000        jmp 0x227ba
000226E9  0FB645FB          movzx eax,byte [ebp-0x5]
000226ED  F7D0              not eax
000226EF  83E001            and eax,byte +0x1
000226F2  8845FB            mov [ebp-0x5],al
000226F5  E9C0000000        jmp 0x227ba
000226FA  E8CA010000        call 0x228c9
000226FF  E9B6000000        jmp 0x227ba
00022704  E832010000        call 0x2283b
00022709  E9AC000000        jmp 0x227ba
0002270E  E852020000        call 0x22965
00022713  E9A2000000        jmp 0x227ba
00022718  A100730300        mov eax,[0x37300]
0002271D  83E801            sub eax,byte +0x1
00022720  A300730300        mov [0x37300],eax
00022725  A100730300        mov eax,[0x37300]
0002272A  890424            mov [esp],eax
0002272D  E8AA000000        call 0x227dc
00022732  C70424B8360200    mov dword [esp],0x236b8
00022739  E898F0FFFF        call 0x217d6
0002273E  A100730300        mov eax,[0x37300]
00022743  83E801            sub eax,byte +0x1
00022746  A300730300        mov [0x37300],eax
0002274B  EB6D              jmp short 0x227ba
0002274D  8B45FC            mov eax,[ebp-0x4]
00022750  2580000000        and eax,0x80
00022755  85C0              test eax,eax
00022757  7420              jz 0x22779
00022759  817DFCAA000000    cmp dword [ebp-0x4],0xaa
00022760  7409              jz 0x2276b
00022762  817DFCB6000000    cmp dword [ebp-0x4],0xb6
00022769  754F              jnz 0x227ba
0002276B  0FB645FB          movzx eax,byte [ebp-0x5]
0002276F  F7D0              not eax
00022771  83E001            and eax,byte +0x1
00022774  8845FB            mov [ebp-0x5],al
00022777  EB41              jmp short 0x227ba
00022779  807DFB01          cmp byte [ebp-0x5],0x1
0002277D  7514              jnz 0x22793
0002277F  8B45FC            mov eax,[ebp-0x4]
00022782  01C0              add eax,eax
00022784  83C001            add eax,byte +0x1
00022787  8B048520400200    mov eax,[eax*4+0x24020]
0002278E  8845F9            mov [ebp-0x7],al
00022791  EB0F              jmp short 0x227a2
00022793  8B45FC            mov eax,[ebp-0x4]
00022796  01C0              add eax,eax
00022798  8B048520400200    mov eax,[eax*4+0x24020]
0002279F  8845F9            mov [ebp-0x7],al
000227A2  8D45F9            lea eax,[ebp-0x7]
000227A5  890424            mov [esp],eax
000227A8  E829F0FFFF        call 0x217d6
000227AD  A100730300        mov eax,[0x37300]
000227B2  890424            mov [esp],eax
000227B5  E822000000        call 0x227dc
000227BA  8B1528750300      mov edx,[0x37528]
000227C0  A124750300        mov eax,[0x37524]
000227C5  39C2              cmp edx,eax
000227C7  0F85A5FEFFFF      jnz near 0x22672
000227CD  EBEB              jmp short 0x227ba
000227CF  55                push ebp
000227D0  89E5              mov ebp,esp
000227D2  83EC08            sub esp,byte +0x8
000227D5  E885FEFFFF        call 0x2265f
000227DA  C9                leave
000227DB  C3                ret
000227DC  55                push ebp
000227DD  89E5              mov ebp,esp
000227DF  83EC08            sub esp,byte +0x8
000227E2  C74424040F000000  mov dword [esp+0x4],0xf
000227EA  C70424D4030000    mov dword [esp],0x3d4
000227F1  E8BAEFFFFF        call 0x217b0
000227F6  8B4508            mov eax,[ebp+0x8]
000227F9  0FB6C0            movzx eax,al
000227FC  89442404          mov [esp+0x4],eax
00022800  C70424D5030000    mov dword [esp],0x3d5
00022807  E8A4EFFFFF        call 0x217b0
0002280C  C74424040E000000  mov dword [esp+0x4],0xe
00022814  C70424D4030000    mov dword [esp],0x3d4
0002281B  E890EFFFFF        call 0x217b0
00022820  8B4508            mov eax,[ebp+0x8]
00022823  C1F808            sar eax,0x8
00022826  0FB6C0            movzx eax,al
00022829  89442404          mov [esp+0x4],eax
0002282D  C70424D5030000    mov dword [esp],0x3d5
00022834  E877EFFFFF        call 0x217b0
00022839  C9                leave
0002283A  C3                ret
0002283B  55                push ebp
0002283C  89E5              mov ebp,esp
0002283E  83EC08            sub esp,byte +0x8
00022841  E88CEFFFFF        call 0x217d2
00022846  C744240450000000  mov dword [esp+0x4],0x50
0002284E  C7042480070000    mov dword [esp],0x780
00022855  E826F2FFFF        call 0x21a80
0002285A  A1F07D0300        mov eax,[0x37df0]
0002285F  83C050            add eax,byte +0x50
00022862  A3F07D0300        mov [0x37df0],eax
00022867  C74424040C000000  mov dword [esp+0x4],0xc
0002286F  C70424D4030000    mov dword [esp],0x3d4
00022876  E835EFFFFF        call 0x217b0
0002287B  A1F07D0300        mov eax,[0x37df0]
00022880  C1F808            sar eax,0x8
00022883  0FB6C0            movzx eax,al
00022886  89442404          mov [esp+0x4],eax
0002288A  C70424D5030000    mov dword [esp],0x3d5
00022891  E81AEFFFFF        call 0x217b0
00022896  C74424040D000000  mov dword [esp+0x4],0xd
0002289E  C70424D4030000    mov dword [esp],0x3d4
000228A5  E806EFFFFF        call 0x217b0
000228AA  A1F07D0300        mov eax,[0x37df0]
000228AF  0FB6C0            movzx eax,al
000228B2  89442404          mov [esp+0x4],eax
000228B6  C70424D5030000    mov dword [esp],0x3d5
000228BD  E8EEEEFFFF        call 0x217b0
000228C2  E80DEFFFFF        call 0x217d4
000228C7  C9                leave
000228C8  C3                ret
000228C9  55                push ebp
000228CA  89E5              mov ebp,esp
000228CC  83EC08            sub esp,byte +0x8
000228CF  A1F07D0300        mov eax,[0x37df0]
000228D4  83F84F            cmp eax,byte +0x4f
000228D7  0F8E86000000      jng near 0x22963
000228DD  E8F0EEFFFF        call 0x217d2
000228E2  C744240450000000  mov dword [esp+0x4],0x50
000228EA  C7042480070000    mov dword [esp],0x780
000228F1  E88AF1FFFF        call 0x21a80
000228F6  A1F07D0300        mov eax,[0x37df0]
000228FB  83E850            sub eax,byte +0x50
000228FE  A3F07D0300        mov [0x37df0],eax
00022903  C74424040C000000  mov dword [esp+0x4],0xc
0002290B  C70424D4030000    mov dword [esp],0x3d4
00022912  E899EEFFFF        call 0x217b0
00022917  A1F07D0300        mov eax,[0x37df0]
0002291C  C1F808            sar eax,0x8
0002291F  0FB6C0            movzx eax,al
00022922  89442404          mov [esp+0x4],eax
00022926  C70424D5030000    mov dword [esp],0x3d5
0002292D  E87EEEFFFF        call 0x217b0
00022932  C74424040D000000  mov dword [esp+0x4],0xd
0002293A  C70424D4030000    mov dword [esp],0x3d4
00022941  E86AEEFFFF        call 0x217b0
00022946  A1F07D0300        mov eax,[0x37df0]
0002294B  0FB6C0            movzx eax,al
0002294E  89442404          mov [esp+0x4],eax
00022952  C70424D5030000    mov dword [esp],0x3d5
00022959  E852EEFFFF        call 0x217b0
0002295E  E871EEFFFF        call 0x217d4
00022963  C9                leave
00022964  C3                ret
00022965  55                push ebp
00022966  89E5              mov ebp,esp
00022968  53                push ebx
00022969  83EC24            sub esp,byte +0x24
0002296C  A100730300        mov eax,[0x37300]
00022971  8B15F07D0300      mov edx,[0x37df0]
00022977  29D0              sub eax,edx
00022979  8945F8            mov [ebp-0x8],eax
0002297C  837DF800          cmp dword [ebp-0x8],byte +0x0
00022980  751F              jnz 0x229a1
00022982  A100730300        mov eax,[0x37300]
00022987  83C050            add eax,byte +0x50
0002298A  A300730300        mov [0x37300],eax
0002298F  A100730300        mov eax,[0x37300]
00022994  890424            mov [esp],eax
00022997  E840FEFFFF        call 0x227dc
0002299C  E9A8000000        jmp 0x22a49
000229A1  8B4DF8            mov ecx,[ebp-0x8]
000229A4  C745E067666666    mov dword [ebp-0x20],0x66666667
000229AB  8B45E0            mov eax,[ebp-0x20]
000229AE  F7E9              imul ecx
000229B0  C1FA05            sar edx,0x5
000229B3  89C8              mov eax,ecx
000229B5  C1F81F            sar eax,0x1f
000229B8  89D3              mov ebx,edx
000229BA  29C3              sub ebx,eax
000229BC  895DE4            mov [ebp-0x1c],ebx
000229BF  8B45E4            mov eax,[ebp-0x1c]
000229C2  C1E002            shl eax,0x2
000229C5  0345E4            add eax,[ebp-0x1c]
000229C8  C1E004            shl eax,0x4
000229CB  89CA              mov edx,ecx
000229CD  29C2              sub edx,eax
000229CF  8955E4            mov [ebp-0x1c],edx
000229D2  837DE400          cmp dword [ebp-0x1c],byte +0x0
000229D6  7457              jz 0x22a2f
000229D8  8B4DF8            mov ecx,[ebp-0x8]
000229DB  C745E067666666    mov dword [ebp-0x20],0x66666667
000229E2  8B45E0            mov eax,[ebp-0x20]
000229E5  F7E9              imul ecx
000229E7  C1FA05            sar edx,0x5
000229EA  89C8              mov eax,ecx
000229EC  C1F81F            sar eax,0x1f
000229EF  89D3              mov ebx,edx
000229F1  29C3              sub ebx,eax
000229F3  895DE8            mov [ebp-0x18],ebx
000229F6  8B45E8            mov eax,[ebp-0x18]
000229F9  C1E002            shl eax,0x2
000229FC  0345E8            add eax,[ebp-0x18]
000229FF  C1E004            shl eax,0x4
00022A02  89CA              mov edx,ecx
00022A04  29C2              sub edx,eax
00022A06  8955E8            mov [ebp-0x18],edx
00022A09  B850000000        mov eax,0x50
00022A0E  89C2              mov edx,eax
00022A10  2B55E8            sub edx,[ebp-0x18]
00022A13  A100730300        mov eax,[0x37300]
00022A18  8D0402            lea eax,[edx+eax]
00022A1B  A300730300        mov [0x37300],eax
00022A20  A100730300        mov eax,[0x37300]
00022A25  890424            mov [esp],eax
00022A28  E8AFFDFFFF        call 0x227dc
00022A2D  EB1A              jmp short 0x22a49
00022A2F  A100730300        mov eax,[0x37300]
00022A34  83C050            add eax,byte +0x50
00022A37  A300730300        mov [0x37300],eax
00022A3C  A100730300        mov eax,[0x37300]
00022A41  890424            mov [esp],eax
00022A44  E893FDFFFF        call 0x227dc
00022A49  8B45F8            mov eax,[ebp-0x8]
00022A4C  2D30070000        sub eax,0x730
00022A51  83F84F            cmp eax,byte +0x4f
00022A54  7705              ja 0x22a5b
00022A56  E8E0FDFFFF        call 0x2283b
00022A5B  83C424            add esp,byte +0x24
00022A5E  5B                pop ebx
00022A5F  5D                pop ebp
00022A60  C3                ret
00022A61  90                nop
00022A62  90                nop
00022A63  90                nop
00022A64  55                push ebp
00022A65  89E5              mov ebp,esp
00022A67  83EC18            sub esp,byte +0x18
00022A6A  C7442404A8000000  mov dword [esp+0x4],0xa8
00022A72  C7042464000000    mov dword [esp],0x64
00022A79  E832EDFFFF        call 0x217b0
00022A7E  C744240420000000  mov dword [esp+0x4],0x20
00022A86  C7042464000000    mov dword [esp],0x64
00022A8D  E81EEDFFFF        call 0x217b0
00022A92  C7042460000000    mov dword [esp],0x60
00022A99  E824EDFFFF        call 0x217c2
00022A9E  83C802            or eax,byte +0x2
00022AA1  0FB6C0            movzx eax,al
00022AA4  8945FC            mov [ebp-0x4],eax
00022AA7  C744240460000000  mov dword [esp+0x4],0x60
00022AAF  C7042464000000    mov dword [esp],0x64
00022AB6  E8F5ECFFFF        call 0x217b0
00022ABB  8B45FC            mov eax,[ebp-0x4]
00022ABE  0FB6C0            movzx eax,al
00022AC1  89442404          mov [esp+0x4],eax
00022AC5  C7042460000000    mov dword [esp],0x60
00022ACC  E8DFECFFFF        call 0x217b0
00022AD1  C7442404D4000000  mov dword [esp+0x4],0xd4
00022AD9  C7042464000000    mov dword [esp],0x64
00022AE0  E8CBECFFFF        call 0x217b0
00022AE5  C7442404F6000000  mov dword [esp+0x4],0xf6
00022AED  C7042460000000    mov dword [esp],0x60
00022AF4  E8B7ECFFFF        call 0x217b0
00022AF9  C7042460000000    mov dword [esp],0x60
00022B00  E8BDECFFFF        call 0x217c2
00022B05  C7442404D4000000  mov dword [esp+0x4],0xd4
00022B0D  C7042464000000    mov dword [esp],0x64
00022B14  E897ECFFFF        call 0x217b0
00022B19  C7442404F4000000  mov dword [esp+0x4],0xf4
00022B21  C7042460000000    mov dword [esp],0x60
00022B28  E883ECFFFF        call 0x217b0
00022B2D  C7042460000000    mov dword [esp],0x60
00022B34  E889ECFFFF        call 0x217c2
00022B39  C704240C000000    mov dword [esp],0xc
00022B40  E831EBFFFF        call 0x21676
00022B45  C9                leave
00022B46  C3                ret
00022B47  55                push ebp
00022B48  89E5              mov ebp,esp
00022B4A  83EC18            sub esp,byte +0x18
00022B4D  C7042460000000    mov dword [esp],0x60
00022B54  E869ECFFFF        call 0x217c2
00022B59  8845FF            mov [ebp-0x1],al
00022B5C  0FB605C0420200    movzx eax,byte [0x242c0]
00022B63  83E801            sub eax,byte +0x1
00022B66  A2C0420200        mov [0x242c0],al
00022B6B  0FB605C0420200    movzx eax,byte [0x242c0]
00022B72  3CFF              cmp al,0xff
00022B74  0F848C000000      jz near 0x22c06
00022B7A  0FB605C0420200    movzx eax,byte [0x242c0]
00022B81  0FB6C0            movzx eax,al
00022B84  8945EC            mov [ebp-0x14],eax
00022B87  837DEC01          cmp dword [ebp-0x14],byte +0x1
00022B8B  744F              jz 0x22bdc
00022B8D  837DEC02          cmp dword [ebp-0x14],byte +0x2
00022B91  745F              jz 0x22bf2
00022B93  837DEC00          cmp dword [ebp-0x14],byte +0x0
00022B97  7402              jz 0x22b9b
00022B99  EB6B              jmp short 0x22c06
00022B9B  0FB605C0420200    movzx eax,byte [0x242c0]
00022BA2  0FB6D0            movzx edx,al
00022BA5  0FB645FF          movzx eax,byte [ebp-0x1]
00022BA9  888260FB0300      mov [edx+0x3fb60],al
00022BAF  0FB60561FB0300    movzx eax,byte [0x3fb61]
00022BB6  A2E67A0200        mov [0x27ae6],al
00022BBB  0FB60560FB0300    movzx eax,byte [0x3fb60]
00022BC2  A2E57D0300        mov [0x37de5],al
00022BC7  0FB60562FB0300    movzx eax,byte [0x3fb62]
00022BCE  A2E47D0300        mov [0x37de4],al
00022BD3  C605C042020003    mov byte [0x242c0],0x3
00022BDA  EB2A              jmp short 0x22c06
00022BDC  0FB605C0420200    movzx eax,byte [0x242c0]
00022BE3  0FB6D0            movzx edx,al
00022BE6  0FB645FF          movzx eax,byte [ebp-0x1]
00022BEA  888260FB0300      mov [edx+0x3fb60],al
00022BF0  EB14              jmp short 0x22c06
00022BF2  0FB605C0420200    movzx eax,byte [0x242c0]
00022BF9  0FB6D0            movzx edx,al
00022BFC  0FB645FF          movzx eax,byte [ebp-0x1]
00022C00  888260FB0300      mov [edx+0x3fb60],al
00022C06  C704240C000000    mov dword [esp],0xc
00022C0D  E868EBFFFF        call 0x2177a
00022C12  C9                leave
00022C13  C3                ret
00022C14  90                nop
00022C15  90                nop
00022C16  90                nop
00022C17  90                nop
00022C18  90                nop
00022C19  90                nop
00022C1A  90                nop
00022C1B  90                nop
00022C1C  90                nop
00022C1D  90                nop
00022C1E  90                nop
00022C1F  90                nop
00022C20  0F20E0            mov eax,cr4
00022C23  0D01000000        or eax,0x1
00022C28  0F22E0            mov cr4,eax
00022C2B  B902020200        mov ecx,0x20202
00022C30  B88C2C0200        mov eax,0x22c8c
00022C35  89C3              mov ebx,eax
00022C37  C1EB04            shr ebx,0x4
00022C3A  250F000000        and eax,0xf
00022C3F  51                push ecx
00022C40  53                push ebx
00022C41  50                push eax
00022C42  CF                iret
00022C43  0F20E0            mov eax,cr4
00022C46  0D01000000        or eax,0x1
00022C4B  0F22E0            mov cr4,eax
00022C4E  B902020200        mov ecx,0x20202
00022C53  B86F2C0200        mov eax,0x22c6f
00022C58  89C3              mov ebx,eax
00022C5A  C1EB04            shr ebx,0x4
00022C5D  250F000000        and eax,0xf
00022C62  51                push ecx
00022C63  53                push ebx
00022C64  50                push eax
00022C65  CF                iret
00022C66  66B81000          mov ax,0x10
00022C6A  8ED8              mov ds,ax
00022C6C  8EC0              mov es,ax
00022C6E  C3                ret
00022C6F  8CC8              mov eax,cs
00022C71  8ED8              mov ds,ax
00022C73  B820108EE0        mov eax,0xe08e1020
00022C78  B400              mov ah,0x0
00022C7A  B003              mov al,0x3
00022C7C  CD10              int 0x10
00022C7E  EBFE              jmp short 0x22c7e
00022C80  3333              xor esi,[ebx]
00022C82  3333              xor esi,[ebx]
00022C84  B40B              mov ah,0xb
00022C86  B700              mov bh,0x0
00022C88  B304              mov bl,0x4
00022C8A  CD10              int 0x10
00022C8C  8CC8              mov eax,cs
00022C8E  8ED8              mov ds,ax
00022C90  8ED0              mov ss,ax
00022C92  8EE8              mov gs,ax
00022C94  8EE0              mov fs,ax
00022C96  B800A08EC0        mov eax,0xc08ea000
00022C9B  BC0020B400        mov esp,0xb42000
00022CA0  B013              mov al,0x13
00022CA2  CD10              int 0x10
00022CA4  B410              mov ah,0x10
00022CA6  B003              mov al,0x3
00022CA8  B300              mov bl,0x0
00022CAA  B704              mov bh,0x4
00022CAC  CD10              int 0x10
00022CAE  EBFE              jmp short 0x22cae
00022CB0  55                push ebp
00022CB1  89E5              mov ebp,esp
00022CB3  83EC10            sub esp,byte +0x10
00022CB6  8B4508            mov eax,[ebp+0x8]
00022CB9  83E00F            and eax,byte +0xf
00022CBC  668945FE          mov [ebp-0x2],ax
00022CC0  8B4508            mov eax,[ebp+0x8]
00022CC3  83E0F0            and eax,byte -0x10
00022CC6  C1E804            shr eax,0x4
00022CC9  668945FC          mov [ebp-0x4],ax
00022CCD  0FB745FC          movzx eax,word [ebp-0x4]
00022CD1  89C2              mov edx,eax
00022CD3  C1E204            shl edx,0x4
00022CD6  0FB745FE          movzx eax,word [ebp-0x2]
00022CDA  8D0402            lea eax,[edx+eax]
00022CDD  C9                leave
00022CDE  C3                ret
00022CDF  55                push ebp
00022CE0  89E5              mov ebp,esp
00022CE2  5D                pop ebp
00022CE3  C3                ret
00022CE4  55                push ebp
00022CE5  89E5              mov ebp,esp
00022CE7  5D                pop ebp
00022CE8  C3                ret
00022CE9  55                push ebp
00022CEA  89E5              mov ebp,esp
00022CEC  83EC28            sub esp,byte +0x28
00022CEF  8D4508            lea eax,[ebp+0x8]
00022CF2  8945E8            mov [ebp-0x18],eax
00022CF5  C745FC00000000    mov dword [ebp-0x4],0x0
00022CFC  8B45E8            mov eax,[ebp-0x18]
00022CFF  83C008            add eax,byte +0x8
00022D02  8B00              mov eax,[eax]
00022D04  89C2              mov edx,eax
00022D06  C1E204            shl edx,0x4
00022D09  8B45E8            mov eax,[ebp-0x18]
00022D0C  83C004            add eax,byte +0x4
00022D0F  8B00              mov eax,[eax]
00022D11  0FB7C0            movzx eax,ax
00022D14  8D0402            lea eax,[edx+eax]
00022D17  8945EC            mov [ebp-0x14],eax
00022D1A  8B45E8            mov eax,[ebp-0x18]
00022D1D  83C014            add eax,byte +0x14
00022D20  8B00              mov eax,[eax]
00022D22  89C2              mov edx,eax
00022D24  C1E204            shl edx,0x4
00022D27  8B45E8            mov eax,[ebp-0x18]
00022D2A  83C010            add eax,byte +0x10
00022D2D  8B00              mov eax,[eax]
00022D2F  0FB7C0            movzx eax,ax
00022D32  8D0402            lea eax,[edx+eax]
00022D35  8945F0            mov [ebp-0x10],eax
00022D38  8B45F0            mov eax,[ebp-0x10]
00022D3B  8945F8            mov [ebp-0x8],eax
00022D3E  8B45EC            mov eax,[ebp-0x14]
00022D41  8B00              mov eax,[eax]
00022D43  0FB6C0            movzx eax,al
00022D46  3DCD000000        cmp eax,0xcd
00022D4B  7405              jz 0x22d52
00022D4D  E9BA000000        jmp 0x22e0c
00022D52  C70424C8370200    mov dword [esp],0x237c8
00022D59  E878EAFFFF        call 0x217d6
00022D5E  C70424CC370200    mov dword [esp],0x237cc
00022D65  E86CEAFFFF        call 0x217d6
00022D6A  8B55E8            mov edx,[ebp-0x18]
00022D6D  83C210            add edx,byte +0x10
00022D70  8B45E8            mov eax,[ebp-0x18]
00022D73  83C010            add eax,byte +0x10
00022D76  8B00              mov eax,[eax]
00022D78  83E806            sub eax,byte +0x6
00022D7B  25FFFF0000        and eax,0xffff
00022D80  8902              mov [edx],eax
00022D82  836DF806          sub dword [ebp-0x8],byte +0x6
00022D86  8B45E8            mov eax,[ebp-0x18]
00022D89  8B00              mov eax,[eax]
00022D8B  8D5002            lea edx,[eax+0x2]
00022D8E  8B45F8            mov eax,[ebp-0x8]
00022D91  668910            mov [eax],dx
00022D94  8B55F8            mov edx,[ebp-0x8]
00022D97  83C202            add edx,byte +0x2
00022D9A  8B45E8            mov eax,[ebp-0x18]
00022D9D  83C004            add eax,byte +0x4
00022DA0  8B00              mov eax,[eax]
00022DA2  668902            mov [edx],ax
00022DA5  8B55F8            mov edx,[ebp-0x8]
00022DA8  83C204            add edx,byte +0x4
00022DAB  8B45E8            mov eax,[ebp-0x18]
00022DAE  83C008            add eax,byte +0x8
00022DB1  8B00              mov eax,[eax]
00022DB3  668902            mov [edx],ax
00022DB6  8B45EC            mov eax,[ebp-0x14]
00022DB9  8945E4            mov [ebp-0x1c],eax
00022DBC  8B4DE8            mov ecx,[ebp-0x18]
00022DBF  83C108            add ecx,byte +0x8
00022DC2  8B55FC            mov edx,[ebp-0x4]
00022DC5  83C202            add edx,byte +0x2
00022DC8  8B45E4            mov eax,[ebp-0x1c]
00022DCB  83C001            add eax,byte +0x1
00022DCE  0FB600            movzx eax,byte [eax]
00022DD1  0FB6C0            movzx eax,al
00022DD4  C1E002            shl eax,0x2
00022DD7  8D0402            lea eax,[edx+eax]
00022DDA  0FB700            movzx eax,word [eax]
00022DDD  0FB7C0            movzx eax,ax
00022DE0  8901              mov [ecx],eax
00022DE2  8B55E8            mov edx,[ebp-0x18]
00022DE5  83C204            add edx,byte +0x4
00022DE8  8B45E4            mov eax,[ebp-0x1c]
00022DEB  83C001            add eax,byte +0x1
00022DEE  0FB600            movzx eax,byte [eax]
00022DF1  0FB6C0            movzx eax,al
00022DF4  C1E002            shl eax,0x2
00022DF7  0345FC            add eax,[ebp-0x4]
00022DFA  0FB700            movzx eax,word [eax]
00022DFD  0FB7C0            movzx eax,ax
00022E00  8902              mov [edx],eax
00022E02  B801000000        mov eax,0x1
00022E07  8945DC            mov [ebp-0x24],eax
00022E0A  EB02              jmp short 0x22e0e
00022E0C  EB03              jmp short 0x22e11
00022E0E  8B45DC            mov eax,[ebp-0x24]
00022E11  C9                leave
00022E12  C3                ret
00022E13  90                nop
00022E14  90                nop
00022E15  90                nop
00022E16  90                nop
00022E17  90                nop
00022E18  90                nop
00022E19  90                nop
00022E1A  90                nop
00022E1B  90                nop
00022E1C  90                nop
00022E1D  90                nop
00022E1E  90                nop
00022E1F  90                nop
00022E20  55                push ebp
00022E21  89E5              mov ebp,esp
00022E23  BE00000A00        mov esi,0xa0000
00022E28  8B5C2408          mov ebx,[esp+0x8]
00022E2C  668B44240C        mov ax,[esp+0xc]
00022E31  66B94001          mov cx,0x140
00022E35  66F7E1            mul cx
00022E38  01C6              add esi,eax
00022E3A  01DE              add esi,ebx
00022E3C  8A4C2410          mov cl,[esp+0x10]
00022E40  880E              mov [esi],cl
00022E42  5D                pop ebp
00022E43  C3                ret
00022E44  55                push ebp
00022E45  89E5              mov ebp,esp
00022E47  BE00000A00        mov esi,0xa0000
00022E4C  8B5C2408          mov ebx,[esp+0x8]
00022E50  668B44240C        mov ax,[esp+0xc]
00022E55  66B94001          mov cx,0x140
00022E59  66F7E1            mul cx
00022E5C  01C6              add esi,eax
00022E5E  01DE              add esi,ebx
00022E60  66C7060000        mov word [esi],0x0
00022E65  5D                pop ebp
00022E66  C3                ret
00022E67  90                nop
00022E68  55                push ebp
00022E69  89E5              mov ebp,esp
00022E6B  83EC04            sub esp,byte +0x4
00022E6E  837D0800          cmp dword [ebp+0x8],byte +0x0
00022E72  7818              js 0x22e8c
00022E74  837D0C00          cmp dword [ebp+0xc],byte +0x0
00022E78  7812              js 0x22e8c
00022E7A  817D0840010000    cmp dword [ebp+0x8],0x140
00022E81  7F09              jg 0x22e8c
00022E83  817D0CC8000000    cmp dword [ebp+0xc],0xc8
00022E8A  7E09              jng 0x22e95
00022E8C  C745FC00000000    mov dword [ebp-0x4],0x0
00022E93  EB07              jmp short 0x22e9c
00022E95  C745FC01000000    mov dword [ebp-0x4],0x1
00022E9C  8B45FC            mov eax,[ebp-0x4]
00022E9F  C9                leave
00022EA0  C3                ret
00022EA1  55                push ebp
00022EA2  89E5              mov ebp,esp
00022EA4  83EC18            sub esp,byte +0x18
00022EA7  8B450C            mov eax,[ebp+0xc]
00022EAA  89442404          mov [esp+0x4],eax
00022EAE  8B4508            mov eax,[ebp+0x8]
00022EB1  890424            mov [esp],eax
00022EB4  E8AFFFFFFF        call 0x22e68
00022EB9  85C0              test eax,eax
00022EBB  7419              jz 0x22ed6
00022EBD  8B4510            mov eax,[ebp+0x10]
00022EC0  89442408          mov [esp+0x8],eax
00022EC4  8B450C            mov eax,[ebp+0xc]
00022EC7  89442404          mov [esp+0x4],eax
00022ECB  8B4508            mov eax,[ebp+0x8]
00022ECE  890424            mov [esp],eax
00022ED1  E84AFFFFFF        call 0x22e20
00022ED6  C9                leave
00022ED7  C3                ret
00022ED8  55                push ebp
00022ED9  89E5              mov ebp,esp
00022EDB  53                push ebx
00022EDC  83EC44            sub esp,byte +0x44
00022EDF  C745F000000000    mov dword [ebp-0x10],0x0
00022EE6  C745F400000000    mov dword [ebp-0xc],0x0
00022EED  8B4508            mov eax,[ebp+0x8]
00022EF0  3B4510            cmp eax,[ebp+0x10]
00022EF3  7E26              jng 0x22f1b
00022EF5  8B4508            mov eax,[ebp+0x8]
00022EF8  8945F8            mov [ebp-0x8],eax
00022EFB  8B4510            mov eax,[ebp+0x10]
00022EFE  894508            mov [ebp+0x8],eax
00022F01  8B45F8            mov eax,[ebp-0x8]
00022F04  894510            mov [ebp+0x10],eax
00022F07  8B450C            mov eax,[ebp+0xc]
00022F0A  8945F8            mov [ebp-0x8],eax
00022F0D  8B4514            mov eax,[ebp+0x14]
00022F10  89450C            mov [ebp+0xc],eax
00022F13  8B45F8            mov eax,[ebp-0x8]
00022F16  894514            mov [ebp+0x14],eax
00022F19  EB50              jmp short 0x22f6b
00022F1B  8B4508            mov eax,[ebp+0x8]
00022F1E  3B4510            cmp eax,[ebp+0x10]
00022F21  7548              jnz 0x22f6b
00022F23  8B450C            mov eax,[ebp+0xc]
00022F26  3B4514            cmp eax,[ebp+0x14]
00022F29  7D08              jnl 0x22f33
00022F2B  8B450C            mov eax,[ebp+0xc]
00022F2E  8945D8            mov [ebp-0x28],eax
00022F31  EB2B              jmp short 0x22f5e
00022F33  8B4514            mov eax,[ebp+0x14]
00022F36  8945D8            mov [ebp-0x28],eax
00022F39  8B450C            mov eax,[ebp+0xc]
00022F3C  894514            mov [ebp+0x14],eax
00022F3F  EB1D              jmp short 0x22f5e
00022F41  8B4518            mov eax,[ebp+0x18]
00022F44  89442408          mov [esp+0x8],eax
00022F48  8B45D8            mov eax,[ebp-0x28]
00022F4B  89442404          mov [esp+0x4],eax
00022F4F  8B4508            mov eax,[ebp+0x8]
00022F52  890424            mov [esp],eax
00022F55  E847FFFFFF        call 0x22ea1
00022F5A  8345D801          add dword [ebp-0x28],byte +0x1
00022F5E  8B45D8            mov eax,[ebp-0x28]
00022F61  3B4514            cmp eax,[ebp+0x14]
00022F64  7CDB              jl 0x22f41
00022F66  E9BC010000        jmp 0x23127
00022F6B  8B5510            mov edx,[ebp+0x10]
00022F6E  8B4508            mov eax,[ebp+0x8]
00022F71  29D0              sub eax,edx
00022F73  890424            mov [esp],eax
00022F76  E87BE9FFFF        call 0x218f6
00022F7B  89C3              mov ebx,eax
00022F7D  8B5514            mov edx,[ebp+0x14]
00022F80  8B450C            mov eax,[ebp+0xc]
00022F83  29D0              sub eax,edx
00022F85  890424            mov [esp],eax
00022F88  E869E9FFFF        call 0x218f6
00022F8D  39C3              cmp ebx,eax
00022F8F  7D07              jnl 0x22f98
00022F91  C745F401000000    mov dword [ebp-0xc],0x1
00022F98  8B450C            mov eax,[ebp+0xc]
00022F9B  3B4514            cmp eax,[ebp+0x14]
00022F9E  7E07              jng 0x22fa7
00022FA0  C745F001000000    mov dword [ebp-0x10],0x1
00022FA7  8B4508            mov eax,[ebp+0x8]
00022FAA  8945DC            mov [ebp-0x24],eax
00022FAD  8B450C            mov eax,[ebp+0xc]
00022FB0  8945E0            mov [ebp-0x20],eax
00022FB3  8B4518            mov eax,[ebp+0x18]
00022FB6  89442408          mov [esp+0x8],eax
00022FBA  8B45E0            mov eax,[ebp-0x20]
00022FBD  89442404          mov [esp+0x4],eax
00022FC1  8B45DC            mov eax,[ebp-0x24]
00022FC4  890424            mov [esp],eax
00022FC7  E8D5FEFFFF        call 0x22ea1
00022FCC  837DF400          cmp dword [ebp-0xc],byte +0x0
00022FD0  0F85A3000000      jnz near 0x23079
00022FD6  837DF000          cmp dword [ebp-0x10],byte +0x0
00022FDA  7511              jnz 0x22fed
00022FDC  8B4514            mov eax,[ebp+0x14]
00022FDF  8B550C            mov edx,[ebp+0xc]
00022FE2  89D1              mov ecx,edx
00022FE4  29C1              sub ecx,eax
00022FE6  89C8              mov eax,ecx
00022FE8  8945D4            mov [ebp-0x2c],eax
00022FEB  EB0F              jmp short 0x22ffc
00022FED  8B450C            mov eax,[ebp+0xc]
00022FF0  8B5514            mov edx,[ebp+0x14]
00022FF3  89D1              mov ecx,edx
00022FF5  29C1              sub ecx,eax
00022FF7  89C8              mov eax,ecx
00022FF9  8945D4            mov [ebp-0x2c],eax
00022FFC  8B5508            mov edx,[ebp+0x8]
00022FFF  8B4510            mov eax,[ebp+0x10]
00023002  29D0              sub eax,edx
00023004  8945D8            mov [ebp-0x28],eax
00023007  8B45D4            mov eax,[ebp-0x2c]
0002300A  01C0              add eax,eax
0002300C  0345D8            add eax,[ebp-0x28]
0002300F  8945E4            mov [ebp-0x1c],eax
00023012  8B45D4            mov eax,[ebp-0x2c]
00023015  01C0              add eax,eax
00023017  8945E8            mov [ebp-0x18],eax
0002301A  8B45D8            mov eax,[ebp-0x28]
0002301D  0345D4            add eax,[ebp-0x2c]
00023020  01C0              add eax,eax
00023022  8945EC            mov [ebp-0x14],eax
00023025  EB45              jmp short 0x2306c
00023027  837DE400          cmp dword [ebp-0x1c],byte +0x0
0002302B  791C              jns 0x23049
0002302D  8345DC01          add dword [ebp-0x24],byte +0x1
00023031  837DF000          cmp dword [ebp-0x10],byte +0x0
00023035  7506              jnz 0x2303d
00023037  8345E001          add dword [ebp-0x20],byte +0x1
0002303B  EB04              jmp short 0x23041
0002303D  836DE001          sub dword [ebp-0x20],byte +0x1
00023041  8B45EC            mov eax,[ebp-0x14]
00023044  0145E4            add [ebp-0x1c],eax
00023047  EB0A              jmp short 0x23053
00023049  8345DC01          add dword [ebp-0x24],byte +0x1
0002304D  8B45E8            mov eax,[ebp-0x18]
00023050  0145E4            add [ebp-0x1c],eax
00023053  8B4518            mov eax,[ebp+0x18]
00023056  89442408          mov [esp+0x8],eax
0002305A  8B45E0            mov eax,[ebp-0x20]
0002305D  89442404          mov [esp+0x4],eax
00023061  8B45DC            mov eax,[ebp-0x24]
00023064  890424            mov [esp],eax
00023067  E835FEFFFF        call 0x22ea1
0002306C  8B45DC            mov eax,[ebp-0x24]
0002306F  3B4510            cmp eax,[ebp+0x10]
00023072  7CB3              jl 0x23027
00023074  E9AE000000        jmp 0x23127
00023079  8B4510            mov eax,[ebp+0x10]
0002307C  8B5508            mov edx,[ebp+0x8]
0002307F  89D1              mov ecx,edx
00023081  29C1              sub ecx,eax
00023083  89C8              mov eax,ecx
00023085  8945D4            mov [ebp-0x2c],eax
00023088  837DF000          cmp dword [ebp-0x10],byte +0x0
0002308C  7511              jnz 0x2309f
0002308E  8B450C            mov eax,[ebp+0xc]
00023091  8B5514            mov edx,[ebp+0x14]
00023094  89D1              mov ecx,edx
00023096  29C1              sub ecx,eax
00023098  89C8              mov eax,ecx
0002309A  8945D8            mov [ebp-0x28],eax
0002309D  EB0F              jmp short 0x230ae
0002309F  8B4514            mov eax,[ebp+0x14]
000230A2  8B550C            mov edx,[ebp+0xc]
000230A5  89D1              mov ecx,edx
000230A7  29C1              sub ecx,eax
000230A9  89C8              mov eax,ecx
000230AB  8945D8            mov [ebp-0x28],eax
000230AE  8B45D4            mov eax,[ebp-0x2c]
000230B1  01C0              add eax,eax
000230B3  0345D8            add eax,[ebp-0x28]
000230B6  8945E4            mov [ebp-0x1c],eax
000230B9  8B45D4            mov eax,[ebp-0x2c]
000230BC  01C0              add eax,eax
000230BE  8945E8            mov [ebp-0x18],eax
000230C1  8B45D8            mov eax,[ebp-0x28]
000230C4  0345D4            add eax,[ebp-0x2c]
000230C7  01C0              add eax,eax
000230C9  8945EC            mov [ebp-0x14],eax
000230CC  EB51              jmp short 0x2311f
000230CE  837DE400          cmp dword [ebp-0x1c],byte +0x0
000230D2  791C              jns 0x230f0
000230D4  8345DC01          add dword [ebp-0x24],byte +0x1
000230D8  837DF000          cmp dword [ebp-0x10],byte +0x0
000230DC  7506              jnz 0x230e4
000230DE  8345E001          add dword [ebp-0x20],byte +0x1
000230E2  EB04              jmp short 0x230e8
000230E4  836DE001          sub dword [ebp-0x20],byte +0x1
000230E8  8B45EC            mov eax,[ebp-0x14]
000230EB  0145E4            add [ebp-0x1c],eax
000230EE  EB16              jmp short 0x23106
000230F0  837DF000          cmp dword [ebp-0x10],byte +0x0
000230F4  7506              jnz 0x230fc
000230F6  8345E001          add dword [ebp-0x20],byte +0x1
000230FA  EB04              jmp short 0x23100
000230FC  836DE001          sub dword [ebp-0x20],byte +0x1
00023100  8B45E8            mov eax,[ebp-0x18]
00023103  0145E4            add [ebp-0x1c],eax
00023106  8B4518            mov eax,[ebp+0x18]
00023109  89442408          mov [esp+0x8],eax
0002310D  8B45E0            mov eax,[ebp-0x20]
00023110  89442404          mov [esp+0x4],eax
00023114  8B45DC            mov eax,[ebp-0x24]
00023117  890424            mov [esp],eax
0002311A  E882FDFFFF        call 0x22ea1
0002311F  8B45DC            mov eax,[ebp-0x24]
00023122  3B4510            cmp eax,[ebp+0x10]
00023125  7CA7              jl 0x230ce
00023127  83C444            add esp,byte +0x44
0002312A  5B                pop ebx
0002312B  5D                pop ebp
0002312C  C3                ret
0002312D  55                push ebp
0002312E  89E5              mov ebp,esp
00023130  53                push ebx
00023131  83EC14            sub esp,byte +0x14
00023134  8B4514            mov eax,[ebp+0x14]
00023137  8B550C            mov edx,[ebp+0xc]
0002313A  01C2              add edx,eax
0002313C  8B4518            mov eax,[ebp+0x18]
0002313F  89442410          mov [esp+0x10],eax
00023143  8954240C          mov [esp+0xc],edx
00023147  8B4508            mov eax,[ebp+0x8]
0002314A  89442408          mov [esp+0x8],eax
0002314E  8B450C            mov eax,[ebp+0xc]
00023151  89442404          mov [esp+0x4],eax
00023155  8B4508            mov eax,[ebp+0x8]
00023158  890424            mov [esp],eax
0002315B  E878FDFFFF        call 0x22ed8
00023160  8B4510            mov eax,[ebp+0x10]
00023163  8B5508            mov edx,[ebp+0x8]
00023166  01C2              add edx,eax
00023168  8B4518            mov eax,[ebp+0x18]
0002316B  89442410          mov [esp+0x10],eax
0002316F  8B450C            mov eax,[ebp+0xc]
00023172  8944240C          mov [esp+0xc],eax
00023176  89542408          mov [esp+0x8],edx
0002317A  8B450C            mov eax,[ebp+0xc]
0002317D  89442404          mov [esp+0x4],eax
00023181  8B4508            mov eax,[ebp+0x8]
00023184  890424            mov [esp],eax
00023187  E84CFDFFFF        call 0x22ed8
0002318C  8B4514            mov eax,[ebp+0x14]
0002318F  8B4D0C            mov ecx,[ebp+0xc]
00023192  01C1              add ecx,eax
00023194  8B4510            mov eax,[ebp+0x10]
00023197  8B5D08            mov ebx,[ebp+0x8]
0002319A  01C3              add ebx,eax
0002319C  8B4514            mov eax,[ebp+0x14]
0002319F  8B550C            mov edx,[ebp+0xc]
000231A2  01C2              add edx,eax
000231A4  8B4518            mov eax,[ebp+0x18]
000231A7  89442410          mov [esp+0x10],eax
000231AB  894C240C          mov [esp+0xc],ecx
000231AF  895C2408          mov [esp+0x8],ebx
000231B3  89542404          mov [esp+0x4],edx
000231B7  8B4508            mov eax,[ebp+0x8]
000231BA  890424            mov [esp],eax
000231BD  E816FDFFFF        call 0x22ed8
000231C2  8B4514            mov eax,[ebp+0x14]
000231C5  8B550C            mov edx,[ebp+0xc]
000231C8  01C2              add edx,eax
000231CA  8B4510            mov eax,[ebp+0x10]
000231CD  8B4D08            mov ecx,[ebp+0x8]
000231D0  01C1              add ecx,eax
000231D2  8B4510            mov eax,[ebp+0x10]
000231D5  8B5D08            mov ebx,[ebp+0x8]
000231D8  01C3              add ebx,eax
000231DA  8B4518            mov eax,[ebp+0x18]
000231DD  89442410          mov [esp+0x10],eax
000231E1  8954240C          mov [esp+0xc],edx
000231E5  894C2408          mov [esp+0x8],ecx
000231E9  8B450C            mov eax,[ebp+0xc]
000231EC  89442404          mov [esp+0x4],eax
000231F0  891C24            mov [esp],ebx
000231F3  E8E0FCFFFF        call 0x22ed8
000231F8  83C414            add esp,byte +0x14
000231FB  5B                pop ebx
000231FC  5D                pop ebp
000231FD  C3                ret
000231FE  55                push ebp
000231FF  89E5              mov ebp,esp
00023201  5D                pop ebp
00023202  C3                ret
00023203  55                push ebp
00023204  89E5              mov ebp,esp
00023206  83EC18            sub esp,byte +0x18
00023209  8B4520            mov eax,[ebp+0x20]
0002320C  89442410          mov [esp+0x10],eax
00023210  8B4514            mov eax,[ebp+0x14]
00023213  8944240C          mov [esp+0xc],eax
00023217  8B4510            mov eax,[ebp+0x10]
0002321A  89442408          mov [esp+0x8],eax
0002321E  8B450C            mov eax,[ebp+0xc]
00023221  89442404          mov [esp+0x4],eax
00023225  8B4508            mov eax,[ebp+0x8]
00023228  890424            mov [esp],eax
0002322B  E8A8FCFFFF        call 0x22ed8
00023230  8B4520            mov eax,[ebp+0x20]
00023233  89442410          mov [esp+0x10],eax
00023237  8B451C            mov eax,[ebp+0x1c]
0002323A  8944240C          mov [esp+0xc],eax
0002323E  8B4518            mov eax,[ebp+0x18]
00023241  89442408          mov [esp+0x8],eax
00023245  8B450C            mov eax,[ebp+0xc]
00023248  89442404          mov [esp+0x4],eax
0002324C  8B4508            mov eax,[ebp+0x8]
0002324F  890424            mov [esp],eax
00023252  E881FCFFFF        call 0x22ed8
00023257  8B4520            mov eax,[ebp+0x20]
0002325A  89442410          mov [esp+0x10],eax
0002325E  8B451C            mov eax,[ebp+0x1c]
00023261  8944240C          mov [esp+0xc],eax
00023265  8B4518            mov eax,[ebp+0x18]
00023268  89442408          mov [esp+0x8],eax
0002326C  8B4514            mov eax,[ebp+0x14]
0002326F  89442404          mov [esp+0x4],eax
00023273  8B4510            mov eax,[ebp+0x10]
00023276  890424            mov [esp],eax
00023279  E85AFCFFFF        call 0x22ed8
0002327E  C9                leave
0002327F  C3                ret
00023280  55                push ebp
00023281  89E5              mov ebp,esp
00023283  53                push ebx
00023284  83EC14            sub esp,byte +0x14
00023287  8B4514            mov eax,[ebp+0x14]
0002328A  8B4D0C            mov ecx,[ebp+0xc]
0002328D  01C1              add ecx,eax
0002328F  8B5508            mov edx,[ebp+0x8]
00023292  8B4510            mov eax,[ebp+0x10]
00023295  89C3              mov ebx,eax
00023297  29D3              sub ebx,edx
00023299  89DA              mov edx,ebx
0002329B  8B4518            mov eax,[ebp+0x18]
0002329E  89442408          mov [esp+0x8],eax
000232A2  894C2404          mov [esp+0x4],ecx
000232A6  891424            mov [esp],edx
000232A9  E8F3FBFFFF        call 0x22ea1
000232AE  8B4514            mov eax,[ebp+0x14]
000232B1  8B550C            mov edx,[ebp+0xc]
000232B4  01C2              add edx,eax
000232B6  8B4510            mov eax,[ebp+0x10]
000232B9  8B4D08            mov ecx,[ebp+0x8]
000232BC  01C1              add ecx,eax
000232BE  8B4518            mov eax,[ebp+0x18]
000232C1  89442408          mov [esp+0x8],eax
000232C5  89542404          mov [esp+0x4],edx
000232C9  890C24            mov [esp],ecx
000232CC  E8D0FBFFFF        call 0x22ea1
000232D1  8B550C            mov edx,[ebp+0xc]
000232D4  8B4514            mov eax,[ebp+0x14]
000232D7  89C1              mov ecx,eax
000232D9  29D1              sub ecx,edx
000232DB  89CA              mov edx,ecx
000232DD  8B4510            mov eax,[ebp+0x10]
000232E0  8B4D08            mov ecx,[ebp+0x8]
000232E3  01C1              add ecx,eax
000232E5  8B4518            mov eax,[ebp+0x18]
000232E8  89442408          mov [esp+0x8],eax
000232EC  89542404          mov [esp+0x4],edx
000232F0  890C24            mov [esp],ecx
000232F3  E8A9FBFFFF        call 0x22ea1
000232F8  8B550C            mov edx,[ebp+0xc]
000232FB  8B4514            mov eax,[ebp+0x14]
000232FE  89C1              mov ecx,eax
00023300  29D1              sub ecx,edx
00023302  8B5508            mov edx,[ebp+0x8]
00023305  8B4510            mov eax,[ebp+0x10]
00023308  89C3              mov ebx,eax
0002330A  29D3              sub ebx,edx
0002330C  89DA              mov edx,ebx
0002330E  8B4518            mov eax,[ebp+0x18]
00023311  89442408          mov [esp+0x8],eax
00023315  894C2404          mov [esp+0x4],ecx
00023319  891424            mov [esp],edx
0002331C  E880FBFFFF        call 0x22ea1
00023321  8B4514            mov eax,[ebp+0x14]
00023324  8B5508            mov edx,[ebp+0x8]
00023327  01C2              add edx,eax
00023329  8B4510            mov eax,[ebp+0x10]
0002332C  8B4D0C            mov ecx,[ebp+0xc]
0002332F  01C1              add ecx,eax
00023331  8B4518            mov eax,[ebp+0x18]
00023334  89442408          mov [esp+0x8],eax
00023338  89542404          mov [esp+0x4],edx
0002333C  890C24            mov [esp],ecx
0002333F  E85DFBFFFF        call 0x22ea1
00023344  8B5508            mov edx,[ebp+0x8]
00023347  8B4514            mov eax,[ebp+0x14]
0002334A  89C1              mov ecx,eax
0002334C  29D1              sub ecx,edx
0002334E  89CA              mov edx,ecx
00023350  8B4510            mov eax,[ebp+0x10]
00023353  8B4D0C            mov ecx,[ebp+0xc]
00023356  01C1              add ecx,eax
00023358  8B4518            mov eax,[ebp+0x18]
0002335B  89442408          mov [esp+0x8],eax
0002335F  89542404          mov [esp+0x4],edx
00023363  890C24            mov [esp],ecx
00023366  E836FBFFFF        call 0x22ea1
0002336B  8B4514            mov eax,[ebp+0x14]
0002336E  8B4D08            mov ecx,[ebp+0x8]
00023371  01C1              add ecx,eax
00023373  8B550C            mov edx,[ebp+0xc]
00023376  8B4510            mov eax,[ebp+0x10]
00023379  89C3              mov ebx,eax
0002337B  29D3              sub ebx,edx
0002337D  89DA              mov edx,ebx
0002337F  8B4518            mov eax,[ebp+0x18]
00023382  89442408          mov [esp+0x8],eax
00023386  894C2404          mov [esp+0x4],ecx
0002338A  891424            mov [esp],edx
0002338D  E80FFBFFFF        call 0x22ea1
00023392  8B5508            mov edx,[ebp+0x8]
00023395  8B4514            mov eax,[ebp+0x14]
00023398  89C1              mov ecx,eax
0002339A  29D1              sub ecx,edx
0002339C  8B550C            mov edx,[ebp+0xc]
0002339F  8B4510            mov eax,[ebp+0x10]
000233A2  89C3              mov ebx,eax
000233A4  29D3              sub ebx,edx
000233A6  89DA              mov edx,ebx
000233A8  8B4518            mov eax,[ebp+0x18]
000233AB  89442408          mov [esp+0x8],eax
000233AF  894C2404          mov [esp+0x4],ecx
000233B3  891424            mov [esp],edx
000233B6  E8E6FAFFFF        call 0x22ea1
000233BB  83C414            add esp,byte +0x14
000233BE  5B                pop ebx
000233BF  5D                pop ebp
000233C0  C3                ret
000233C1  55                push ebp
000233C2  89E5              mov ebp,esp
000233C4  83EC28            sub esp,byte +0x28
000233C7  C745F400000000    mov dword [ebp-0xc],0x0
000233CE  8B4510            mov eax,[ebp+0x10]
000233D1  8945F8            mov [ebp-0x8],eax
000233D4  B801000000        mov eax,0x1
000233D9  2B4510            sub eax,[ebp+0x10]
000233DC  8945FC            mov [ebp-0x4],eax
000233DF  EB52              jmp short 0x23433
000233E1  8B4514            mov eax,[ebp+0x14]
000233E4  89442410          mov [esp+0x10],eax
000233E8  8B450C            mov eax,[ebp+0xc]
000233EB  8944240C          mov [esp+0xc],eax
000233EF  8B4508            mov eax,[ebp+0x8]
000233F2  89442408          mov [esp+0x8],eax
000233F6  8B45F8            mov eax,[ebp-0x8]
000233F9  89442404          mov [esp+0x4],eax
000233FD  8B45F4            mov eax,[ebp-0xc]
00023400  890424            mov [esp],eax
00023403  E878FEFFFF        call 0x23280
00023408  837DFC00          cmp dword [ebp-0x4],byte +0x0
0002340C  790D              jns 0x2341b
0002340E  8B45F4            mov eax,[ebp-0xc]
00023411  01C0              add eax,eax
00023413  83C003            add eax,byte +0x3
00023416  0145FC            add [ebp-0x4],eax
00023419  EB14              jmp short 0x2342f
0002341B  8B55F8            mov edx,[ebp-0x8]
0002341E  8B45F4            mov eax,[ebp-0xc]
00023421  29D0              sub eax,edx
00023423  01C0              add eax,eax
00023425  83C005            add eax,byte +0x5
00023428  0145FC            add [ebp-0x4],eax
0002342B  836DF801          sub dword [ebp-0x8],byte +0x1
0002342F  8345F401          add dword [ebp-0xc],byte +0x1
00023433  8B45F4            mov eax,[ebp-0xc]
00023436  3B45F8            cmp eax,[ebp-0x8]
00023439  7EA6              jng 0x233e1
0002343B  C9                leave
0002343C  C3                ret
0002343D  90                nop
0002343E  90                nop
0002343F  90                nop
00023440  55                push ebp
00023441  89E5              mov ebp,esp
00023443  83EC08            sub esp,byte +0x8
00023446  E8EBCFFFFF        call 0x20436
0002344B  C9                leave
0002344C  C3                ret
0002344D  0000              add [eax],al
0002344F  00496E            add [ecx+0x6e],cl
00023452  697469616C697A69  imul esi,[ecx+ebp*2+0x61],dword 0x697a696c
0002345A  6E                outsb
0002345B  67204D65          and [di+0x65],cl
0002345F  6D                insd
00023460  6F                outsd
00023461  7279              jc 0x234dc
00023463  2E2E2E2E2E2E2E2E  or al,[cs:eax]
         -0A00
0002346D  45                inc ebp
0002346E  6E                outsb
0002346F  61                popa
00023470  626C6520          bound ebp,[ebp+0x20]
00023474  49                dec ecx
00023475  52                push edx
00023476  51                push ecx
00023477  2E2E2E2E2E2E2E2E  or al,[cs:eax]
         -0A00
00023481  45                inc ebp
00023482  6E                outsb
00023483  61                popa
00023484  626C6520          bound ebp,[ebp+0x20]
00023488  7072              jo 0x234fc
0002348A  6F                outsd
0002348B  7465              jz 0x234f2
0002348D  6374696F          arpl [ecx+ebp*2+0x6f],si
00023491  6E                outsb
00023492  2E2E2E2E2E2E2E2E  or al,[cs:eax]
         -0A00
0002349C  45                inc ebp
0002349D  6E                outsb
0002349E  61                popa
0002349F  626C6520          bound ebp,[ebp+0x20]
000234A3  4B                dec ebx
000234A4  657962            gs jns 0x23509
000234A7  6F                outsd
000234A8  61                popa
000234A9  7264              jc 0x2350f
000234AB  2E2E2E2E2E2E2E2E  or al,[cs:eax]
         -0A00
000234B5  49                dec ecx
000234B6  6E                outsb
000234B7  697469616C697A69  imul esi,[ecx+ebp*2+0x61],dword 0x697a696c
000234BF  6E                outsb
000234C0  67205072          and [bx+si+0x72],dl
000234C4  6F                outsd
000234C5  636573            arpl [ebp+0x73],sp
000234C8  732E              jnc 0x234f8
000234CA  2E2E2E2E2E2E2E0A  or al,[cs:eax]
         -00
000234D3  45                inc ebp
000234D4  6E                outsb
000234D5  61                popa
000234D6  626C6520          bound ebp,[ebp+0x20]
000234DA  50                push eax
000234DB  49                dec ecx
000234DC  54                push esp
000234DD  2E2E2E2E2E2E2E2E  or al,[cs:eax]
         -0A00
000234E7  0028              add [eax],ch
000234E9  002C00            add [eax+eax],ch
000234EC  2900              sub [eax],eax
000234EE  3A00              cmp al,[eax]
000234F0  2020              and [eax],ah
000234F2  005375            add [ebx+0x75],dl
000234F5  6E                outsb
000234F6  6461              fs popa
000234F8  7900              jns 0x234fa
000234FA  4D                dec ebp
000234FB  6F                outsd
000234FC  6E                outsb
000234FD  6461              fs popa
000234FF  7900              jns 0x23501
00023501  54                push esp
00023502  7565              jnz 0x23569
00023504  7364              jnc 0x2356a
00023506  61                popa
00023507  7900              jns 0x23509
00023509  57                push edi
0002350A  65646E            fs outsb
0002350D  657364            gs jnc 0x23574
00023510  61                popa
00023511  7900              jns 0x23513
00023513  54                push esp
00023514  6875727364        push dword 0x64737275
00023519  61                popa
0002351A  7900              jns 0x2351c
0002351C  46                inc esi
0002351D  7269              jc 0x23588
0002351F  6461              fs popa
00023521  7900              jns 0x23523
00023523  53                push ebx
00023524  61                popa
00023525  7475              jz 0x2359c
00023527  7264              jc 0x2358d
00023529  61                popa
0002352A  7900              jns 0x2352c
0002352C  2020              and [eax],ah
0002352E  3230              xor dh,[eax]
00023530  002E              add [esi],ch
00023532  0020              add [eax],ah
00023534  2020              and [eax],ah
00023536  2020              and [eax],ah
00023538  0000              add [eax],al
0002353A  0000              add [eax],al
0002353C  EC                in al,dx
0002353D  1402              adc al,0x2
0002353F  008C1402009A14    add [esp+edx+0x149a0002],cl
00023546  0200              add al,[eax]
00023548  A814              test al,0x14
0002354A  0200              add al,[eax]
0002354C  B614              mov dh,0x14
0002354E  0200              add al,[eax]
00023550  C41402            les edx,[edx+eax]
00023553  00D2              add dl,dl
00023555  1402              adc al,0x2
00023557  00E0              add al,ah
00023559  1402              adc al,0x2
0002355B  0020              add [eax],ah
0002355D  0000              add [eax],al
0002355F  000A              add [edx],cl
00023561  004E6F            add [esi+0x6f],cl
00023564  7720              ja 0x23586
00023566  69742069733A003A  imul esi,[eax+0x69],dword 0x3a003a73
0002356E  0020              add [eax],ah
00023570  2000              and [eax],al
00023572  3230              xor dh,[eax]
00023574  002E              add [esi],ch
00023576  00466C            add [esi+0x6c],al
00023579  6F                outsd
0002357A  7070              jo 0x235ec
0002357C  7920              jns 0x2359e
0002357E  696E666F726D61    imul ebp,[esi+0x66],dword 0x616d726f
00023585  7469              jz 0x235f0
00023587  6F                outsd
00023588  6E                outsb
00023589  3A00              cmp al,[eax]
0002358B  4E                dec esi
0002358C  6F                outsd
0002358D  20647269          and [edx+esi*2+0x69],ah
00023591  7665              jna 0x235f8
00023593  210A              and [edx],ecx
00023595  007369            add [ebx+0x69],dh
00023598  7A65              jpe 0x235ff
0002359A  2D2D333630        sub eax,0x3036332d
0002359F  6B0A00            imul ecx,[edx],byte +0x0
000235A2  7369              jnc 0x2360d
000235A4  7A65              jpe 0x2360b
000235A6  2D2D313230        sub eax,0x3032312d
000235AB  6B0A00            imul ecx,[edx],byte +0x0
000235AE  7369              jnc 0x23619
000235B0  7A65              jpe 0x23617
000235B2  2D2D373230        sub eax,0x3032372d
000235B7  4B                dec ebx
000235B8  0A00              or al,[eax]
000235BA  7369              jnc 0x23625
000235BC  7A65              jpe 0x23623
000235BE  2D2D312E34        sub eax,0x342e312d
000235C3  344D              xor al,0x4d
000235C5  0A00              or al,[eax]
000235C7  005221            add [edx+0x21],dl
000235CA  0200              add al,[eax]
000235CC  60                pusha
000235CD  2102              and [edx],eax
000235CF  006E21            add [esi+0x21],ch
000235D2  0200              add al,[eax]
000235D4  7C21              jl 0x235f7
000235D6  0200              add al,[eax]
000235D8  8A21              mov ah,[ecx]
000235DA  0200              add al,[eax]
000235DC  214023            and [eax+0x23],eax
000235DF  2425              and al,0x25
000235E1  5E                pop esi
000235E2  262A28            sub ch,[es:eax]
000235E5  295F2B            sub [edi+0x2b],ebx
000235E8  004578            add [ebp+0x78],al
000235EB  636570            arpl [ebp+0x70],sp
000235EE  7469              jz 0x23659
000235F0  6F                outsd
000235F1  6E                outsb
000235F2  3A30              cmp dh,[eax]
000235F4  004578            add [ebp+0x78],al
000235F7  636570            arpl [ebp+0x70],sp
000235FA  7469              jz 0x23665
000235FC  6F                outsd
000235FD  6E                outsb
000235FE  3A31              cmp dh,[ecx]
00023600  004578            add [ebp+0x78],al
00023603  636570            arpl [ebp+0x70],sp
00023606  7469              jz 0x23671
00023608  6F                outsd
00023609  6E                outsb
0002360A  3A32              cmp dh,[edx]
0002360C  004578            add [ebp+0x78],al
0002360F  636570            arpl [ebp+0x70],sp
00023612  7469              jz 0x2367d
00023614  6F                outsd
00023615  6E                outsb
00023616  3A33              cmp dh,[ebx]
00023618  004578            add [ebp+0x78],al
0002361B  636570            arpl [ebp+0x70],sp
0002361E  7469              jz 0x23689
00023620  6F                outsd
00023621  6E                outsb
00023622  3A3400            cmp dh,[eax+eax]
00023625  45                inc ebp
00023626  7863              js 0x2368b
00023628  657074            gs jo 0x2369f
0002362B  696F6E3A350045    imul ebp,[edi+0x6e],dword 0x4500353a
00023632  7863              js 0x23697
00023634  657074            gs jo 0x236ab
00023637  696F6E3A360045    imul ebp,[edi+0x6e],dword 0x4500363a
0002363E  7863              js 0x236a3
00023640  657074            gs jo 0x236b7
00023643  696F6E3A370045    imul ebp,[edi+0x6e],dword 0x4500373a
0002364A  7863              js 0x236af
0002364C  657074            gs jo 0x236c3
0002364F  696F6E3A380045    imul ebp,[edi+0x6e],dword 0x4500383a
00023656  7863              js 0x236bb
00023658  657074            gs jo 0x236cf
0002365B  696F6E3A390045    imul ebp,[edi+0x6e],dword 0x4500393a
00023662  7863              js 0x236c7
00023664  657074            gs jo 0x236db
00023667  696F6E3A313000    imul ebp,[edi+0x6e],dword 0x30313a
0002366E  45                inc ebp
0002366F  7863              js 0x236d4
00023671  657074            gs jo 0x236e8
00023674  696F6E3A313100    imul ebp,[edi+0x6e],dword 0x31313a
0002367B  45                inc ebp
0002367C  7863              js 0x236e1
0002367E  657074            gs jo 0x236f5
00023681  696F6E3A313200    imul ebp,[edi+0x6e],dword 0x32313a
00023688  45                inc ebp
00023689  7863              js 0x236ee
0002368B  657074            gs jo 0x23702
0002368E  696F6E3A313300    imul ebp,[edi+0x6e],dword 0x33313a
00023695  45                inc ebp
00023696  7863              js 0x236fb
00023698  657074            gs jo 0x2370f
0002369B  696F6E3A313400    imul ebp,[edi+0x6e],dword 0x34313a
000236A2  45                inc ebp
000236A3  7863              js 0x23708
000236A5  657074            gs jo 0x2371c
000236A8  696F6E3A313600    imul ebp,[edi+0x6e],dword 0x36313a
000236AF  2A2A              sub ch,[edx]
000236B1  2A2A              sub ch,[edx]
000236B3  2A2A              sub ch,[edx]
000236B5  0000              add [eax],al
000236B7  0020              add [eax],ah
000236B9  0000              add [eax],al
000236BB  0018              add [eax],bl
000236BD  27                daa
000236BE  0200              add al,[eax]
000236C0  4D                dec ebp
000236C1  27                daa
000236C2  0200              add al,[eax]
000236C4  4D                dec ebp
000236C5  27                daa
000236C6  0200              add al,[eax]
000236C8  4D                dec ebp
000236C9  27                daa
000236CA  0200              add al,[eax]
000236CC  4D                dec ebp
000236CD  27                daa
000236CE  0200              add al,[eax]
000236D0  4D                dec ebp
000236D1  27                daa
000236D2  0200              add al,[eax]
000236D4  4D                dec ebp
000236D5  27                daa
000236D6  0200              add al,[eax]
000236D8  4D                dec ebp
000236D9  27                daa
000236DA  0200              add al,[eax]
000236DC  4D                dec ebp
000236DD  27                daa
000236DE  0200              add al,[eax]
000236E0  4D                dec ebp
000236E1  27                daa
000236E2  0200              add al,[eax]
000236E4  4D                dec ebp
000236E5  27                daa
000236E6  0200              add al,[eax]
000236E8  4D                dec ebp
000236E9  27                daa
000236EA  0200              add al,[eax]
000236EC  4D                dec ebp
000236ED  27                daa
000236EE  0200              add al,[eax]
000236F0  4D                dec ebp
000236F1  27                daa
000236F2  0200              add al,[eax]
000236F4  0E                push cs
000236F5  27                daa
000236F6  0200              add al,[eax]
000236F8  4D                dec ebp
000236F9  27                daa
000236FA  0200              add al,[eax]
000236FC  4D                dec ebp
000236FD  27                daa
000236FE  0200              add al,[eax]
00023700  4D                dec ebp
00023701  27                daa
00023702  0200              add al,[eax]
00023704  4D                dec ebp
00023705  27                daa
00023706  0200              add al,[eax]
00023708  4D                dec ebp
00023709  27                daa
0002370A  0200              add al,[eax]
0002370C  4D                dec ebp
0002370D  27                daa
0002370E  0200              add al,[eax]
00023710  4D                dec ebp
00023711  27                daa
00023712  0200              add al,[eax]
00023714  4D                dec ebp
00023715  27                daa
00023716  0200              add al,[eax]
00023718  4D                dec ebp
00023719  27                daa
0002371A  0200              add al,[eax]
0002371C  4D                dec ebp
0002371D  27                daa
0002371E  0200              add al,[eax]
00023720  4D                dec ebp
00023721  27                daa
00023722  0200              add al,[eax]
00023724  4D                dec ebp
00023725  27                daa
00023726  0200              add al,[eax]
00023728  4D                dec ebp
00023729  27                daa
0002372A  0200              add al,[eax]
0002372C  C7                db 0xC7
0002372D  260200            add al,[es:eax]
00023730  4D                dec ebp
00023731  27                daa
00023732  0200              add al,[eax]
00023734  4D                dec ebp
00023735  27                daa
00023736  0200              add al,[eax]
00023738  4D                dec ebp
00023739  27                daa
0002373A  0200              add al,[eax]
0002373C  4D                dec ebp
0002373D  27                daa
0002373E  0200              add al,[eax]
00023740  4D                dec ebp
00023741  27                daa
00023742  0200              add al,[eax]
00023744  4D                dec ebp
00023745  27                daa
00023746  0200              add al,[eax]
00023748  4D                dec ebp
00023749  27                daa
0002374A  0200              add al,[eax]
0002374C  4D                dec ebp
0002374D  27                daa
0002374E  0200              add al,[eax]
00023750  4D                dec ebp
00023751  27                daa
00023752  0200              add al,[eax]
00023754  4D                dec ebp
00023755  27                daa
00023756  0200              add al,[eax]
00023758  4D                dec ebp
00023759  27                daa
0002375A  0200              add al,[eax]
0002375C  D826              fsub dword [esi]
0002375E  0200              add al,[eax]
00023760  4D                dec ebp
00023761  27                daa
00023762  0200              add al,[eax]
00023764  4D                dec ebp
00023765  27                daa
00023766  0200              add al,[eax]
00023768  4D                dec ebp
00023769  27                daa
0002376A  0200              add al,[eax]
0002376C  E92602004D        jmp 0x4d023997
00023771  27                daa
00023772  0200              add al,[eax]
00023774  4D                dec ebp
00023775  27                daa
00023776  0200              add al,[eax]
00023778  4D                dec ebp
00023779  27                daa
0002377A  0200              add al,[eax]
0002377C  4D                dec ebp
0002377D  27                daa
0002377E  0200              add al,[eax]
00023780  4D                dec ebp
00023781  27                daa
00023782  0200              add al,[eax]
00023784  4D                dec ebp
00023785  27                daa
00023786  0200              add al,[eax]
00023788  4D                dec ebp
00023789  27                daa
0002378A  0200              add al,[eax]
0002378C  4D                dec ebp
0002378D  27                daa
0002378E  0200              add al,[eax]
00023790  4D                dec ebp
00023791  27                daa
00023792  0200              add al,[eax]
00023794  4D                dec ebp
00023795  27                daa
00023796  0200              add al,[eax]
00023798  4D                dec ebp
00023799  27                daa
0002379A  0200              add al,[eax]
0002379C  4D                dec ebp
0002379D  27                daa
0002379E  0200              add al,[eax]
000237A0  4D                dec ebp
000237A1  27                daa
000237A2  0200              add al,[eax]
000237A4  FA                cli
000237A5  260200            add al,[es:eax]
000237A8  4D                dec ebp
000237A9  27                daa
000237AA  0200              add al,[eax]
000237AC  4D                dec ebp
000237AD  27                daa
000237AE  0200              add al,[eax]
000237B0  4D                dec ebp
000237B1  27                daa
000237B2  0200              add al,[eax]
000237B4  4D                dec ebp
000237B5  27                daa
000237B6  0200              add al,[eax]
000237B8  4D                dec ebp
000237B9  27                daa
000237BA  0200              add al,[eax]
000237BC  4D                dec ebp
000237BD  27                daa
000237BE  0200              add al,[eax]
000237C0  4D                dec ebp
000237C1  27                daa
000237C2  0200              add al,[eax]
000237C4  0427              add al,0x27
000237C6  0200              add al,[eax]
000237C8  696E74006E6F3D    imul ebp,[esi+0x74],dword 0x3d6f6e00
000237CF  3130              xor [eax],esi
000237D1  6800000000        push dword 0x0
000237D6  0000              add [eax],al
000237D8  0000              add [eax],al
000237DA  0000              add [eax],al
000237DC  0000              add [eax],al
000237DE  0000              add [eax],al
000237E0  0000              add [eax],al
000237E2  0000              add [eax],al
000237E4  0000              add [eax],al
000237E6  0000              add [eax],al
000237E8  0000              add [eax],al
000237EA  0000              add [eax],al
000237EC  0000              add [eax],al
000237EE  0000              add [eax],al
000237F0  0000              add [eax],al
000237F2  0000              add [eax],al
000237F4  0000              add [eax],al
000237F6  0000              add [eax],al
000237F8  0000              add [eax],al
000237FA  0000              add [eax],al
000237FC  0000              add [eax],al
000237FE  0000              add [eax],al
00023800  0000              add [eax],al
00023802  0000              add [eax],al
00023804  0000              add [eax],al
00023806  0000              add [eax],al
00023808  0000              add [eax],al
0002380A  0000              add [eax],al
0002380C  0000              add [eax],al
0002380E  0000              add [eax],al
00023810  0000              add [eax],al
00023812  0000              add [eax],al
00023814  0000              add [eax],al
00023816  0000              add [eax],al
00023818  0000              add [eax],al
0002381A  0000              add [eax],al
0002381C  0000              add [eax],al
0002381E  0000              add [eax],al
00023820  0000              add [eax],al
00023822  0000              add [eax],al
00023824  0000              add [eax],al
00023826  0000              add [eax],al
00023828  0000              add [eax],al
0002382A  0000              add [eax],al
0002382C  0000              add [eax],al
0002382E  0000              add [eax],al
00023830  0000              add [eax],al
00023832  0000              add [eax],al
00023834  0000              add [eax],al
00023836  0000              add [eax],al
00023838  0000              add [eax],al
0002383A  0000              add [eax],al
0002383C  0000              add [eax],al
0002383E  0000              add [eax],al
00023840  0000              add [eax],al
00023842  0000              add [eax],al
00023844  0000              add [eax],al
00023846  0000              add [eax],al
00023848  0000              add [eax],al
0002384A  0000              add [eax],al
0002384C  0000              add [eax],al
0002384E  0000              add [eax],al
00023850  0000              add [eax],al
00023852  0000              add [eax],al
00023854  0000              add [eax],al
00023856  0000              add [eax],al
00023858  0000              add [eax],al
0002385A  0000              add [eax],al
0002385C  0000              add [eax],al
0002385E  0000              add [eax],al
00023860  0000              add [eax],al
00023862  0000              add [eax],al
00023864  0000              add [eax],al
00023866  0000              add [eax],al
00023868  0000              add [eax],al
0002386A  0000              add [eax],al
0002386C  0000              add [eax],al
0002386E  0000              add [eax],al
00023870  0000              add [eax],al
00023872  0000              add [eax],al
00023874  0000              add [eax],al
00023876  0000              add [eax],al
00023878  0000              add [eax],al
0002387A  0000              add [eax],al
0002387C  0000              add [eax],al
0002387E  0000              add [eax],al
00023880  0000              add [eax],al
00023882  0000              add [eax],al
00023884  0000              add [eax],al
00023886  0000              add [eax],al
00023888  0000              add [eax],al
0002388A  0000              add [eax],al
0002388C  0000              add [eax],al
0002388E  0000              add [eax],al
00023890  0000              add [eax],al
00023892  0000              add [eax],al
00023894  0000              add [eax],al
00023896  0000              add [eax],al
00023898  0000              add [eax],al
0002389A  0000              add [eax],al
0002389C  0000              add [eax],al
0002389E  0000              add [eax],al
000238A0  0000              add [eax],al
000238A2  0000              add [eax],al
000238A4  0000              add [eax],al
000238A6  0000              add [eax],al
000238A8  0000              add [eax],al
000238AA  0000              add [eax],al
000238AC  0000              add [eax],al
000238AE  0000              add [eax],al
000238B0  0000              add [eax],al
000238B2  0000              add [eax],al
000238B4  0000              add [eax],al
000238B6  0000              add [eax],al
000238B8  0000              add [eax],al
000238BA  0000              add [eax],al
000238BC  0000              add [eax],al
000238BE  0000              add [eax],al
000238C0  0000              add [eax],al
000238C2  0000              add [eax],al
000238C4  0000              add [eax],al
000238C6  0000              add [eax],al
000238C8  0000              add [eax],al
000238CA  0000              add [eax],al
000238CC  0000              add [eax],al
000238CE  0000              add [eax],al
000238D0  0000              add [eax],al
000238D2  0000              add [eax],al
000238D4  0000              add [eax],al
000238D6  0000              add [eax],al
000238D8  0000              add [eax],al
000238DA  0000              add [eax],al
000238DC  0000              add [eax],al
000238DE  0000              add [eax],al
000238E0  0000              add [eax],al
000238E2  0000              add [eax],al
000238E4  0000              add [eax],al
000238E6  0000              add [eax],al
000238E8  0000              add [eax],al
000238EA  0000              add [eax],al
000238EC  0000              add [eax],al
000238EE  0000              add [eax],al
000238F0  0000              add [eax],al
000238F2  0000              add [eax],al
000238F4  0000              add [eax],al
000238F6  0000              add [eax],al
000238F8  0000              add [eax],al
000238FA  0000              add [eax],al
000238FC  0000              add [eax],al
000238FE  0000              add [eax],al
00023900  0000              add [eax],al
00023902  0000              add [eax],al
00023904  0000              add [eax],al
00023906  0000              add [eax],al
00023908  0000              add [eax],al
0002390A  0000              add [eax],al
0002390C  0000              add [eax],al
0002390E  0000              add [eax],al
00023910  0000              add [eax],al
00023912  0000              add [eax],al
00023914  0000              add [eax],al
00023916  0000              add [eax],al
00023918  0000              add [eax],al
0002391A  0000              add [eax],al
0002391C  0000              add [eax],al
0002391E  0000              add [eax],al
00023920  0000              add [eax],al
00023922  0000              add [eax],al
00023924  0000              add [eax],al
00023926  0000              add [eax],al
00023928  0000              add [eax],al
0002392A  0000              add [eax],al
0002392C  0000              add [eax],al
0002392E  0000              add [eax],al
00023930  0000              add [eax],al
00023932  0000              add [eax],al
00023934  0000              add [eax],al
00023936  0000              add [eax],al
00023938  0000              add [eax],al
0002393A  0000              add [eax],al
0002393C  0000              add [eax],al
0002393E  0000              add [eax],al
00023940  0000              add [eax],al
00023942  0000              add [eax],al
00023944  0000              add [eax],al
00023946  0000              add [eax],al
00023948  0000              add [eax],al
0002394A  0000              add [eax],al
0002394C  0000              add [eax],al
0002394E  0000              add [eax],al
00023950  0000              add [eax],al
00023952  0000              add [eax],al
00023954  0000              add [eax],al
00023956  0000              add [eax],al
00023958  0000              add [eax],al
0002395A  0000              add [eax],al
0002395C  0000              add [eax],al
0002395E  0000              add [eax],al
00023960  0000              add [eax],al
00023962  0000              add [eax],al
00023964  0000              add [eax],al
00023966  0000              add [eax],al
00023968  0000              add [eax],al
0002396A  0000              add [eax],al
0002396C  0000              add [eax],al
0002396E  0000              add [eax],al
00023970  0000              add [eax],al
00023972  0000              add [eax],al
00023974  0000              add [eax],al
00023976  0000              add [eax],al
00023978  0000              add [eax],al
0002397A  0000              add [eax],al
0002397C  0000              add [eax],al
0002397E  0000              add [eax],al
00023980  0000              add [eax],al
00023982  0000              add [eax],al
00023984  0000              add [eax],al
00023986  0000              add [eax],al
00023988  0000              add [eax],al
0002398A  0000              add [eax],al
0002398C  0000              add [eax],al
0002398E  0000              add [eax],al
00023990  0000              add [eax],al
00023992  0000              add [eax],al
00023994  0000              add [eax],al
00023996  0000              add [eax],al
00023998  0000              add [eax],al
0002399A  0000              add [eax],al
0002399C  0000              add [eax],al
0002399E  0000              add [eax],al
000239A0  0000              add [eax],al
000239A2  0000              add [eax],al
000239A4  0000              add [eax],al
000239A6  0000              add [eax],al
000239A8  0000              add [eax],al
000239AA  0000              add [eax],al
000239AC  0000              add [eax],al
000239AE  0000              add [eax],al
000239B0  0000              add [eax],al
000239B2  0000              add [eax],al
000239B4  0000              add [eax],al
000239B6  0000              add [eax],al
000239B8  0000              add [eax],al
000239BA  0000              add [eax],al
000239BC  0000              add [eax],al
000239BE  0000              add [eax],al
000239C0  0000              add [eax],al
000239C2  0000              add [eax],al
000239C4  0000              add [eax],al
000239C6  0000              add [eax],al
000239C8  0000              add [eax],al
000239CA  0000              add [eax],al
000239CC  0000              add [eax],al
000239CE  0000              add [eax],al
000239D0  0000              add [eax],al
000239D2  0000              add [eax],al
000239D4  0000              add [eax],al
000239D6  0000              add [eax],al
000239D8  0000              add [eax],al
000239DA  0000              add [eax],al
000239DC  0000              add [eax],al
000239DE  0000              add [eax],al
000239E0  0000              add [eax],al
000239E2  0000              add [eax],al
000239E4  0000              add [eax],al
000239E6  0000              add [eax],al
000239E8  0000              add [eax],al
000239EA  0000              add [eax],al
000239EC  0000              add [eax],al
000239EE  0000              add [eax],al
000239F0  0000              add [eax],al
000239F2  0000              add [eax],al
000239F4  0000              add [eax],al
000239F6  0000              add [eax],al
000239F8  0000              add [eax],al
000239FA  0000              add [eax],al
000239FC  0000              add [eax],al
000239FE  0000              add [eax],al
00023A00  0000              add [eax],al
00023A02  0000              add [eax],al
00023A04  0000              add [eax],al
00023A06  0000              add [eax],al
00023A08  0000              add [eax],al
00023A0A  0000              add [eax],al
00023A0C  0000              add [eax],al
00023A0E  0000              add [eax],al
00023A10  0000              add [eax],al
00023A12  0000              add [eax],al
00023A14  0000              add [eax],al
00023A16  0000              add [eax],al
00023A18  0000              add [eax],al
00023A1A  0000              add [eax],al
00023A1C  0000              add [eax],al
00023A1E  0000              add [eax],al
00023A20  0000              add [eax],al
00023A22  0000              add [eax],al
00023A24  0000              add [eax],al
00023A26  0000              add [eax],al
00023A28  0000              add [eax],al
00023A2A  0000              add [eax],al
00023A2C  0000              add [eax],al
00023A2E  0000              add [eax],al
00023A30  0000              add [eax],al
00023A32  0000              add [eax],al
00023A34  0000              add [eax],al
00023A36  0000              add [eax],al
00023A38  0000              add [eax],al
00023A3A  0000              add [eax],al
00023A3C  0000              add [eax],al
00023A3E  0000              add [eax],al
00023A40  0000              add [eax],al
00023A42  0000              add [eax],al
00023A44  0000              add [eax],al
00023A46  0000              add [eax],al
00023A48  0000              add [eax],al
00023A4A  0000              add [eax],al
00023A4C  0000              add [eax],al
00023A4E  0000              add [eax],al
00023A50  0000              add [eax],al
00023A52  0000              add [eax],al
00023A54  0000              add [eax],al
00023A56  0000              add [eax],al
00023A58  0000              add [eax],al
00023A5A  0000              add [eax],al
00023A5C  0000              add [eax],al
00023A5E  0000              add [eax],al
00023A60  0000              add [eax],al
00023A62  0000              add [eax],al
00023A64  0000              add [eax],al
00023A66  0000              add [eax],al
00023A68  0000              add [eax],al
00023A6A  0000              add [eax],al
00023A6C  0000              add [eax],al
00023A6E  0000              add [eax],al
00023A70  0000              add [eax],al
00023A72  0000              add [eax],al
00023A74  0000              add [eax],al
00023A76  0000              add [eax],al
00023A78  0000              add [eax],al
00023A7A  0000              add [eax],al
00023A7C  0000              add [eax],al
00023A7E  0000              add [eax],al
00023A80  0000              add [eax],al
00023A82  0000              add [eax],al
00023A84  0000              add [eax],al
00023A86  0000              add [eax],al
00023A88  0000              add [eax],al
00023A8A  0000              add [eax],al
00023A8C  0000              add [eax],al
00023A8E  0000              add [eax],al
00023A90  0000              add [eax],al
00023A92  0000              add [eax],al
00023A94  0000              add [eax],al
00023A96  0000              add [eax],al
00023A98  0000              add [eax],al
00023A9A  0000              add [eax],al
00023A9C  0000              add [eax],al
00023A9E  0000              add [eax],al
00023AA0  0000              add [eax],al
00023AA2  0000              add [eax],al
00023AA4  0000              add [eax],al
00023AA6  0000              add [eax],al
00023AA8  0000              add [eax],al
00023AAA  0000              add [eax],al
00023AAC  0000              add [eax],al
00023AAE  0000              add [eax],al
00023AB0  0000              add [eax],al
00023AB2  0000              add [eax],al
00023AB4  0000              add [eax],al
00023AB6  0000              add [eax],al
00023AB8  0000              add [eax],al
00023ABA  0000              add [eax],al
00023ABC  0000              add [eax],al
00023ABE  0000              add [eax],al
00023AC0  0000              add [eax],al
00023AC2  0000              add [eax],al
00023AC4  0000              add [eax],al
00023AC6  0000              add [eax],al
00023AC8  0000              add [eax],al
00023ACA  0000              add [eax],al
00023ACC  0000              add [eax],al
00023ACE  0000              add [eax],al
00023AD0  0000              add [eax],al
00023AD2  0000              add [eax],al
00023AD4  0000              add [eax],al
00023AD6  0000              add [eax],al
00023AD8  0000              add [eax],al
00023ADA  0000              add [eax],al
00023ADC  0000              add [eax],al
00023ADE  0000              add [eax],al
00023AE0  0000              add [eax],al
00023AE2  0000              add [eax],al
00023AE4  0000              add [eax],al
00023AE6  0000              add [eax],al
00023AE8  0000              add [eax],al
00023AEA  0000              add [eax],al
00023AEC  0000              add [eax],al
00023AEE  0000              add [eax],al
00023AF0  0000              add [eax],al
00023AF2  0000              add [eax],al
00023AF4  0000              add [eax],al
00023AF6  0000              add [eax],al
00023AF8  0000              add [eax],al
00023AFA  0000              add [eax],al
00023AFC  0000              add [eax],al
00023AFE  0000              add [eax],al
00023B00  0000              add [eax],al
00023B02  0000              add [eax],al
00023B04  0000              add [eax],al
00023B06  0000              add [eax],al
00023B08  0000              add [eax],al
00023B0A  0000              add [eax],al
00023B0C  0000              add [eax],al
00023B0E  0000              add [eax],al
00023B10  0000              add [eax],al
00023B12  0000              add [eax],al
00023B14  0000              add [eax],al
00023B16  0000              add [eax],al
00023B18  0000              add [eax],al
00023B1A  0000              add [eax],al
00023B1C  0000              add [eax],al
00023B1E  0000              add [eax],al
00023B20  0000              add [eax],al
00023B22  0000              add [eax],al
00023B24  0000              add [eax],al
00023B26  0000              add [eax],al
00023B28  0000              add [eax],al
00023B2A  0000              add [eax],al
00023B2C  0000              add [eax],al
00023B2E  0000              add [eax],al
00023B30  0000              add [eax],al
00023B32  0000              add [eax],al
00023B34  0000              add [eax],al
00023B36  0000              add [eax],al
00023B38  0000              add [eax],al
00023B3A  0000              add [eax],al
00023B3C  0000              add [eax],al
00023B3E  0000              add [eax],al
00023B40  0000              add [eax],al
00023B42  0000              add [eax],al
00023B44  0000              add [eax],al
00023B46  0000              add [eax],al
00023B48  0000              add [eax],al
00023B4A  0000              add [eax],al
00023B4C  0000              add [eax],al
00023B4E  0000              add [eax],al
00023B50  0000              add [eax],al
00023B52  0000              add [eax],al
00023B54  0000              add [eax],al
00023B56  0000              add [eax],al
00023B58  0000              add [eax],al
00023B5A  0000              add [eax],al
00023B5C  0000              add [eax],al
00023B5E  0000              add [eax],al
00023B60  0000              add [eax],al
00023B62  0000              add [eax],al
00023B64  0000              add [eax],al
00023B66  0000              add [eax],al
00023B68  0000              add [eax],al
00023B6A  0000              add [eax],al
00023B6C  0000              add [eax],al
00023B6E  0000              add [eax],al
00023B70  0000              add [eax],al
00023B72  0000              add [eax],al
00023B74  0000              add [eax],al
00023B76  0000              add [eax],al
00023B78  0000              add [eax],al
00023B7A  0000              add [eax],al
00023B7C  0000              add [eax],al
00023B7E  0000              add [eax],al
00023B80  0000              add [eax],al
00023B82  0000              add [eax],al
00023B84  0000              add [eax],al
00023B86  0000              add [eax],al
00023B88  0000              add [eax],al
00023B8A  0000              add [eax],al
00023B8C  0000              add [eax],al
00023B8E  0000              add [eax],al
00023B90  0000              add [eax],al
00023B92  0000              add [eax],al
00023B94  0000              add [eax],al
00023B96  0000              add [eax],al
00023B98  0000              add [eax],al
00023B9A  0000              add [eax],al
00023B9C  0000              add [eax],al
00023B9E  0000              add [eax],al
00023BA0  0000              add [eax],al
00023BA2  0000              add [eax],al
00023BA4  0000              add [eax],al
00023BA6  0000              add [eax],al
00023BA8  0000              add [eax],al
00023BAA  0000              add [eax],al
00023BAC  0000              add [eax],al
00023BAE  0000              add [eax],al
00023BB0  0000              add [eax],al
00023BB2  0000              add [eax],al
00023BB4  0000              add [eax],al
00023BB6  0000              add [eax],al
00023BB8  0000              add [eax],al
00023BBA  0000              add [eax],al
00023BBC  0000              add [eax],al
00023BBE  0000              add [eax],al
00023BC0  0000              add [eax],al
00023BC2  0000              add [eax],al
00023BC4  0000              add [eax],al
00023BC6  0000              add [eax],al
00023BC8  0000              add [eax],al
00023BCA  0000              add [eax],al
00023BCC  0000              add [eax],al
00023BCE  0000              add [eax],al
00023BD0  0000              add [eax],al
00023BD2  0000              add [eax],al
00023BD4  0000              add [eax],al
00023BD6  0000              add [eax],al
00023BD8  0000              add [eax],al
00023BDA  0000              add [eax],al
00023BDC  0000              add [eax],al
00023BDE  0000              add [eax],al
00023BE0  0000              add [eax],al
00023BE2  0000              add [eax],al
00023BE4  0000              add [eax],al
00023BE6  0000              add [eax],al
00023BE8  0000              add [eax],al
00023BEA  0000              add [eax],al
00023BEC  0000              add [eax],al
00023BEE  0000              add [eax],al
00023BF0  0000              add [eax],al
00023BF2  0000              add [eax],al
00023BF4  0000              add [eax],al
00023BF6  0000              add [eax],al
00023BF8  0000              add [eax],al
00023BFA  0000              add [eax],al
00023BFC  0000              add [eax],al
00023BFE  0000              add [eax],al
00023C00  0000              add [eax],al
00023C02  0000              add [eax],al
00023C04  0000              add [eax],al
00023C06  0000              add [eax],al
00023C08  0000              add [eax],al
00023C0A  0000              add [eax],al
00023C0C  0000              add [eax],al
00023C0E  0000              add [eax],al
00023C10  0000              add [eax],al
00023C12  0000              add [eax],al
00023C14  0000              add [eax],al
00023C16  0000              add [eax],al
00023C18  0000              add [eax],al
00023C1A  0000              add [eax],al
00023C1C  0000              add [eax],al
00023C1E  0000              add [eax],al
00023C20  0000              add [eax],al
00023C22  0000              add [eax],al
00023C24  0000              add [eax],al
00023C26  0000              add [eax],al
00023C28  0000              add [eax],al
00023C2A  0000              add [eax],al
00023C2C  0000              add [eax],al
00023C2E  0000              add [eax],al
00023C30  0000              add [eax],al
00023C32  0000              add [eax],al
00023C34  0000              add [eax],al
00023C36  0000              add [eax],al
00023C38  0000              add [eax],al
00023C3A  0000              add [eax],al
00023C3C  0000              add [eax],al
00023C3E  0000              add [eax],al
00023C40  0000              add [eax],al
00023C42  0000              add [eax],al
00023C44  0000              add [eax],al
00023C46  0000              add [eax],al
00023C48  0000              add [eax],al
00023C4A  0000              add [eax],al
00023C4C  0000              add [eax],al
00023C4E  0000              add [eax],al
00023C50  0000              add [eax],al
00023C52  0000              add [eax],al
00023C54  0000              add [eax],al
00023C56  0000              add [eax],al
00023C58  0000              add [eax],al
00023C5A  0000              add [eax],al
00023C5C  0000              add [eax],al
00023C5E  0000              add [eax],al
00023C60  0000              add [eax],al
00023C62  0000              add [eax],al
00023C64  0000              add [eax],al
00023C66  0000              add [eax],al
00023C68  0000              add [eax],al
00023C6A  0000              add [eax],al
00023C6C  0000              add [eax],al
00023C6E  0000              add [eax],al
00023C70  0000              add [eax],al
00023C72  0000              add [eax],al
00023C74  0000              add [eax],al
00023C76  0000              add [eax],al
00023C78  0000              add [eax],al
00023C7A  0000              add [eax],al
00023C7C  0000              add [eax],al
00023C7E  0000              add [eax],al
00023C80  0000              add [eax],al
00023C82  0000              add [eax],al
00023C84  0000              add [eax],al
00023C86  0000              add [eax],al
00023C88  0000              add [eax],al
00023C8A  0000              add [eax],al
00023C8C  0000              add [eax],al
00023C8E  0000              add [eax],al
00023C90  0000              add [eax],al
00023C92  0000              add [eax],al
00023C94  0000              add [eax],al
00023C96  0000              add [eax],al
00023C98  0000              add [eax],al
00023C9A  0000              add [eax],al
00023C9C  0000              add [eax],al
00023C9E  0000              add [eax],al
00023CA0  0000              add [eax],al
00023CA2  0000              add [eax],al
00023CA4  0000              add [eax],al
00023CA6  0000              add [eax],al
00023CA8  0000              add [eax],al
00023CAA  0000              add [eax],al
00023CAC  0000              add [eax],al
00023CAE  0000              add [eax],al
00023CB0  0000              add [eax],al
00023CB2  0000              add [eax],al
00023CB4  0000              add [eax],al
00023CB6  0000              add [eax],al
00023CB8  0000              add [eax],al
00023CBA  0000              add [eax],al
00023CBC  0000              add [eax],al
00023CBE  0000              add [eax],al
00023CC0  0000              add [eax],al
00023CC2  0000              add [eax],al
00023CC4  0000              add [eax],al
00023CC6  0000              add [eax],al
00023CC8  0000              add [eax],al
00023CCA  0000              add [eax],al
00023CCC  0000              add [eax],al
00023CCE  0000              add [eax],al
00023CD0  0000              add [eax],al
00023CD2  0000              add [eax],al
00023CD4  0000              add [eax],al
00023CD6  0000              add [eax],al
00023CD8  0000              add [eax],al
00023CDA  0000              add [eax],al
00023CDC  0000              add [eax],al
00023CDE  0000              add [eax],al
00023CE0  0000              add [eax],al
00023CE2  0000              add [eax],al
00023CE4  0000              add [eax],al
00023CE6  0000              add [eax],al
00023CE8  0000              add [eax],al
00023CEA  0000              add [eax],al
00023CEC  0000              add [eax],al
00023CEE  0000              add [eax],al
00023CF0  0000              add [eax],al
00023CF2  0000              add [eax],al
00023CF4  0000              add [eax],al
00023CF6  0000              add [eax],al
00023CF8  0000              add [eax],al
00023CFA  0000              add [eax],al
00023CFC  0000              add [eax],al
00023CFE  0000              add [eax],al
00023D00  0000              add [eax],al
00023D02  0000              add [eax],al
00023D04  0000              add [eax],al
00023D06  0000              add [eax],al
00023D08  0000              add [eax],al
00023D0A  0000              add [eax],al
00023D0C  0000              add [eax],al
00023D0E  0000              add [eax],al
00023D10  0000              add [eax],al
00023D12  0000              add [eax],al
00023D14  0000              add [eax],al
00023D16  0000              add [eax],al
00023D18  0000              add [eax],al
00023D1A  0000              add [eax],al
00023D1C  0000              add [eax],al
00023D1E  0000              add [eax],al
00023D20  0000              add [eax],al
00023D22  0000              add [eax],al
00023D24  0000              add [eax],al
00023D26  0000              add [eax],al
00023D28  0000              add [eax],al
00023D2A  0000              add [eax],al
00023D2C  0000              add [eax],al
00023D2E  0000              add [eax],al
00023D30  0000              add [eax],al
00023D32  0000              add [eax],al
00023D34  0000              add [eax],al
00023D36  0000              add [eax],al
00023D38  0000              add [eax],al
00023D3A  0000              add [eax],al
00023D3C  0000              add [eax],al
00023D3E  0000              add [eax],al
00023D40  0000              add [eax],al
00023D42  0000              add [eax],al
00023D44  0000              add [eax],al
00023D46  0000              add [eax],al
00023D48  0000              add [eax],al
00023D4A  0000              add [eax],al
00023D4C  0000              add [eax],al
00023D4E  0000              add [eax],al
00023D50  0000              add [eax],al
00023D52  0000              add [eax],al
00023D54  0000              add [eax],al
00023D56  0000              add [eax],al
00023D58  0000              add [eax],al
00023D5A  0000              add [eax],al
00023D5C  0000              add [eax],al
00023D5E  0000              add [eax],al
00023D60  0000              add [eax],al
00023D62  0000              add [eax],al
00023D64  0000              add [eax],al
00023D66  0000              add [eax],al
00023D68  0000              add [eax],al
00023D6A  0000              add [eax],al
00023D6C  0000              add [eax],al
00023D6E  0000              add [eax],al
00023D70  0000              add [eax],al
00023D72  0000              add [eax],al
00023D74  0000              add [eax],al
00023D76  0000              add [eax],al
00023D78  0000              add [eax],al
00023D7A  0000              add [eax],al
00023D7C  0000              add [eax],al
00023D7E  0000              add [eax],al
00023D80  0000              add [eax],al
00023D82  0000              add [eax],al
00023D84  0000              add [eax],al
00023D86  0000              add [eax],al
00023D88  0000              add [eax],al
00023D8A  0000              add [eax],al
00023D8C  0000              add [eax],al
00023D8E  0000              add [eax],al
00023D90  0000              add [eax],al
00023D92  0000              add [eax],al
00023D94  0000              add [eax],al
00023D96  0000              add [eax],al
00023D98  0000              add [eax],al
00023D9A  0000              add [eax],al
00023D9C  0000              add [eax],al
00023D9E  0000              add [eax],al
00023DA0  0000              add [eax],al
00023DA2  0000              add [eax],al
00023DA4  0000              add [eax],al
00023DA6  0000              add [eax],al
00023DA8  0000              add [eax],al
00023DAA  0000              add [eax],al
00023DAC  0000              add [eax],al
00023DAE  0000              add [eax],al
00023DB0  0000              add [eax],al
00023DB2  0000              add [eax],al
00023DB4  0000              add [eax],al
00023DB6  0000              add [eax],al
00023DB8  0000              add [eax],al
00023DBA  0000              add [eax],al
00023DBC  0000              add [eax],al
00023DBE  0000              add [eax],al
00023DC0  0000              add [eax],al
00023DC2  0000              add [eax],al
00023DC4  0000              add [eax],al
00023DC6  0000              add [eax],al
00023DC8  0000              add [eax],al
00023DCA  0000              add [eax],al
00023DCC  0000              add [eax],al
00023DCE  0000              add [eax],al
00023DD0  0000              add [eax],al
00023DD2  0000              add [eax],al
00023DD4  0000              add [eax],al
00023DD6  0000              add [eax],al
00023DD8  0000              add [eax],al
00023DDA  0000              add [eax],al
00023DDC  0000              add [eax],al
00023DDE  0000              add [eax],al
00023DE0  0000              add [eax],al
00023DE2  0000              add [eax],al
00023DE4  0000              add [eax],al
00023DE6  0000              add [eax],al
00023DE8  0000              add [eax],al
00023DEA  0000              add [eax],al
00023DEC  0000              add [eax],al
00023DEE  0000              add [eax],al
00023DF0  0000              add [eax],al
00023DF2  0000              add [eax],al
00023DF4  0000              add [eax],al
00023DF6  0000              add [eax],al
00023DF8  0000              add [eax],al
00023DFA  0000              add [eax],al
00023DFC  0000              add [eax],al
00023DFE  0000              add [eax],al
00023E00  0000              add [eax],al
00023E02  0000              add [eax],al
00023E04  0000              add [eax],al
00023E06  0000              add [eax],al
00023E08  0000              add [eax],al
00023E0A  0000              add [eax],al
00023E0C  0000              add [eax],al
00023E0E  0000              add [eax],al
00023E10  0000              add [eax],al
00023E12  0000              add [eax],al
00023E14  0000              add [eax],al
00023E16  0000              add [eax],al
00023E18  0000              add [eax],al
00023E1A  0000              add [eax],al
00023E1C  0000              add [eax],al
00023E1E  0000              add [eax],al
00023E20  0000              add [eax],al
00023E22  0000              add [eax],al
00023E24  0000              add [eax],al
00023E26  0000              add [eax],al
00023E28  0000              add [eax],al
00023E2A  0000              add [eax],al
00023E2C  0000              add [eax],al
00023E2E  0000              add [eax],al
00023E30  0000              add [eax],al
00023E32  0000              add [eax],al
00023E34  0000              add [eax],al
00023E36  0000              add [eax],al
00023E38  0000              add [eax],al
00023E3A  0000              add [eax],al
00023E3C  0000              add [eax],al
00023E3E  0000              add [eax],al
00023E40  0000              add [eax],al
00023E42  0000              add [eax],al
00023E44  0000              add [eax],al
00023E46  0000              add [eax],al
00023E48  0000              add [eax],al
00023E4A  0000              add [eax],al
00023E4C  0000              add [eax],al
00023E4E  0000              add [eax],al
00023E50  0000              add [eax],al
00023E52  0000              add [eax],al
00023E54  0000              add [eax],al
00023E56  0000              add [eax],al
00023E58  0000              add [eax],al
00023E5A  0000              add [eax],al
00023E5C  0000              add [eax],al
00023E5E  0000              add [eax],al
00023E60  0000              add [eax],al
00023E62  0000              add [eax],al
00023E64  0000              add [eax],al
00023E66  0000              add [eax],al
00023E68  0000              add [eax],al
00023E6A  0000              add [eax],al
00023E6C  0000              add [eax],al
00023E6E  0000              add [eax],al
00023E70  0000              add [eax],al
00023E72  0000              add [eax],al
00023E74  0000              add [eax],al
00023E76  0000              add [eax],al
00023E78  0000              add [eax],al
00023E7A  0000              add [eax],al
00023E7C  0000              add [eax],al
00023E7E  0000              add [eax],al
00023E80  0000              add [eax],al
00023E82  0000              add [eax],al
00023E84  0000              add [eax],al
00023E86  0000              add [eax],al
00023E88  0000              add [eax],al
00023E8A  0000              add [eax],al
00023E8C  0000              add [eax],al
00023E8E  0000              add [eax],al
00023E90  0000              add [eax],al
00023E92  0000              add [eax],al
00023E94  0000              add [eax],al
00023E96  0000              add [eax],al
00023E98  0000              add [eax],al
00023E9A  0000              add [eax],al
00023E9C  0000              add [eax],al
00023E9E  0000              add [eax],al
00023EA0  0000              add [eax],al
00023EA2  0000              add [eax],al
00023EA4  0000              add [eax],al
00023EA6  0000              add [eax],al
00023EA8  0000              add [eax],al
00023EAA  0000              add [eax],al
00023EAC  0000              add [eax],al
00023EAE  0000              add [eax],al
00023EB0  0000              add [eax],al
00023EB2  0000              add [eax],al
00023EB4  0000              add [eax],al
00023EB6  0000              add [eax],al
00023EB8  0000              add [eax],al
00023EBA  0000              add [eax],al
00023EBC  0000              add [eax],al
00023EBE  0000              add [eax],al
00023EC0  0000              add [eax],al
00023EC2  0000              add [eax],al
00023EC4  0000              add [eax],al
00023EC6  0000              add [eax],al
00023EC8  0000              add [eax],al
00023ECA  0000              add [eax],al
00023ECC  0000              add [eax],al
00023ECE  0000              add [eax],al
00023ED0  0000              add [eax],al
00023ED2  0000              add [eax],al
00023ED4  0000              add [eax],al
00023ED6  0000              add [eax],al
00023ED8  0000              add [eax],al
00023EDA  0000              add [eax],al
00023EDC  0000              add [eax],al
00023EDE  0000              add [eax],al
00023EE0  0000              add [eax],al
00023EE2  0000              add [eax],al
00023EE4  0000              add [eax],al
00023EE6  0000              add [eax],al
00023EE8  0000              add [eax],al
00023EEA  0000              add [eax],al
00023EEC  0000              add [eax],al
00023EEE  0000              add [eax],al
00023EF0  0000              add [eax],al
00023EF2  0000              add [eax],al
00023EF4  0000              add [eax],al
00023EF6  0000              add [eax],al
00023EF8  0000              add [eax],al
00023EFA  0000              add [eax],al
00023EFC  0000              add [eax],al
00023EFE  0000              add [eax],al
00023F00  0000              add [eax],al
00023F02  0000              add [eax],al
00023F04  0000              add [eax],al
00023F06  0000              add [eax],al
00023F08  0000              add [eax],al
00023F0A  0000              add [eax],al
00023F0C  0000              add [eax],al
00023F0E  0000              add [eax],al
00023F10  0000              add [eax],al
00023F12  0000              add [eax],al
00023F14  0000              add [eax],al
00023F16  0000              add [eax],al
00023F18  0000              add [eax],al
00023F1A  0000              add [eax],al
00023F1C  0000              add [eax],al
00023F1E  0000              add [eax],al
00023F20  0000              add [eax],al
00023F22  0000              add [eax],al
00023F24  0000              add [eax],al
00023F26  0000              add [eax],al
00023F28  0000              add [eax],al
00023F2A  0000              add [eax],al
00023F2C  0000              add [eax],al
00023F2E  0000              add [eax],al
00023F30  0000              add [eax],al
00023F32  0000              add [eax],al
00023F34  0000              add [eax],al
00023F36  0000              add [eax],al
00023F38  0000              add [eax],al
00023F3A  0000              add [eax],al
00023F3C  0000              add [eax],al
00023F3E  0000              add [eax],al
00023F40  0000              add [eax],al
00023F42  0000              add [eax],al
00023F44  0000              add [eax],al
00023F46  0000              add [eax],al
00023F48  0000              add [eax],al
00023F4A  0000              add [eax],al
00023F4C  0000              add [eax],al
00023F4E  0000              add [eax],al
00023F50  0000              add [eax],al
00023F52  0000              add [eax],al
00023F54  0000              add [eax],al
00023F56  0000              add [eax],al
00023F58  0000              add [eax],al
00023F5A  0000              add [eax],al
00023F5C  0000              add [eax],al
00023F5E  0000              add [eax],al
00023F60  0000              add [eax],al
00023F62  0000              add [eax],al
00023F64  0000              add [eax],al
00023F66  0000              add [eax],al
00023F68  0000              add [eax],al
00023F6A  0000              add [eax],al
00023F6C  0000              add [eax],al
00023F6E  0000              add [eax],al
00023F70  0000              add [eax],al
00023F72  0000              add [eax],al
00023F74  0000              add [eax],al
00023F76  0000              add [eax],al
00023F78  0000              add [eax],al
00023F7A  0000              add [eax],al
00023F7C  0000              add [eax],al
00023F7E  0000              add [eax],al
00023F80  0000              add [eax],al
00023F82  0000              add [eax],al
00023F84  0000              add [eax],al
00023F86  0000              add [eax],al
00023F88  0000              add [eax],al
00023F8A  0000              add [eax],al
00023F8C  0000              add [eax],al
00023F8E  0000              add [eax],al
00023F90  0000              add [eax],al
00023F92  0000              add [eax],al
00023F94  0000              add [eax],al
00023F96  0000              add [eax],al
00023F98  0000              add [eax],al
00023F9A  0000              add [eax],al
00023F9C  0000              add [eax],al
00023F9E  0000              add [eax],al
00023FA0  0000              add [eax],al
00023FA2  0000              add [eax],al
00023FA4  0000              add [eax],al
00023FA6  0000              add [eax],al
00023FA8  0000              add [eax],al
00023FAA  0000              add [eax],al
00023FAC  0000              add [eax],al
00023FAE  0000              add [eax],al
00023FB0  0000              add [eax],al
00023FB2  0000              add [eax],al
00023FB4  0000              add [eax],al
00023FB6  0000              add [eax],al
00023FB8  0000              add [eax],al
00023FBA  0000              add [eax],al
00023FBC  0000              add [eax],al
00023FBE  0000              add [eax],al
00023FC0  0000              add [eax],al
00023FC2  0000              add [eax],al
00023FC4  0000              add [eax],al
00023FC6  0000              add [eax],al
00023FC8  0000              add [eax],al
00023FCA  0000              add [eax],al
00023FCC  0000              add [eax],al
00023FCE  0000              add [eax],al
00023FD0  0000              add [eax],al
00023FD2  0000              add [eax],al
00023FD4  0000              add [eax],al
00023FD6  0000              add [eax],al
00023FD8  0000              add [eax],al
00023FDA  0000              add [eax],al
00023FDC  0000              add [eax],al
00023FDE  0000              add [eax],al
00023FE0  0000              add [eax],al
00023FE2  0000              add [eax],al
00023FE4  0000              add [eax],al
00023FE6  0000              add [eax],al
00023FE8  0000              add [eax],al
00023FEA  0000              add [eax],al
00023FEC  0000              add [eax],al
00023FEE  0000              add [eax],al
00023FF0  0000              add [eax],al
00023FF2  0000              add [eax],al
00023FF4  0000              add [eax],al
00023FF6  0000              add [eax],al
00023FF8  0000              add [eax],al
00023FFA  0000              add [eax],al
00023FFC  0000              add [eax],al
00023FFE  0000              add [eax],al
00024000  7F03              jg 0x24005
00024002  0000              add [eax],al
00024004  0000              add [eax],al
00024006  0000              add [eax],al
00024008  0000              add [eax],al
0002400A  0000              add [eax],al
0002400C  0000              add [eax],al
0002400E  0000              add [eax],al
00024010  0000              add [eax],al
00024012  0000              add [eax],al
00024014  0000              add [eax],al
00024016  0000              add [eax],al
00024018  0000              add [eax],al
0002401A  0000              add [eax],al
0002401C  0000              add [eax],al
0002401E  0000              add [eax],al
00024020  0000              add [eax],al
00024022  0000              add [eax],al
00024024  0000              add [eax],al
00024026  0000              add [eax],al
00024028  0000              add [eax],al
0002402A  0000              add [eax],al
0002402C  0000              add [eax],al
0002402E  0000              add [eax],al
00024030  3100              xor [eax],eax
00024032  0000              add [eax],al
00024034  2100              and [eax],eax
00024036  0000              add [eax],al
00024038  3200              xor al,[eax]
0002403A  0000              add [eax],al
0002403C  40                inc eax
0002403D  0000              add [eax],al
0002403F  0033              add [ebx],dh
00024041  0000              add [eax],al
00024043  0023              add [ebx],ah
00024045  0000              add [eax],al
00024047  003400            add [eax+eax],dh
0002404A  0000              add [eax],al
0002404C  2400              and al,0x0
0002404E  0000              add [eax],al
00024050  3500000025        xor eax,0x25000000
00024055  0000              add [eax],al
00024057  0036              add [esi],dh
00024059  0000              add [eax],al
0002405B  005E00            add [esi+0x0],bl
0002405E  0000              add [eax],al
00024060  37                aaa
00024061  0000              add [eax],al
00024063  0026              add [esi],ah
00024065  0000              add [eax],al
00024067  0038              add [eax],bh
00024069  0000              add [eax],al
0002406B  002A              add [edx],ch
0002406D  0000              add [eax],al
0002406F  0039              add [ecx],bh
00024071  0000              add [eax],al
00024073  0028              add [eax],ch
00024075  0000              add [eax],al
00024077  0030              add [eax],dh
00024079  0000              add [eax],al
0002407B  0029              add [ecx],ch
0002407D  0000              add [eax],al
0002407F  002D0000005F      add [0x5f000000],ch
00024085  0000              add [eax],al
00024087  003D0000002B      add [0x2b000000],bh
0002408D  0000              add [eax],al
0002408F  000B              add [ebx],cl
00024091  0000              add [eax],al
00024093  000B              add [ebx],cl
00024095  0000              add [eax],al
00024097  000C00            add [eax+eax],cl
0002409A  0000              add [eax],al
0002409C  0C00              or al,0x0
0002409E  0000              add [eax],al
000240A0  7100              jno 0x240a2
000240A2  0000              add [eax],al
000240A4  51                push ecx
000240A5  0000              add [eax],al
000240A7  007700            add [edi+0x0],dh
000240AA  0000              add [eax],al
000240AC  57                push edi
000240AD  0000              add [eax],al
000240AF  006500            add [ebp+0x0],ah
000240B2  0000              add [eax],al
000240B4  45                inc ebp
000240B5  0000              add [eax],al
000240B7  007200            add [edx+0x0],dh
000240BA  0000              add [eax],al
000240BC  52                push edx
000240BD  0000              add [eax],al
000240BF  00740000          add [eax+eax+0x0],dh
000240C3  00540000          add [eax+eax+0x0],dl
000240C7  007900            add [ecx+0x0],bh
000240CA  0000              add [eax],al
000240CC  59                pop ecx
000240CD  0000              add [eax],al
000240CF  007500            add [ebp+0x0],dh
000240D2  0000              add [eax],al
000240D4  55                push ebp
000240D5  0000              add [eax],al
000240D7  006900            add [ecx+0x0],ch
000240DA  0000              add [eax],al
000240DC  49                dec ecx
000240DD  0000              add [eax],al
000240DF  006F00            add [edi+0x0],ch
000240E2  0000              add [eax],al
000240E4  4F                dec edi
000240E5  0000              add [eax],al
000240E7  007000            add [eax+0x0],dh
000240EA  0000              add [eax],al
000240EC  50                push eax
000240ED  0000              add [eax],al
000240EF  005B00            add [ebx+0x0],bl
000240F2  0000              add [eax],al
000240F4  7B00              jpo 0x240f6
000240F6  0000              add [eax],al
000240F8  5D                pop ebp
000240F9  0000              add [eax],al
000240FB  007D00            add [ebp+0x0],bh
000240FE  0000              add [eax],al
00024100  0D0000000D        or eax,0xd000000
00024105  0000              add [eax],al
00024107  000E              add [esi],cl
00024109  0000              add [eax],al
0002410B  000E              add [esi],cl
0002410D  0000              add [eax],al
0002410F  006100            add [ecx+0x0],ah
00024112  0000              add [eax],al
00024114  41                inc ecx
00024115  0000              add [eax],al
00024117  007300            add [ebx+0x0],dh
0002411A  0000              add [eax],al
0002411C  53                push ebx
0002411D  0000              add [eax],al
0002411F  00640000          add [eax+eax+0x0],ah
00024123  00440000          add [eax+eax+0x0],al
00024127  006600            add [esi+0x0],ah
0002412A  0000              add [eax],al
0002412C  46                inc esi
0002412D  0000              add [eax],al
0002412F  006700            add [edi+0x0],ah
00024132  0000              add [eax],al
00024134  47                inc edi
00024135  0000              add [eax],al
00024137  006800            add [eax+0x0],ch
0002413A  0000              add [eax],al
0002413C  48                dec eax
0002413D  0000              add [eax],al
0002413F  006A00            add [edx+0x0],ch
00024142  0000              add [eax],al
00024144  4A                dec edx
00024145  0000              add [eax],al
00024147  006B00            add [ebx+0x0],ch
0002414A  0000              add [eax],al
0002414C  4B                dec ebx
0002414D  0000              add [eax],al
0002414F  006C0000          add [eax+eax+0x0],ch
00024153  004C0000          add [eax+eax+0x0],cl
00024157  003B              add [ebx],bh
00024159  0000              add [eax],al
0002415B  003A              add [edx],bh
0002415D  0000              add [eax],al
0002415F  0027              add [edi],ah
00024161  0000              add [eax],al
00024163  0022              add [edx],ah
00024165  0000              add [eax],al
00024167  006000            add [eax+0x0],ah
0002416A  0000              add [eax],al
0002416C  7E00              jng 0x2416e
0002416E  0000              add [eax],al
00024170  0F0000            sldt [eax]
00024173  000F              add [edi],cl
00024175  0000              add [eax],al
00024177  005C0000          add [eax+eax+0x0],bl
0002417B  007C0000          add [eax+eax+0x0],bh
0002417F  007A00            add [edx+0x0],bh
00024182  0000              add [eax],al
00024184  5A                pop edx
00024185  0000              add [eax],al
00024187  007800            add [eax+0x0],bh
0002418A  0000              add [eax],al
0002418C  58                pop eax
0002418D  0000              add [eax],al
0002418F  006300            add [ebx+0x0],ah
00024192  0000              add [eax],al
00024194  43                inc ebx
00024195  0000              add [eax],al
00024197  007600            add [esi+0x0],dh
0002419A  0000              add [eax],al
0002419C  56                push esi
0002419D  0000              add [eax],al
0002419F  006200            add [edx+0x0],ah
000241A2  0000              add [eax],al
000241A4  42                inc edx
000241A5  0000              add [eax],al
000241A7  006E00            add [esi+0x0],ch
000241AA  0000              add [eax],al
000241AC  4E                dec esi
000241AD  0000              add [eax],al
000241AF  006D00            add [ebp+0x0],ch
000241B2  0000              add [eax],al
000241B4  4D                dec ebp
000241B5  0000              add [eax],al
000241B7  002C00            add [eax+eax],ch
000241BA  0000              add [eax],al
000241BC  3C00              cmp al,0x0
000241BE  0000              add [eax],al
000241C0  2E0000            add [cs:eax],al
000241C3  003E              add [esi],bh
000241C5  0000              add [eax],al
000241C7  002F              add [edi],ch
000241C9  0000              add [eax],al
000241CB  003F              add [edi],bh
000241CD  0000              add [eax],al
000241CF  0010              add [eax],dl
000241D1  0000              add [eax],al
000241D3  0010              add [eax],dl
000241D5  0000              add [eax],al
000241D7  002A              add [edx],ch
000241D9  0000              add [eax],al
000241DB  002A              add [edx],ch
000241DD  0000              add [eax],al
000241DF  0011              add [ecx],dl
000241E1  0000              add [eax],al
000241E3  0011              add [ecx],dl
000241E5  0000              add [eax],al
000241E7  0020              add [eax],ah
000241E9  0000              add [eax],al
000241EB  0020              add [eax],ah
000241ED  0000              add [eax],al
000241EF  0012              add [edx],dl
000241F1  0000              add [eax],al
000241F3  0012              add [edx],dl
000241F5  0000              add [eax],al
000241F7  0001              add [ecx],al
000241F9  0000              add [eax],al
000241FB  0001              add [ecx],al
000241FD  0000              add [eax],al
000241FF  0002              add [edx],al
00024201  0000              add [eax],al
00024203  0002              add [edx],al
00024205  0000              add [eax],al
00024207  0003              add [ebx],al
00024209  0000              add [eax],al
0002420B  0003              add [ebx],al
0002420D  0000              add [eax],al
0002420F  000400            add [eax+eax],al
00024212  0000              add [eax],al
00024214  0400              add al,0x0
00024216  0000              add [eax],al
00024218  0500000005        add eax,0x5000000
0002421D  0000              add [eax],al
0002421F  0006              add [esi],al
00024221  0000              add [eax],al
00024223  0006              add [esi],al
00024225  0000              add [eax],al
00024227  0007              add [edi],al
00024229  0000              add [eax],al
0002422B  0007              add [edi],al
0002422D  0000              add [eax],al
0002422F  0008              add [eax],cl
00024231  0000              add [eax],al
00024233  0008              add [eax],cl
00024235  0000              add [eax],al
00024237  0009              add [ecx],cl
00024239  0000              add [eax],al
0002423B  0009              add [ecx],cl
0002423D  0000              add [eax],al
0002423F  000A              add [edx],cl
00024241  0000              add [eax],al
00024243  000A              add [edx],cl
00024245  0000              add [eax],al
00024247  0000              add [eax],al
00024249  0000              add [eax],al
0002424B  0000              add [eax],al
0002424D  0000              add [eax],al
0002424F  0000              add [eax],al
00024251  0000              add [eax],al
00024253  0000              add [eax],al
00024255  0000              add [eax],al
00024257  0000              add [eax],al
00024259  0000              add [eax],al
0002425B  0037              add [edi],dh
0002425D  0000              add [eax],al
0002425F  0000              add [eax],al
00024261  0000              add [eax],al
00024263  0038              add [eax],bh
00024265  0000              add [eax],al
00024267  0000              add [eax],al
00024269  0000              add [eax],al
0002426B  0039              add [ecx],bh
0002426D  0000              add [eax],al
0002426F  0000              add [eax],al
00024271  0000              add [eax],al
00024273  002D00000000      add [0x0],ch
00024279  0000              add [eax],al
0002427B  003400            add [eax+eax],dh
0002427E  0000              add [eax],al
00024280  0000              add [eax],al
00024282  0000              add [eax],al
00024284  3500000000        xor eax,0x0
00024289  0000              add [eax],al
0002428B  0036              add [esi],dh
0002428D  0000              add [eax],al
0002428F  0000              add [eax],al
00024291  0000              add [eax],al
00024293  002B              add [ebx],ch
00024295  0000              add [eax],al
00024297  0000              add [eax],al
00024299  0000              add [eax],al
0002429B  0031              add [ecx],dh
0002429D  0000              add [eax],al
0002429F  0000              add [eax],al
000242A1  0000              add [eax],al
000242A3  0032              add [edx],dh
000242A5  0000              add [eax],al
000242A7  0000              add [eax],al
000242A9  0000              add [eax],al
000242AB  0033              add [ebx],dh
000242AD  0000              add [eax],al
000242AF  0000              add [eax],al
000242B1  0000              add [eax],al
000242B3  0030              add [eax],dh
000242B5  0000              add [eax],al
000242B7  0000              add [eax],al
000242B9  0000              add [eax],al
000242BB  002E              add [esi],ch
000242BD  0000              add [eax],al
000242BF  0003              add [ebx],al
000242C1  0000              add [eax],al
000242C3  0000              add [eax],al
000242C5  54                push esp
000242C6  6865204E65        push dword 0x654e2065
000242CB  7477              jz 0x24344
000242CD  6964652041737365  imul esp,[ebp+0x20],dword 0x65737341
000242D5  6D                insd
000242D6  626C6572          bound ebp,[ebp+0x72]
000242DA  2030              and [eax],dh
000242DC  2E3938            cmp [cs:eax],edi
000242DF  2E3339            xor edi,[cs:ecx]
000242E2  0000              add [eax],al
000242E4  47                inc edi
000242E5  43                inc ebx
000242E6  43                inc ebx
000242E7  3A20              cmp ah,[eax]
000242E9  28474E            sub [edi+0x4e],al
000242EC  55                push ebp
000242ED  2920              sub [eax],esp
000242EF  342E              xor al,0x2e
000242F1  312E              xor [esi],ebp
000242F3  3220              xor ah,[eax]
000242F5  3230              xor dh,[eax]
000242F7  3038              xor [eax],bh
000242F9  3037              xor [edi],dh
000242FB  303420            xor [eax],dh
000242FE  285265            sub [edx+0x65],dl
00024301  64204861          and [fs:eax+0x61],cl
00024305  7420              jz 0x24327
00024307  342E              xor al,0x2e
00024309  312E              xor [esi],ebp
0002430B  322D34342900      xor ch,[0x293434]
00024311  004743            add [edi+0x43],al
00024314  43                inc ebx
00024315  3A20              cmp ah,[eax]
00024317  28474E            sub [edi+0x4e],al
0002431A  55                push ebp
0002431B  2920              sub [eax],esp
0002431D  342E              xor al,0x2e
0002431F  312E              xor [esi],ebp
00024321  3220              xor ah,[eax]
00024323  3230              xor dh,[eax]
00024325  3038              xor [eax],bh
00024327  3037              xor [edi],dh
00024329  303420            xor [eax],dh
0002432C  285265            sub [edx+0x65],dl
0002432F  64204861          and [fs:eax+0x61],cl
00024333  7420              jz 0x24355
00024335  342E              xor al,0x2e
00024337  312E              xor [esi],ebp
00024339  322D34342900      xor ch,[0x293434]
0002433F  004743            add [edi+0x43],al
00024342  43                inc ebx
00024343  3A20              cmp ah,[eax]
00024345  28474E            sub [edi+0x4e],al
00024348  55                push ebp
00024349  2920              sub [eax],esp
0002434B  342E              xor al,0x2e
0002434D  312E              xor [esi],ebp
0002434F  3220              xor ah,[eax]
00024351  3230              xor dh,[eax]
00024353  3038              xor [eax],bh
00024355  3037              xor [edi],dh
00024357  303420            xor [eax],dh
0002435A  285265            sub [edx+0x65],dl
0002435D  64204861          and [fs:eax+0x61],cl
00024361  7420              jz 0x24383
00024363  342E              xor al,0x2e
00024365  312E              xor [esi],ebp
00024367  322D34342900      xor ch,[0x293434]
0002436D  004743            add [edi+0x43],al
00024370  43                inc ebx
00024371  3A20              cmp ah,[eax]
00024373  28474E            sub [edi+0x4e],al
00024376  55                push ebp
00024377  2920              sub [eax],esp
00024379  342E              xor al,0x2e
0002437B  312E              xor [esi],ebp
0002437D  3220              xor ah,[eax]
0002437F  3230              xor dh,[eax]
00024381  3038              xor [eax],bh
00024383  3037              xor [edi],dh
00024385  303420            xor [eax],dh
00024388  285265            sub [edx+0x65],dl
0002438B  64204861          and [fs:eax+0x61],cl
0002438F  7420              jz 0x243b1
00024391  342E              xor al,0x2e
00024393  312E              xor [esi],ebp
00024395  322D34342900      xor ch,[0x293434]
0002439B  004743            add [edi+0x43],al
0002439E  43                inc ebx
0002439F  3A20              cmp ah,[eax]
000243A1  28474E            sub [edi+0x4e],al
000243A4  55                push ebp
000243A5  2920              sub [eax],esp
000243A7  342E              xor al,0x2e
000243A9  312E              xor [esi],ebp
000243AB  3220              xor ah,[eax]
000243AD  3230              xor dh,[eax]
000243AF  3038              xor [eax],bh
000243B1  3037              xor [edi],dh
000243B3  303420            xor [eax],dh
000243B6  285265            sub [edx+0x65],dl
000243B9  64204861          and [fs:eax+0x61],cl
000243BD  7420              jz 0x243df
000243BF  342E              xor al,0x2e
000243C1  312E              xor [esi],ebp
000243C3  322D34342900      xor ch,[0x293434]
000243C9  00546865          add [eax+ebp*2+0x65],dl
000243CD  204E65            and [esi+0x65],cl
000243D0  7477              jz 0x24449
000243D2  6964652041737365  imul esp,[ebp+0x20],dword 0x65737341
000243DA  6D                insd
000243DB  626C6572          bound ebp,[ebp+0x72]
000243DF  2030              and [eax],dh
000243E1  2E3938            cmp [cs:eax],edi
000243E4  2E3339            xor edi,[cs:ecx]
000243E7  0000              add [eax],al
000243E9  54                push esp
000243EA  6865204E65        push dword 0x654e2065
000243EF  7477              jz 0x24468
000243F1  6964652041737365  imul esp,[ebp+0x20],dword 0x65737341
000243F9  6D                insd
000243FA  626C6572          bound ebp,[ebp+0x72]
000243FE  2030              and [eax],dh
00024400  2E3938            cmp [cs:eax],edi
00024403  2E3339            xor edi,[cs:ecx]
00024406  0000              add [eax],al
00024408  47                inc edi
00024409  43                inc ebx
0002440A  43                inc ebx
0002440B  3A20              cmp ah,[eax]
0002440D  28474E            sub [edi+0x4e],al
00024410  55                push ebp
00024411  2920              sub [eax],esp
00024413  342E              xor al,0x2e
00024415  312E              xor [esi],ebp
00024417  3220              xor ah,[eax]
00024419  3230              xor dh,[eax]
0002441B  3038              xor [eax],bh
0002441D  3037              xor [edi],dh
0002441F  303420            xor [eax],dh
00024422  285265            sub [edx+0x65],dl
00024425  64204861          and [fs:eax+0x61],cl
00024429  7420              jz 0x2444b
0002442B  342E              xor al,0x2e
0002442D  312E              xor [esi],ebp
0002442F  322D34342900      xor ch,[0x293434]
00024435  004743            add [edi+0x43],al
00024438  43                inc ebx
00024439  3A20              cmp ah,[eax]
0002443B  28474E            sub [edi+0x4e],al
0002443E  55                push ebp
0002443F  2920              sub [eax],esp
00024441  342E              xor al,0x2e
00024443  312E              xor [esi],ebp
00024445  3220              xor ah,[eax]
00024447  3230              xor dh,[eax]
00024449  3038              xor [eax],bh
0002444B  3037              xor [edi],dh
0002444D  303420            xor [eax],dh
00024450  285265            sub [edx+0x65],dl
00024453  64204861          and [fs:eax+0x61],cl
00024457  7420              jz 0x24479
00024459  342E              xor al,0x2e
0002445B  312E              xor [esi],ebp
0002445D  322D34342900      xor ch,[0x293434]
00024463  00546865          add [eax+ebp*2+0x65],dl
00024467  204E65            and [esi+0x65],cl
0002446A  7477              jz 0x244e3
0002446C  6964652041737365  imul esp,[ebp+0x20],dword 0x65737341
00024474  6D                insd
00024475  626C6572          bound ebp,[ebp+0x72]
00024479  2030              and [eax],dh
0002447B  2E3938            cmp [cs:eax],edi
0002447E  2E3339            xor edi,[cs:ecx]
00024481  0000              add [eax],al
00024483  47                inc edi
00024484  43                inc ebx
00024485  43                inc ebx
00024486  3A20              cmp ah,[eax]
00024488  28474E            sub [edi+0x4e],al
0002448B  55                push ebp
0002448C  2920              sub [eax],esp
0002448E  342E              xor al,0x2e
00024490  312E              xor [esi],ebp
00024492  3220              xor ah,[eax]
00024494  3230              xor dh,[eax]
00024496  3038              xor [eax],bh
00024498  3037              xor [edi],dh
0002449A  303420            xor [eax],dh
0002449D  285265            sub [edx+0x65],dl
000244A0  64204861          and [fs:eax+0x61],cl
000244A4  7420              jz 0x244c6
000244A6  342E              xor al,0x2e
000244A8  312E              xor [esi],ebp
000244AA  322D34342900      xor ch,[0x293434]
000244B0  004743            add [edi+0x43],al
000244B3  43                inc ebx
000244B4  3A20              cmp ah,[eax]
000244B6  28474E            sub [edi+0x4e],al
000244B9  55                push ebp
000244BA  2920              sub [eax],esp
000244BC  342E              xor al,0x2e
000244BE  312E              xor [esi],ebp
000244C0  3220              xor ah,[eax]
000244C2  3230              xor dh,[eax]
000244C4  3038              xor [eax],bh
000244C6  3037              xor [edi],dh
000244C8  303420            xor [eax],dh
000244CB  285265            sub [edx+0x65],dl
000244CE  64204861          and [fs:eax+0x61],cl
000244D2  7420              jz 0x244f4
000244D4  342E              xor al,0x2e
000244D6  312E              xor [esi],ebp
000244D8  322D34342900      xor ch,[0x293434]
000244DE  004743            add [edi+0x43],al
000244E1  43                inc ebx
000244E2  3A20              cmp ah,[eax]
000244E4  28474E            sub [edi+0x4e],al
000244E7  55                push ebp
000244E8  2920              sub [eax],esp
000244EA  342E              xor al,0x2e
000244EC  312E              xor [esi],ebp
000244EE  3220              xor ah,[eax]
000244F0  3230              xor dh,[eax]
000244F2  3038              xor [eax],bh
000244F4  3037              xor [edi],dh
000244F6  303420            xor [eax],dh
000244F9  285265            sub [edx+0x65],dl
000244FC  64204861          and [fs:eax+0x61],cl
00024500  7420              jz 0x24522
00024502  342E              xor al,0x2e
00024504  312E              xor [esi],ebp
00024506  322D34342900      xor ch,[0x293434]
0002450C  004743            add [edi+0x43],al
0002450F  43                inc ebx
00024510  3A20              cmp ah,[eax]
00024512  28474E            sub [edi+0x4e],al
00024515  55                push ebp
00024516  2920              sub [eax],esp
00024518  342E              xor al,0x2e
0002451A  312E              xor [esi],ebp
0002451C  3220              xor ah,[eax]
0002451E  3230              xor dh,[eax]
00024520  3038              xor [eax],bh
00024522  3037              xor [edi],dh
00024524  303420            xor [eax],dh
00024527  285265            sub [edx+0x65],dl
0002452A  64204861          and [fs:eax+0x61],cl
0002452E  7420              jz 0x24550
00024530  342E              xor al,0x2e
00024532  312E              xor [esi],ebp
00024534  322D34342900      xor ch,[0x293434]
0002453A  004743            add [edi+0x43],al
0002453D  43                inc ebx
0002453E  3A20              cmp ah,[eax]
00024540  28474E            sub [edi+0x4e],al
00024543  55                push ebp
00024544  2920              sub [eax],esp
00024546  342E              xor al,0x2e
00024548  312E              xor [esi],ebp
0002454A  3220              xor ah,[eax]
0002454C  3230              xor dh,[eax]
0002454E  3038              xor [eax],bh
00024550  3037              xor [edi],dh
00024552  303420            xor [eax],dh
00024555  285265            sub [edx+0x65],dl
00024558  64204861          and [fs:eax+0x61],cl
0002455C  7420              jz 0x2457e
0002455E  342E              xor al,0x2e
00024560  312E              xor [esi],ebp
00024562  322D34342900      xor ch,[0x293434]
00024568  004743            add [edi+0x43],al
0002456B  43                inc ebx
0002456C  3A20              cmp ah,[eax]
0002456E  28474E            sub [edi+0x4e],al
00024571  55                push ebp
00024572  2920              sub [eax],esp
00024574  342E              xor al,0x2e
00024576  312E              xor [esi],ebp
00024578  3220              xor ah,[eax]
0002457A  3230              xor dh,[eax]
0002457C  3038              xor [eax],bh
0002457E  3037              xor [edi],dh
00024580  303420            xor [eax],dh
00024583  285265            sub [edx+0x65],dl
00024586  64204861          and [fs:eax+0x61],cl
0002458A  7420              jz 0x245ac
0002458C  342E              xor al,0x2e
0002458E  312E              xor [esi],ebp
00024590  322D34342900      xor ch,[0x293434]
00024596  004743            add [edi+0x43],al
00024599  43                inc ebx
0002459A  3A20              cmp ah,[eax]
0002459C  28474E            sub [edi+0x4e],al
0002459F  55                push ebp
000245A0  2920              sub [eax],esp
000245A2  342E              xor al,0x2e
000245A4  312E              xor [esi],ebp
000245A6  3220              xor ah,[eax]
000245A8  3230              xor dh,[eax]
000245AA  3038              xor [eax],bh
000245AC  3037              xor [edi],dh
000245AE  303420            xor [eax],dh
000245B1  285265            sub [edx+0x65],dl
000245B4  64204861          and [fs:eax+0x61],cl
000245B8  7420              jz 0x245da
000245BA  342E              xor al,0x2e
000245BC  312E              xor [esi],ebp
000245BE  322D34342900      xor ch,[0x293434]
000245C4  004743            add [edi+0x43],al
000245C7  43                inc ebx
000245C8  3A20              cmp ah,[eax]
000245CA  28474E            sub [edi+0x4e],al
000245CD  55                push ebp
000245CE  2920              sub [eax],esp
000245D0  342E              xor al,0x2e
000245D2  312E              xor [esi],ebp
000245D4  3220              xor ah,[eax]
000245D6  3230              xor dh,[eax]
000245D8  3038              xor [eax],bh
000245DA  3037              xor [edi],dh
000245DC  303420            xor [eax],dh
000245DF  285265            sub [edx+0x65],dl
000245E2  64204861          and [fs:eax+0x61],cl
000245E6  7420              jz 0x24608
000245E8  342E              xor al,0x2e
000245EA  312E              xor [esi],ebp
000245EC  322D34342900      xor ch,[0x293434]
000245F2  00546865          add [eax+ebp*2+0x65],dl
000245F6  204E65            and [esi+0x65],cl
000245F9  7477              jz 0x24672
000245FB  6964652041737365  imul esp,[ebp+0x20],dword 0x65737341
00024603  6D                insd
00024604  626C6572          bound ebp,[ebp+0x72]
00024608  2030              and [eax],dh
0002460A  2E3938            cmp [cs:eax],edi
0002460D  2E3339            xor edi,[cs:ecx]
00024610  0000              add [eax],al
00024612  47                inc edi
00024613  43                inc ebx
00024614  43                inc ebx
00024615  3A20              cmp ah,[eax]
00024617  28474E            sub [edi+0x4e],al
0002461A  55                push ebp
0002461B  2920              sub [eax],esp
0002461D  342E              xor al,0x2e
0002461F  312E              xor [esi],ebp
00024621  3220              xor ah,[eax]
00024623  3230              xor dh,[eax]
00024625  3038              xor [eax],bh
00024627  3037              xor [edi],dh
00024629  303420            xor [eax],dh
0002462C  285265            sub [edx+0x65],dl
0002462F  64204861          and [fs:eax+0x61],cl
00024633  7420              jz 0x24655
00024635  342E              xor al,0x2e
00024637  312E              xor [esi],ebp
00024639  322D34342900      xor ch,[0x293434]
0002463F  00546865          add [eax+ebp*2+0x65],dl
00024643  204E65            and [esi+0x65],cl
00024646  7477              jz 0x246bf
00024648  6964652041737365  imul esp,[ebp+0x20],dword 0x65737341
00024650  6D                insd
00024651  626C6572          bound ebp,[ebp+0x72]
00024655  2030              and [eax],dh
00024657  2E3938            cmp [cs:eax],edi
0002465A  2E3339            xor edi,[cs:ecx]
0002465D  0000              add [eax],al
0002465F  47                inc edi
00024660  43                inc ebx
00024661  43                inc ebx
00024662  3A20              cmp ah,[eax]
00024664  28474E            sub [edi+0x4e],al
00024667  55                push ebp
00024668  2920              sub [eax],esp
0002466A  342E              xor al,0x2e
0002466C  312E              xor [esi],ebp
0002466E  3220              xor ah,[eax]
00024670  3230              xor dh,[eax]
00024672  3038              xor [eax],bh
00024674  3037              xor [edi],dh
00024676  303420            xor [eax],dh
00024679  285265            sub [edx+0x65],dl
0002467C  64204861          and [fs:eax+0x61],cl
00024680  7420              jz 0x246a2
00024682  342E              xor al,0x2e
00024684  312E              xor [esi],ebp
00024686  322D34342900      xor ch,[0x293434]
0002468C  004743            add [edi+0x43],al
0002468F  43                inc ebx
00024690  3A20              cmp ah,[eax]
00024692  28474E            sub [edi+0x4e],al
00024695  55                push ebp
00024696  2920              sub [eax],esp
00024698  342E              xor al,0x2e
0002469A  312E              xor [esi],ebp
0002469C  3220              xor ah,[eax]
0002469E  3230              xor dh,[eax]
000246A0  3038              xor [eax],bh
000246A2  3037              xor [edi],dh
000246A4  303420            xor [eax],dh
000246A7  285265            sub [edx+0x65],dl
000246AA  64204861          and [fs:eax+0x61],cl
000246AE  7420              jz 0x246d0
000246B0  342E              xor al,0x2e
000246B2  312E              xor [esi],ebp
000246B4  322D34342900      xor ch,[0x293434]
000246BA  002E              add [esi],ch
000246BC  7368              jnc 0x24726
000246BE  7374              jnc 0x24734
000246C0  7274              jc 0x24736
000246C2  61                popa
000246C3  6200              bound eax,[eax]
000246C5  2E7465            cs jz 0x2472d
000246C8  7874              js 0x2473e
000246CA  002E              add [esi],ch
000246CC  726F              jc 0x2473d
000246CE  6461              fs popa
000246D0  7461              jz 0x24733
000246D2  002E              add [esi],ch
000246D4  6461              fs popa
000246D6  7461              jz 0x24739
000246D8  002E              add [esi],ch
000246DA  627373            bound esi,[ebx+0x73]
000246DD  002E              add [esi],ch
000246DF  636F6D            arpl [edi+0x6d],bp
000246E2  6D                insd
000246E3  656E              gs outsb
000246E5  7400              jz 0x246e7
000246E7  0000              add [eax],al
000246E9  0000              add [eax],al
000246EB  0000              add [eax],al
000246ED  0000              add [eax],al
000246EF  0000              add [eax],al
000246F1  0000              add [eax],al
000246F3  0000              add [eax],al
000246F5  0000              add [eax],al
000246F7  0000              add [eax],al
000246F9  0000              add [eax],al
000246FB  0000              add [eax],al
000246FD  0000              add [eax],al
000246FF  0000              add [eax],al
00024701  0000              add [eax],al
00024703  0000              add [eax],al
00024705  0000              add [eax],al
00024707  0000              add [eax],al
00024709  0000              add [eax],al
0002470B  0000              add [eax],al
0002470D  0000              add [eax],al
0002470F  000B              add [ebx],cl
00024711  0000              add [eax],al
00024713  0001              add [ecx],al
00024715  0000              add [eax],al
00024717  0006              add [esi],al
00024719  0000              add [eax],al
0002471B  0000              add [eax],al
0002471D  0402              add al,0x2
0002471F  0000              add [eax],al
00024721  0400              add al,0x0
00024723  004D30            add [ebp+0x30],cl
00024726  0000              add [eax],al
00024728  0000              add [eax],al
0002472A  0000              add [eax],al
0002472C  0000              add [eax],al
0002472E  0000              add [eax],al
00024730  1000              adc [eax],al
00024732  0000              add [eax],al
00024734  0000              add [eax],al
00024736  0000              add [eax],al
00024738  1100              adc [eax],eax
0002473A  0000              add [eax],al
0002473C  0100              add [eax],eax
0002473E  0000              add [eax],al
00024740  0200              add al,[eax]
00024742  0000              add [eax],al
00024744  50                push eax
00024745  3402              xor al,0x2
00024747  005034            add [eax+0x34],dl
0002474A  0000              add [eax],al
0002474C  830300            add dword [ebx],byte +0x0
0002474F  0000              add [eax],al
00024751  0000              add [eax],al
00024753  0000              add [eax],al
00024755  0000              add [eax],al
00024757  000400            add [eax+eax],al
0002475A  0000              add [eax],al
0002475C  0000              add [eax],al
0002475E  0000              add [eax],al
00024760  1900              sbb [eax],eax
00024762  0000              add [eax],al
00024764  0100              add [eax],eax
00024766  0000              add [eax],al
00024768  0300              add eax,[eax]
0002476A  0000              add [eax],al
0002476C  004002            add [eax+0x2],al
0002476F  0000              add [eax],al
00024771  40                inc eax
00024772  0000              add [eax],al
00024774  C402              les eax,[edx]
00024776  0000              add [eax],al
00024778  0000              add [eax],al
0002477A  0000              add [eax],al
0002477C  0000              add [eax],al
0002477E  0000              add [eax],al
00024780  2000              and [eax],al
00024782  0000              add [eax],al
00024784  0000              add [eax],al
00024786  0000              add [eax],al
00024788  1F                pop ds
00024789  0000              add [eax],al
0002478B  0008              add [eax],cl
0002478D  0000              add [eax],al
0002478F  0003              add [ebx],al
00024791  0000              add [eax],al
00024793  00E0              add al,ah
00024795  42                inc edx
00024796  0200              add al,[eax]
00024798  C44200            les eax,[edx+0x0]
0002479B  0084B801000000    add [eax+edi*4+0x1],al
000247A2  0000              add [eax],al
000247A4  0000              add [eax],al
000247A6  0000              add [eax],al
000247A8  2000              and [eax],al
000247AA  0000              add [eax],al
000247AC  0000              add [eax],al
000247AE  0000              add [eax],al
000247B0  2400              and al,0x0
000247B2  0000              add [eax],al
000247B4  0100              add [eax],eax
000247B6  0000              add [eax],al
000247B8  0000              add [eax],al
000247BA  0000              add [eax],al
000247BC  0000              add [eax],al
000247BE  0000              add [eax],al
000247C0  C44200            les eax,[edx+0x0]
000247C3  00F6              add dh,dh
000247C5  0300              add eax,[eax]
000247C7  0000              add [eax],al
000247C9  0000              add [eax],al
000247CB  0000              add [eax],al
000247CD  0000              add [eax],al
000247CF  0001              add [ecx],al
000247D1  0000              add [eax],al
000247D3  0000              add [eax],al
000247D5  0000              add [eax],al
000247D7  0001              add [ecx],al
000247D9  0000              add [eax],al
000247DB  0003              add [ebx],al
000247DD  0000              add [eax],al
000247DF  0000              add [eax],al
000247E1  0000              add [eax],al
000247E3  0000              add [eax],al
000247E5  0000              add [eax],al
000247E7  00BA4600002D      add [edx+0x2d000046],bh
000247ED  0000              add [eax],al
000247EF  0000              add [eax],al
000247F1  0000              add [eax],al
000247F3  0000              add [eax],al
000247F5  0000              add [eax],al
000247F7  0001              add [ecx],al
000247F9  0000              add [eax],al
000247FB  0000              add [eax],al
000247FD  0000              add [eax],al
000247FF  00                db 0x00
