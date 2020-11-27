# debugger_widget.py

from core.utils import *

import time
import pygame
pygame.init ( )

class Ram ( ) :
    def __init__ ( self, x, y, w, h, j0 ) :
        self.x, self.y = x, y
        self.w, self.h = w, h

        self.j = j0
        self.i0, self.i1 = 0, 64

        self.S = self.w // (self.i1-self.i0), self.h // 16


        self.colors = [ ( 0, 0, 0 ), ( 255, 255, 255 ), ( 50, 50, 50 ), ( 200, 200, 200 ) ]
        self.bgcolor = ( 255, 155, 155 )

    def draw ( self, screen, ext ) :
        i0 = max ( 0, self.i0 )
        i1 = min ( self.i1, len(ext.ram) // 16 )

        pygame.draw.rect ( screen, self.bgcolor, ( self.x, self.y, self.w, self.h ) )

        for i in range(0,i1-i0) :
            for k in range(16) :
                pygame.draw.rect ( screen, self.colors[ext.ram[(16*(i0+i))+k] + 2 *((i+i0)==self.j)], ( self.x + self.S[0] * i, self.y + self.S[1] * k, self.S[0], self.S[1] ) )

    def on_click ( self, pos, ext ) :
        dx, dy = pos[0] - self.x, pos[1] - self.y
        if 0 <= dx <= self.w and 0 <= dy <= self.h :
            i = dx // self.S[0]
            j = dy // self.S[1]
            if self.i0 <= i < self.i1 :
                ext.ram[(16*(self.i0+i))+j] = not ( ext.ram[(16*(self.i0+i))+j]  )

class Rom ( ) :
    def __init__ ( self, x, y, w, h, j0 ) :
        self.x, self.y = x, y
        self.w, self.h = w, h

        self.j = j0
        self.i0, self.i1 = 0, 16

        self.S = self.w // (self.i1-self.i0), self.h // 16

        self.font = pygame.font.SysFont ( "arial", 16 )
        self.colors = [ ( 0, 0, 0 ), ( 255, 255, 255 ), ( 50, 50, 50 ), ( 200, 200, 200 ) ]
        self.bgcolor = ( 255, 155, 155 )

    def draw ( self, screen, ext ) :
        i0 = max ( 0, self.i0 )
        i1 = min ( self.i1, len(ext.rom) // 16 )

        pygame.draw.rect ( screen, self.bgcolor, ( self.x, self.y, self.w, self.h ) )

        for i in range(0,i1-i0) :
            screen.blit ( self.font.render ( self.opcode ( ext.rom[(i+i0)*16:(i+i0)*16+16], ext ), True, ( 0, 0, 0 ) ), ( self.x + self.w + 5, self.y + self.S[1] * i ) )
            for k in range(16) :
                pygame.draw.rect ( screen, self.colors[ext.rom[(16*(i0+i))+k] + 2 * ((i+i0)==self.j)], ( self.x + self.S[0] * k, self.y + self.S[1] * i, self.S[0], self.S[1] ) )

    def on_click ( self, pos, ext ) :
        dx, dy = pos[0] - self.x, pos[1] - self.y
        if 0 <= dx <= self.w and 0 <= dy <= self.h :
            j = dx // self.S[0]
            i = dy // self.S[1]
            if self.i0 <= i < self.i1 :
                ext.rom[(16*(self.i0+i))+j] = not ( ext.rom[(16*(self.i0+i))+j]  )

    def opcode ( self, op, ext ) :
        n = ext.int_of_ab ( op[:4] )
        r1 = ext.int_of_ab ( op[4:7] )
        r2 = ext.int_of_ab ( op[7:10] )
        
        regs = [ "%rax",
                 "%rbx",
                 "%rcx",
                 "%rdx",
                 "%rsp",
                 "%flg",
                 "%rip",
                 "%rbp" ]

        if n == 0 : return ""
        elif n == 1 : return "swap " + regs[r1] + ", " + regs[r2]
        elif n == 2 : return "push " + regs[r1]
        elif n == 3 : return "pop " + regs[r1]
        elif n == 4 : return "mov " + regs[r2] + ", " + regs[r1]
        elif n == 5 : return "push $" + str ( int_of_ab ( op[7:] ) )
        elif n == 6 and op[15] : return "jmp " + regs[r1]
        elif n == 6 and op[14] : return "jne " + regs[r1]
        elif n == 6 and op[13] : return "jleq " + regs[r1]
        elif n == 6 and op[12] : return "jeq " + regs[r1]        
        elif n == 8 and op[15] : return "add " + regs[r1] + ", " + regs[r2]
        elif n == 8 and op[14] : return "sub " + regs[r1] + ", " + regs[r2]
        elif n == 8 and op[13] : return "and " + regs[r1] + ", " + regs[r2]
        elif n == 8 and op[12] : return "or " + regs[r1] + ", " + regs[r2]
        elif n == 8 and op[11] : return "xor " + regs[r1] + ", " + regs[r2]
        elif n == 8 and op[10] : return "cmp "  + regs[r1] + ", " + regs[r2]
        elif n == 9 and op[15] : return "not " + regs[r1]
        elif n == 9 and op[14] : return "neg " + regs[r1]
        elif n == 7 and op[15] : return "shift " + regs[r1] + ", " + regs[r2]
        elif n == 10 : return "mov $" + str ( int_of_ab ( op[7:] ) ) + ", " + regs[r1]
        elif n == 11 : return "mov " + regs[r2] + ", (" + regs[r1] + ")"
        elif n == 12 : return "mov (" + regs[r1] + "), " + regs[r2]
        elif n == 13 : return "int"
        elif n == 14 : return "select"
        return 'op(' + str ( n ) + ', ' + regs[r1] + ',' + regs[r2] + ')'

class Reg16 ( ) :
    def __init__ ( self, x, y, w, h, reg ) :
        self.x, self.y = x, y
        self.w, self.h = w, h

        self.reg = reg

        self.S = self.w // 16, self.h

        self.colors = [ ( 0, 0, 0 ), ( 255, 255, 255 ) ]
        self.bgcolor = ( 10, 10, 10 )

        self.font = pygame.font.SysFont ( "arial", 16 )

    def draw ( self, screen, ext ) :
        screen.blit ( self.font.render ( self.reg + ' :', True, self.bgcolor ), ( self.x - 40, self.y ) )
        for k in range(16) :
            pygame.draw.rect ( screen, self.colors[ext.reg[self.reg+'_'+str(k)]], ( self.x + self.S[0]*k, self.y, self.S[0], self.S[1] ) )

    def on_click ( self, pos, ext ) :
        dx, dy = pos[0] - self.x, pos[1] - self.y
        if 0 <= dx <= self.w and 0 <= dy <= self.h :
            k = dx // self.S[0]
            ext.reg[self.reg+'_'+str(k)] = not ( ext.reg[self.reg+'_'+str(k)] )

class Speed ( ) :
    def __init__ ( self, x, y, w, h, speeds = { }, speed = 0.5 ) :
        self.x, self.y = x, y
        self.w, self.h = w, h

        self.speeds = speeds
        self.speed = speed

        self.t0 = time.perf_counter ( )
        self.font = pygame.font.SysFont ( "arial", 16 )

    def draw ( self, screen, ext ) :
        self.t1 = time.perf_counter ( )
        f = 1 / ( self.t1 - self.t0 )
        if self.speed > 0 :
            f = min ( f, 1 / self.speed )

        screen.blit ( self.font.render ( get_freq ( f ), True, (0,0,0) ), ( self.x, self.y - 20 ) )
        self.t0 = self.t1

        for i, s in enumerate ( self.speeds ) :
            pygame.draw.rect ( screen, self.speeds[s][s==self.speed], ( self.x + self.w * i, self.y, self.w, self.h ) )

    def on_click ( self, pos, ext ) :
        dx = pos[0] - self.x
        dy = pos[1] - self.y
        if 0 <= dx <= self.w * len ( self.speeds ) and 0 <= dy <= self.h :
            k = dx // self.w
            self.speed = list(self.speeds.keys())[k]

class Screen ( ) :
    def __init__ ( self, x, y ) :
        self.x, self.y = x, y
        self.scr = pygame.Surface ( ( 128, 128 ) )

    def draw ( self, screen, ext ) :
        screen.blit ( self.scr, ( self.x, self.y ) )

    def on_click ( self, pos, ext ) :
        pass

class Helper ( ) :
    def __init__ ( self, x, y ) :
        self.x, self.y = x, y

        self.font = pygame.font.SysFont ( "arial", 16 )
        self.colors = [ ( 0, 0, 0 ), ( 255, 255, 255 ) ]

    def draw ( self, screen, ext ) :
        base = { '0000' : '',
                 '1000' : 'swapAB',
                 '0100' : 'pushB',
                 '1100' : 'popA',
                 '0010' : 'RSP <- B',
                 '1010' : 'B <- RSP',
                 '0110' : 'JMPc',
                 '1110' : 'B <- RIP',
                 '0001' : 'B <- A op B',
                 '1001' : 'B <- op B',
                 '0101' : 'B <- c',
                 '1101' : 'printB' }
        for i, b in enumerate(base) :
            for j, bit in enumerate(b) :
                pygame.draw.rect ( screen, self.colors[bit=='1'], ( self.x + j * 20, self.y + i * 20, 20, 20 ) )
            screen.blit ( self.font.render ( base[b], True, (0,0,0) ), ( self.x + 85, self.y + i * 20 ) )

    def on_click ( self, pos, ext ) :
        pass

    def opcode ( self, op, ext ) :
        n = ext.int_of_ab ( op[:4][::-1] )
        m = ext.int_of_ab ( op[4:] )
        if m >= 2**11 : m = -(ext.int_of_ab ( [ not(b) for b in op[4:] ] ) + 1)

        if n == 0 : return ""
        elif n == 1 : return "B <-> A"
        elif n == 2 : return "pushB"
        elif n == 3 : return "popA"
        elif n == 4 : return "RSP <- B"
        elif n == 5 : return "B <- RSP" 
        elif n == 6 : 
            if op[13] : return "JMPG B"
            elif op[14] : return "JMPZ B"
            elif op[15] : return "JMP B"
            else : return "JMP? B"
        elif n == 7 :return "B <- RIP"
        elif n == 8 :
            if op[11] : return "B <- A ^ B"
            elif op[12] : return "B <- A or B"
            elif op[13] : return "B <- A and B"
            elif op[14] : return "B <- A - B"
            elif op[15] : return "B <- A + B"
            else : return "test"
        elif n == 9 :
            if op[13] : return "B <- 2B"
            elif op[14] : return "B <- neg(B)"
            elif op[15] : return "B <- not(B)"
            else : return "test"
        elif n == 10 :
            return "B <- " + str(m)
        elif n == 11 :
            return "print(B)"
        return 'op(' + str ( n ) + ', ' + str(m) + ')'