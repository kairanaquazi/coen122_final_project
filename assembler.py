import click
import sys


class Mapper:
    def __init__(self):
        pass

    def parser(self, fpin: str, fpout1) -> None:
        l = []
        with open(fpin, "r") as fp, open(fpout1, "wb") as fpout:
            while line := fp.readline():
                if line.startswith("//"):
                    continue
                if "//" in line:
                    line = line.split("//")[0]
                x = self.exec(line)
                print("Read line:", line, end="")
                print("Created:", x, "\b, as binary:", bin(x))
                print()
                print(x)
                fpout.write(x.to_bytes(4, "big"))
                l.append(x)
        x = []
        for i in l:
            j = bin(i)[2:]
            x.append((32 - len(j)) * "0" + j)
        c=0
        for i in x:
            print(f"data[{c}]=32'b{i};")
            c+=1
        with open(fpout1,"w") as f:
            c=0
            for i in x:
                f.write(f"data[{c}]=32'b{i};\n")
                c+=1

    def exec(self, line: str) -> int:
        line = line.split(" ", 1)
        if len(line) == 1:
            return getattr(self, "NOP")(line[0], [])
        else:
            args = line[1]
        # args = [int(x) for x in "".join(args.split()).split(",")]
        args2 = []
        for x in "".join(args.split()).split(","):

            if x.startswith("x"):
                args2.append(int(x[1:]))
            else:
                args2.append(int(x))
        args = args2
        return getattr(self, line[0].upper())(line[0], args)

    def comb(self, op, rd, rs1, rs2, imm):
        return (op << 28) | (rd << 22) | (rs1 << 16) | (rs2 << 10) | imm

    def NOP(self, op: str, args: list) -> int:
        return self.comb(0, 0, 0, 0, 0)

    def SVPC(self, op: str, args: list) -> int:
        return (15 << 28) | (args[0] << 22) | (args[1] & 0xFFFF)

    def LD(self, op: str, args: list) -> int:
        return self.comb(14, args[0], args[1], 0, 0)

    def ST(self, op: str, args: list) -> int:
        return self.comb(3, 0, args[1], args[0], 0)

    def ADD(self, op: str, args: list) -> int:
        return self.comb(4, args[0], args[1], args[2], 0)

    def ADDI(self, op: str, args: list) -> int:
        print(args)
        return (5 << 28) | (args[0] << 22) | (args[1] << 16) | (args[2] & 0xFFFF)

    def NEG(self, op: str, args: list) -> int:
        return self.comb(6, args[0], args[1], 0, 0)

    def SUB(self, op: str, args: list) -> int:
        return self.comb(7, args[0], args[1], args[2], 0)

    def J(self, op: str, args: list) -> int:
        return self.comb(8, 0, args[0], 0, 0)

    def BRZ(self, op: str, args: list) -> int:
        return self.comb(9, 0, args[0], 0, 0)

    def WAI(self, op: str, args: list) -> int:
        return self.comb(10, args[0], 0, 0, 0)

    def BRN(self, op: str, args: list) -> int:
        return self.comb(11, 0, args[0], 0, 0)

    def MAX(self, op: str, args: list) -> int:
        return self.comb(1, args[0], args[1], args[2], 0)

    def EXIT(self, op: str, args: list) -> int:
        return self.comb(12, 0, 0, 0, 0)


@click.command(help="I can walk and chew gum and I'm the best. (that was made by github copilot lmfao)")
@click.argument("inp", type=click.Path(exists=True))
@click.argument("output", type=click.Path())
def main(inp, output):
    mapper = Mapper()
    mapper.parser(inp, output)


main()
