output = bin
source = src
include = -Iinclude
dependencias = -lftxui-screen -lftxui-dom -lftxui-component
flags = -std=c++2a $(dependencias) $(include)

run : $(output)/brick_bracker
	./$<

$(output)/brick_bracker : $(source)/main.cpp
	g++ -o $@ $< $(flags)