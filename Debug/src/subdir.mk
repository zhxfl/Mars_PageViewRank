################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/MarsUtils.cpp 

CU_SRCS += \
../src/MarsLib.cu \
../src/MarsScan.cu \
../src/MarsSort.cu \
../src/compare.cu \
../src/main.cu \
../src/map.cu \
../src/reduce.cu 

CU_DEPS += \
./src/MarsLib.d \
./src/MarsScan.d \
./src/MarsSort.d \
./src/compare.d \
./src/main.d \
./src/map.d \
./src/reduce.d 

OBJS += \
./src/MarsLib.o \
./src/MarsScan.o \
./src/MarsSort.o \
./src/MarsUtils.o \
./src/compare.o \
./src/main.o \
./src/map.o \
./src/reduce.o 

CPP_DEPS += \
./src/MarsUtils.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.cu
	@echo 'Building file: $<'
	@echo 'Invoking: NVCC Compiler'
	/usr/local/cuda-5.5/bin/nvcc -I"/usr/local/cuda-5.5/samples/common/inc" -I"/home/zhxfl/cuda-workspace/PageViewRank" -G -g -O0 -gencode arch=compute_20,code=sm_21 -gencode arch=compute_35,code=sm_35 -odir "src" -M -o "$(@:%.o=%.d)" "$<"
	/usr/local/cuda-5.5/bin/nvcc --device-c -G -I"/usr/local/cuda-5.5/samples/common/inc" -I"/home/zhxfl/cuda-workspace/PageViewRank" -O0 -g -gencode arch=compute_20,code=sm_21 -gencode arch=compute_35,code=compute_35  -x cu -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/%.o: ../src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: NVCC Compiler'
	/usr/local/cuda-5.5/bin/nvcc -I"/usr/local/cuda-5.5/samples/common/inc" -I"/home/zhxfl/cuda-workspace/PageViewRank" -G -g -O0 -gencode arch=compute_20,code=sm_21 -gencode arch=compute_35,code=sm_35 -odir "src" -M -o "$(@:%.o=%.d)" "$<"
	/usr/local/cuda-5.5/bin/nvcc -I"/usr/local/cuda-5.5/samples/common/inc" -I"/home/zhxfl/cuda-workspace/PageViewRank" -G -g -O0 --compile  -x c++ -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


