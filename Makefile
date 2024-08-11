SRC_DIR := src

CXX := clang++-18
LD  := lld-18
CXXFLAGS := -stdlib=libc++ -std=c++23 -fuse-ld=$(LD)
LDFLAGS  := 

offnariscv-vm: src/main.cc
	$(CXX) $(CXXFLAGS) -o $@ $< $(LDFLAGS)
