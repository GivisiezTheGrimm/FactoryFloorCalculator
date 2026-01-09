################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/bcd7seg.c \
../src/helloworld.c \
../src/numdisp.c \
../src/platform.c \
../src/teste.c 

LD_SRCS += \
../src/lscript.ld 

OBJS += \
./src/bcd7seg.o \
./src/helloworld.o \
./src/numdisp.o \
./src/platform.o \
./src/teste.o 

C_DEPS += \
./src/bcd7seg.d \
./src/helloworld.d \
./src/numdisp.d \
./src/platform.d \
./src/teste.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze gcc compiler'
	mb-gcc -Wall -O0 -g3 -c -fmessage-length=0 -I../../calc_bsp/microp/include -mno-xl-reorder -mlittle-endian -mcpu=v8.40.a -mxl-soft-mul -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


