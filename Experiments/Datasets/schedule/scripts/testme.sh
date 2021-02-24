#!/bin/sh
#
# STImpL Test Script generated by 
# MakeTestScript (modified by Shin) on Feb 24, 2021 at 7:04:02 PM
# by the command: 
#  java sir.mts.MakeTestScript "-en" "./schedule" "-gc" "schedule.c" "-sf" "../t
#  estplans.alt/testplans-bigcov/s750" "-sn" "testme.sh" "-tg" "sir.mts.generato
#  rs.BourneShellScriptGenerator"

echo ">>>>>>>>running test 1"
./schedule 4 0 6 < input/inp.20  > ../outputs/t1
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000001
rm *.gcda

echo ">>>>>>>>running test 2"
./schedule 0 2 2 < input/inp.97  > ../outputs/t2
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000002
rm *.gcda

echo ">>>>>>>>running test 3"
./schedule 1 10 6 < input/inp.1  > ../outputs/t3
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000003
rm *.gcda

echo ">>>>>>>>running test 4"
./schedule 6 0 1 < input/inp.26  > ../outputs/t4
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000004
rm *.gcda

echo ">>>>>>>>running test 5"
./schedule 2 9 9 < input/inp.25  > ../outputs/t5
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000005
rm *.gcda

echo ">>>>>>>>running test 6"
./schedule 7 3 7 < input/inp.12  > ../outputs/t6
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000006
rm *.gcda

echo ">>>>>>>>running test 7"
./schedule 8 3 8 < input/inp.92  > ../outputs/t7
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000007
rm *.gcda

echo ">>>>>>>>running test 8"
./schedule 2 2 2 < input/inp.51  > ../outputs/t8
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000008
rm *.gcda

echo ">>>>>>>>running test 9"
./schedule 10 4 3 < input/inp.35  > ../outputs/t9
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000009
rm *.gcda

echo ">>>>>>>>running test 10"
./schedule 1 3 8 < input/inp.65  > ../outputs/t10
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000010
rm *.gcda

echo ">>>>>>>>running test 11"
./schedule 5 0 10 < input/inp.52  > ../outputs/t11
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000011
rm *.gcda

echo ">>>>>>>>running test 12"
./schedule 8 8 9 < input/inp.89  > ../outputs/t12
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000012
rm *.gcda

echo ">>>>>>>>running test 13"
./schedule 4 10 7 < input/inp.66  > ../outputs/t13
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000013
rm *.gcda

echo ">>>>>>>>running test 14"
./schedule 0 0 9 < input/inp.63  > ../outputs/t14
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000014
rm *.gcda

echo ">>>>>>>>running test 15"
./schedule 2 2 5 < input/inp.25  > ../outputs/t15
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000015
rm *.gcda

echo ">>>>>>>>running test 16"
./schedule 8 5 8 < input/inp.19  > ../outputs/t16
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000016
rm *.gcda

echo ">>>>>>>>running test 17"
./schedule 2 6 10 < input/inp.20  > ../outputs/t17
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000017
rm *.gcda

echo ">>>>>>>>running test 18"
./schedule 8 0 3 < input/inp.80  > ../outputs/t18
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000018
rm *.gcda

echo ">>>>>>>>running test 19"
./schedule 0 8 8 < input/inp.34  > ../outputs/t19
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000019
rm *.gcda

echo ">>>>>>>>running test 20"
./schedule 4 2 3 < input/tc.16  > ../outputs/t20
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000020
rm *.gcda

echo ">>>>>>>>running test 21"
./schedule 0 0 3 < input/tc.27  > ../outputs/t21
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000021
rm *.gcda

echo ">>>>>>>>running test 22"
./schedule 4 2 4 < input/tc.38  > ../outputs/t22
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000022
rm *.gcda

echo ">>>>>>>>running test 23"
./schedule 0 0 0 < input/tc.40  > ../outputs/t23
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000023
rm *.gcda

echo ">>>>>>>>running test 24"
./schedule 4 4 1 < input/tc.48  > ../outputs/t24
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000024
rm *.gcda

echo ">>>>>>>>running test 25"
./schedule 0 0 0 < input/tc.72  > ../outputs/t25
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000025
rm *.gcda

echo ">>>>>>>>running test 26"
./schedule 0 0 2 < input/tc.79  > ../outputs/t26
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000026
rm *.gcda

echo ">>>>>>>>running test 27"
./schedule 0 0 0 < input/tc.100  > ../outputs/t27
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000027
rm *.gcda

echo ">>>>>>>>running test 28"
./schedule 0 0 0 < input/tc.135  > ../outputs/t28
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000028
rm *.gcda

echo ">>>>>>>>running test 29"
./schedule 0 0 0 < input/tc.137  > ../outputs/t29
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000029
rm *.gcda

echo ">>>>>>>>running test 30"
./schedule 0 0 0 < input/tc.142  > ../outputs/t30
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000030
rm *.gcda

echo ">>>>>>>>running test 31"
./schedule 0 0 0 < input/tc.146  > ../outputs/t31
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000031
rm *.gcda

echo ">>>>>>>>running test 32"
./schedule 4 3 1 < input/tc.173  > ../outputs/t32
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000032
rm *.gcda

echo ">>>>>>>>running test 33"
./schedule 0 0 0 < input/tc.214  > ../outputs/t33
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000033
rm *.gcda

echo ">>>>>>>>running test 34"
./schedule 5 5 1 < input/dat024  > ../outputs/t34
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000034
rm *.gcda

echo ">>>>>>>>running test 35"
./schedule 2 1 3 < input/dat025  > ../outputs/t35
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000035
rm *.gcda

echo ">>>>>>>>running test 36"
./schedule 1 1 3 < input/dat029  > ../outputs/t36
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000036
rm *.gcda

echo ">>>>>>>>running test 37"
./schedule 5 3 0 < input/dat030  > ../outputs/t37
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000037
rm *.gcda

echo ">>>>>>>>running test 38"
./schedule 2 2 1 < input/dat033  > ../outputs/t38
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000038
rm *.gcda

echo ">>>>>>>>running test 39"
./schedule 0 1 0 < input/dat079  > ../outputs/t39
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000039
rm *.gcda

echo ">>>>>>>>running test 40"
./schedule 5 5 4 < input/dat090  > ../outputs/t40
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000040
rm *.gcda

echo ">>>>>>>>running test 41"
./schedule 5 4 1 < input/dat096  > ../outputs/t41
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000041
rm *.gcda

echo ">>>>>>>>running test 42"
./schedule 2 4 1 < input/dat105  > ../outputs/t42
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000042
rm *.gcda

echo ">>>>>>>>running test 43"
./schedule 0 5 3 < input/dat107  > ../outputs/t43
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000043
rm *.gcda

echo ">>>>>>>>running test 44"
./schedule 4 2 3 < input/dat120  > ../outputs/t44
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000044
rm *.gcda

echo ">>>>>>>>running test 45"
./schedule 3 2 2 < input/dat137  > ../outputs/t45
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000045
rm *.gcda

echo ">>>>>>>>running test 46"
./schedule 4 1 5 < input/dat164  > ../outputs/t46
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000046
rm *.gcda

echo ">>>>>>>>running test 47"
./schedule 1 0 1 < input/dat167  > ../outputs/t47
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000047
rm *.gcda

echo ">>>>>>>>running test 48"
./schedule 2 3 0 < input/dat169  > ../outputs/t48
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000048
rm *.gcda

echo ">>>>>>>>running test 49"
./schedule 2 2 0 < input/dat181  > ../outputs/t49
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000049
rm *.gcda

echo ">>>>>>>>running test 50"
./schedule 1 4 5 < input/dat186  > ../outputs/t50
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000050
rm *.gcda

echo ">>>>>>>>running test 51"
./schedule 5 3 2 < input/dat193  > ../outputs/t51
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000051
rm *.gcda

echo ">>>>>>>>running test 52"
./schedule 4 4 1 < input/dat194  > ../outputs/t52
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000052
rm *.gcda

echo ">>>>>>>>running test 53"
./schedule 2 4 3 < input/dat210  > ../outputs/t53
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000053
rm *.gcda

echo ">>>>>>>>running test 54"
./schedule 0 5 4 < input/dat218  > ../outputs/t54
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000054
rm *.gcda

echo ">>>>>>>>running test 55"
./schedule 1 2 5 < input/dat220  > ../outputs/t55
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000055
rm *.gcda

echo ">>>>>>>>running test 56"
./schedule 0 4 1 < input/dat227  > ../outputs/t56
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000056
rm *.gcda

echo ">>>>>>>>running test 57"
./schedule 5 2 4 < input/dat233  > ../outputs/t57
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000057
rm *.gcda

echo ">>>>>>>>running test 58"
./schedule 4 2 2 < input/dat234  > ../outputs/t58
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000058
rm *.gcda

echo ">>>>>>>>running test 59"
./schedule 3 1 3 < input/dat236  > ../outputs/t59
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000059
rm *.gcda

echo ">>>>>>>>running test 60"
./schedule 3 4 2 < input/dat242  > ../outputs/t60
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000060
rm *.gcda

echo ">>>>>>>>running test 61"
./schedule 0 2 1 < input/dat252  > ../outputs/t61
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000061
rm *.gcda

echo ">>>>>>>>running test 62"
./schedule 1 3 3 < input/dat257  > ../outputs/t62
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000062
rm *.gcda

echo ">>>>>>>>running test 63"
./schedule 1 1 3 < input/dat263  > ../outputs/t63
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000063
rm *.gcda

echo ">>>>>>>>running test 64"
./schedule 4 0 1 < input/dat266  > ../outputs/t64
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000064
rm *.gcda

echo ">>>>>>>>running test 65"
./schedule 5 4 1 < input/dat269  > ../outputs/t65
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000065
rm *.gcda

echo ">>>>>>>>running test 66"
./schedule 2 1 0 < input/dat271  > ../outputs/t66
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000066
rm *.gcda

echo ">>>>>>>>running test 67"
./schedule 2 1 5 < input/dat294  > ../outputs/t67
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000067
rm *.gcda

echo ">>>>>>>>running test 68"
./schedule 4 2 5 < input/dat310  > ../outputs/t68
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000068
rm *.gcda

echo ">>>>>>>>running test 69"
./schedule 3 3 2 < input/dat319  > ../outputs/t69
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000069
rm *.gcda

echo ">>>>>>>>running test 70"
./schedule 0 4 3 < input/dat329  > ../outputs/t70
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000070
rm *.gcda

echo ">>>>>>>>running test 71"
./schedule 4 1 5 < input/dat342  > ../outputs/t71
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000071
rm *.gcda

echo ">>>>>>>>running test 72"
./schedule 5 0 1 < input/dat347  > ../outputs/t72
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000072
rm *.gcda

echo ">>>>>>>>running test 73"
./schedule 2 1 2 < input/dat368  > ../outputs/t73
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000073
rm *.gcda

echo ">>>>>>>>running test 74"
./schedule 0 5 4 < input/dat375  > ../outputs/t74
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000074
rm *.gcda

echo ">>>>>>>>running test 75"
./schedule 4 4 0 < input/dat383  > ../outputs/t75
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000075
rm *.gcda

echo ">>>>>>>>running test 76"
./schedule 2 5 5 < input/dat384  > ../outputs/t76
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000076
rm *.gcda

echo ">>>>>>>>running test 77"
./schedule 1 3 0 < input/dat393  > ../outputs/t77
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000077
rm *.gcda

echo ">>>>>>>>running test 78"
./schedule 2 5 4 < input/dat398  > ../outputs/t78
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000078
rm *.gcda

echo ">>>>>>>>running test 79"
./schedule 0 1 5 < input/dat414  > ../outputs/t79
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000079
rm *.gcda

echo ">>>>>>>>running test 80"
./schedule 5 1 4 < input/dat418  > ../outputs/t80
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000080
rm *.gcda

echo ">>>>>>>>running test 81"
./schedule 4 3 3 < input/dat419  > ../outputs/t81
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000081
rm *.gcda

echo ">>>>>>>>running test 82"
./schedule 0 3 0 < input/dat426  > ../outputs/t82
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000082
rm *.gcda

echo ">>>>>>>>running test 83"
./schedule 5 1 0 < input/dat440  > ../outputs/t83
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000083
rm *.gcda

echo ">>>>>>>>running test 84"
./schedule 3 2 1 < input/dat456  > ../outputs/t84
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000084
rm *.gcda

echo ">>>>>>>>running test 85"
./schedule 1 5 5 < input/dat462  > ../outputs/t85
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000085
rm *.gcda

echo ">>>>>>>>running test 86"
./schedule 1 0 5 < input/dat473  > ../outputs/t86
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000086
rm *.gcda

echo ">>>>>>>>running test 87"
./schedule 5 5 0 < input/dat484  > ../outputs/t87
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000087
rm *.gcda

echo ">>>>>>>>running test 88"
./schedule 2 1 3 < input/dat486  > ../outputs/t88
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000088
rm *.gcda

echo ">>>>>>>>running test 89"
./schedule 1 0 3 < input/dat509  > ../outputs/t89
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000089
rm *.gcda

echo ">>>>>>>>running test 90"
./schedule 5 2 4 < input/dat512  > ../outputs/t90
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000090
rm *.gcda

echo ">>>>>>>>running test 91"
./schedule 4 0 3 < input/dat526  > ../outputs/t91
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000091
rm *.gcda

echo ">>>>>>>>running test 92"
./schedule 2 4 5 < input/dat544  > ../outputs/t92
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000092
rm *.gcda

echo ">>>>>>>>running test 93"
./schedule 2 5 2 < input/dat565  > ../outputs/t93
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000093
rm *.gcda

echo ">>>>>>>>running test 94"
./schedule 4 0 5 < input/dat569  > ../outputs/t94
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000094
rm *.gcda

echo ">>>>>>>>running test 95"
./schedule 1 4 2 < input/dat570  > ../outputs/t95
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000095
rm *.gcda

echo ">>>>>>>>running test 96"
./schedule 0 0 5 < input/dat574  > ../outputs/t96
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000096
rm *.gcda

echo ">>>>>>>>running test 97"
./schedule 2 1 5 < input/dat575  > ../outputs/t97
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000097
rm *.gcda

echo ">>>>>>>>running test 98"
./schedule 5 1 0 < input/dat588  > ../outputs/t98
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000098
rm *.gcda

echo ">>>>>>>>running test 99"
./schedule 3 5 3 < input/dat626  > ../outputs/t99
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000099
rm *.gcda

echo ">>>>>>>>running test 100"
./schedule 4 5 1 < input/dat637  > ../outputs/t100
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000100
rm *.gcda

echo ">>>>>>>>running test 101"
./schedule 2 5 0 < input/dat642  > ../outputs/t101
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000101
rm *.gcda

echo ">>>>>>>>running test 102"
./schedule 2 5 4 < input/dat653  > ../outputs/t102
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000102
rm *.gcda

echo ">>>>>>>>running test 103"
./schedule 3 5 1 < input/dat675  > ../outputs/t103
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000103
rm *.gcda

echo ">>>>>>>>running test 104"
./schedule 2 3 1 < input/dat678  > ../outputs/t104
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000104
rm *.gcda

echo ">>>>>>>>running test 105"
./schedule 2 5 1 < input/dat680  > ../outputs/t105
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000105
rm *.gcda

echo ">>>>>>>>running test 106"
./schedule 5 2 4 < input/dat688  > ../outputs/t106
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000106
rm *.gcda

echo ">>>>>>>>running test 107"
./schedule 2 5 4 < input/dat721  > ../outputs/t107
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000107
rm *.gcda

echo ">>>>>>>>running test 108"
./schedule 4 4 1 < input/dat722  > ../outputs/t108
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000108
rm *.gcda

echo ">>>>>>>>running test 109"
./schedule 2 0 3 < input/dat726  > ../outputs/t109
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000109
rm *.gcda

echo ">>>>>>>>running test 110"
./schedule 5 3 0 < input/dat727  > ../outputs/t110
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000110
rm *.gcda

echo ">>>>>>>>running test 111"
./schedule 0 5 1 < input/dat730  > ../outputs/t111
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000111
rm *.gcda

echo ">>>>>>>>running test 112"
./schedule 0 4 4 < input/dat747  > ../outputs/t112
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000112
rm *.gcda

echo ">>>>>>>>running test 113"
./schedule 1 1 1 < input/dat773  > ../outputs/t113
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000113
rm *.gcda

echo ">>>>>>>>running test 114"
./schedule 0 3 0 < input/dat775  > ../outputs/t114
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000114
rm *.gcda

echo ">>>>>>>>running test 115"
./schedule 3 1 2 < input/dat780  > ../outputs/t115
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000115
rm *.gcda

echo ">>>>>>>>running test 116"
./schedule 4 3 5 < input/dat786  > ../outputs/t116
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000116
rm *.gcda

echo ">>>>>>>>running test 117"
./schedule 2 4 1 < input/dat794  > ../outputs/t117
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000117
rm *.gcda

echo ">>>>>>>>running test 118"
./schedule 1 1 1 < input/ad.1  > ../outputs/t118
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000118
rm *.gcda

echo ">>>>>>>>running test 119"
./schedule 3 5 9 < input/add.95  > ../outputs/t119
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000119
rm *.gcda

echo ">>>>>>>>running test 120"
./schedule 1 3 10 < input/add.100  > ../outputs/t120
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000120
rm *.gcda

echo ">>>>>>>>running test 121"
./schedule 4 10 7 < input/add.83  > ../outputs/t121
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000121
rm *.gcda

echo ">>>>>>>>running test 122"
./schedule 2 4 3 < input/add.37  > ../outputs/t122
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000122
rm *.gcda

echo ">>>>>>>>running test 123"
./schedule 4 8 9 < input/add.70  > ../outputs/t123
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000123
rm *.gcda

echo ">>>>>>>>running test 124"
./schedule 9 1 6 < input/add.83  > ../outputs/t124
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000124
rm *.gcda

echo ">>>>>>>>running test 125"
./schedule 8 8 0 < input/add.54  > ../outputs/t125
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000125
rm *.gcda

echo ">>>>>>>>running test 126"
./schedule 2 10 7 < input/add.91  > ../outputs/t126
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000126
rm *.gcda

echo ">>>>>>>>running test 127"
./schedule 10 10 5 < input/add.89  > ../outputs/t127
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000127
rm *.gcda

echo ">>>>>>>>running test 128"
./schedule 2 8 0 < input/adt.57  > ../outputs/t128
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000128
rm *.gcda

echo ">>>>>>>>running test 129"
./schedule 3 1 1 < input/adt.54  > ../outputs/t129
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000129
rm *.gcda

echo ">>>>>>>>running test 130"
./schedule 6 0 6 < input/adt.21  > ../outputs/t130
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000130
rm *.gcda

echo ">>>>>>>>running test 131"
./schedule 8 9 0 < input/inp.hf.12  > ../outputs/t131
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000131
rm *.gcda

echo ">>>>>>>>running test 132"
./schedule 0 4 1 < input/inp.hf.19  > ../outputs/t132
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000132
rm *.gcda

echo ">>>>>>>>running test 133"
./schedule 7 1 4 < input/adt.200  > ../outputs/t133
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000133
rm *.gcda

echo ">>>>>>>>running test 134"
./schedule 1 8 5 < input/adt.124  > ../outputs/t134
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000134
rm *.gcda

echo ">>>>>>>>running test 135"
./schedule 1 0 3 < input/adt.174  > ../outputs/t135
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000135
rm *.gcda

echo ">>>>>>>>running test 136"
./schedule 7 2 1 < input/adt.117  > ../outputs/t136
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000136
rm *.gcda

echo ">>>>>>>>running test 137"
./schedule 8 9 4 < input/adt.100  > ../outputs/t137
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000137
rm *.gcda

echo ">>>>>>>>running test 138"
./schedule 0 2 5 < input/adt.146  > ../outputs/t138
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000138
rm *.gcda

echo ">>>>>>>>running test 139"
./schedule 1 3 9 < input/adt.159  > ../outputs/t139
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000139
rm *.gcda

echo ">>>>>>>>running test 140"
./schedule 3 3 5 < input/adt.118  > ../outputs/t140
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000140
rm *.gcda

echo ">>>>>>>>running test 141"
./schedule 7 0 1 < input/adt.114  > ../outputs/t141
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000141
rm *.gcda

echo ">>>>>>>>running test 142"
./schedule 4 1 0 < input/dat054  > ../outputs/t142
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000142
rm *.gcda

echo ">>>>>>>>running test 143"
./schedule 0 0 0 < input/nt.12  > ../outputs/t143
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000143
rm *.gcda

echo ">>>>>>>>running test 144"
./schedule 0 0 0 < input/nt.14  > ../outputs/t144
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000144
rm *.gcda

echo ">>>>>>>>running test 145"
./schedule 0 0 0 < input/nt.23  > ../outputs/t145
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000145
rm *.gcda

echo ">>>>>>>>running test 146"
./schedule 1 0 0 < input/dat185  > ../outputs/t146
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000146
rm *.gcda

echo ">>>>>>>>running test 147"
./schedule 1 2 2 < input/dat557  > ../outputs/t147
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000147
rm *.gcda

echo ">>>>>>>>running test 148"
./schedule 10 5 0 < input/add.312  > ../outputs/t148
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000148
rm *.gcda

echo ">>>>>>>>running test 149"
./schedule 2 1 5 < input/add.343  > ../outputs/t149
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000149
rm *.gcda

echo ">>>>>>>>running test 150"
./schedule 7 10 2 < input/add.302  > ../outputs/t150
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000150
rm *.gcda

echo ">>>>>>>>running test 151"
./schedule 2 3 8 < input/add.305  > ../outputs/t151
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000151
rm *.gcda

echo ">>>>>>>>running test 152"
./schedule 7 2 9 < input/lu5  > ../outputs/t152
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000152
rm *.gcda

echo ">>>>>>>>running test 153"
./schedule 3 10 5 < input/lu13  > ../outputs/t153
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000153
rm *.gcda

echo ">>>>>>>>running test 154"
./schedule 8 7 8 < input/lu18  > ../outputs/t154
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000154
rm *.gcda

echo ">>>>>>>>running test 155"
./schedule 9 6 3 < input/lu19  > ../outputs/t155
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000155
rm *.gcda

echo ">>>>>>>>running test 156"
./schedule 5 6 7 < input/lu21  > ../outputs/t156
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000156
rm *.gcda

echo ">>>>>>>>running test 157"
./schedule 4 7 2 < input/lu28  > ../outputs/t157
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000157
rm *.gcda

echo ">>>>>>>>running test 158"
./schedule 5 4 9 < input/lu31  > ../outputs/t158
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000158
rm *.gcda

echo ">>>>>>>>running test 159"
./schedule 1 8 3 < input/lu37  > ../outputs/t159
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000159
rm *.gcda

echo ">>>>>>>>running test 160"
./schedule 7 4 1 < input/lu43  > ../outputs/t160
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000160
rm *.gcda

echo ">>>>>>>>running test 161"
./schedule 6 7 6 < input/lu58  > ../outputs/t161
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000161
rm *.gcda

echo ">>>>>>>>running test 162"
./schedule 9 4 3 < input/lu63  > ../outputs/t162
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000162
rm *.gcda

echo ">>>>>>>>running test 163"
./schedule 1 6 1 < input/lu103  > ../outputs/t163
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000163
rm *.gcda

echo ">>>>>>>>running test 164"
./schedule 10 5 2 < input/lu116  > ../outputs/t164
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000164
rm *.gcda

echo ">>>>>>>>running test 165"
./schedule 7 8 9 < input/lu117  > ../outputs/t165
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000165
rm *.gcda

echo ">>>>>>>>running test 166"
./schedule 8 7 4 < input/lu120  > ../outputs/t166
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000166
rm *.gcda

echo ">>>>>>>>running test 167"
./schedule 2 7 8 < input/lu130  > ../outputs/t167
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000167
rm *.gcda

echo ">>>>>>>>running test 168"
./schedule 2 3 4 < input/lu134  > ../outputs/t168
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000168
rm *.gcda

echo ">>>>>>>>running test 169"
./schedule 3 4 9 < input/lu137  > ../outputs/t169
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000169
rm *.gcda

echo ">>>>>>>>running test 170"
./schedule 7 2 3 < input/lu171  > ../outputs/t170
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000170
rm *.gcda

echo ">>>>>>>>running test 171"
./schedule 5 2 7 < input/lu173  > ../outputs/t171
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000171
rm *.gcda

echo ">>>>>>>>running test 172"
./schedule 6 3 6 < input/lu176  > ../outputs/t172
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000172
rm *.gcda

echo ">>>>>>>>running test 173"
./schedule 1 2 5 < input/lu179  > ../outputs/t173
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000173
rm *.gcda

echo ">>>>>>>>running test 174"
./schedule 10 3 2 < input/lu190  > ../outputs/t174
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000174
rm *.gcda

echo ">>>>>>>>running test 175"
./schedule 8 1 4 < input/lu200  > ../outputs/t175
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000175
rm *.gcda

echo ">>>>>>>>running test 176"
./schedule 2 9 8 < input/lu202  > ../outputs/t176
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000176
rm *.gcda

echo ">>>>>>>>running test 177"
./schedule 2 5 6 < input/lu210  > ../outputs/t177
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000177
rm *.gcda

echo ">>>>>>>>running test 178"
./schedule 8 1 6 < input/lu238  > ../outputs/t178
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000178
rm *.gcda

echo ">>>>>>>>running test 179"
./schedule 6 9 6 < input/lu258  > ../outputs/t179
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000179
rm *.gcda

echo ">>>>>>>>running test 180"
./schedule 8 9 8 < input/lu284  > ../outputs/t180
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000180
rm *.gcda

echo ">>>>>>>>running test 181"
./schedule 4 1 4 < input/lu288  > ../outputs/t181
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000181
rm *.gcda

echo ">>>>>>>>running test 182"
./schedule 7 4 7 < input/lu291  > ../outputs/t182
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000182
rm *.gcda

echo ">>>>>>>>running test 183"
./schedule 5 4 7 < input/lu297  > ../outputs/t183
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000183
rm *.gcda

echo ">>>>>>>>running test 184"
./schedule 4 7 10 < input/lu304  > ../outputs/t184
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000184
rm *.gcda

echo ">>>>>>>>running test 185"
./schedule 6 3 4 < input/lu310  > ../outputs/t185
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000185
rm *.gcda

echo ">>>>>>>>running test 186"
./schedule 4 5 8 < input/lu316  > ../outputs/t186
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000186
rm *.gcda

echo ">>>>>>>>running test 187"
./schedule 6 7 10 < input/lu344  > ../outputs/t187
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000187
rm *.gcda

echo ">>>>>>>>running test 188"
./schedule 6 7 10 < input/lu346  > ../outputs/t188
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000188
rm *.gcda

echo ">>>>>>>>running test 189"
./schedule 10 9 6 < input/lu348  > ../outputs/t189
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000189
rm *.gcda

echo ">>>>>>>>running test 190"
./schedule 10 9 10 < input/lu358  > ../outputs/t190
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000190
rm *.gcda

echo ">>>>>>>>running test 191"
./schedule 4 1 8 < input/lu368  > ../outputs/t191
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000191
rm *.gcda

echo ">>>>>>>>running test 192"
./schedule 6 7 10 < input/lu404  > ../outputs/t192
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000192
rm *.gcda

echo ">>>>>>>>running test 193"
./schedule 4 5 10 < input/lu416  > ../outputs/t193
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000193
rm *.gcda

echo ">>>>>>>>running test 194"
./schedule 5 6 7 < input/lu423  > ../outputs/t194
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000194
rm *.gcda

echo ">>>>>>>>running test 195"
./schedule 10 7 4 < input/lu440  > ../outputs/t195
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000195
rm *.gcda

echo ">>>>>>>>running test 196"
./schedule 10 7 8 < input/lu442  > ../outputs/t196
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000196
rm *.gcda

echo ">>>>>>>>running test 197"
./schedule 10 5 6 < input/lu450  > ../outputs/t197
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000197
rm *.gcda

echo ">>>>>>>>running test 198"
./schedule 10 7 8 < input/lu470  > ../outputs/t198
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000198
rm *.gcda

echo ">>>>>>>>running test 199"
./schedule 8 7 4 < input/lu480  > ../outputs/t199
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000199
rm *.gcda

echo ">>>>>>>>running test 200"
./schedule 2 5 4 < input/lu494  > ../outputs/t200
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000200
rm *.gcda

echo ">>>>>>>>running test 201"
./schedule 4 8 8 < input/bdt.18  > ../outputs/t201
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000201
rm *.gcda

echo ">>>>>>>>running test 202"
./schedule 1 8 3 < input/bdt.9  > ../outputs/t202
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000202
rm *.gcda

echo ">>>>>>>>running test 203"
./schedule 7 0 6 < input/bdt.38  > ../outputs/t203
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000203
rm *.gcda

echo ">>>>>>>>running test 204"
./schedule 6 9 1 < input/bdt.37  > ../outputs/t204
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000204
rm *.gcda

echo ">>>>>>>>running test 205"
./schedule 4 7 7 < input/bdt.83  > ../outputs/t205
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000205
rm *.gcda

echo ">>>>>>>>running test 206"
./schedule 6 9 8 < input/bdt.64  > ../outputs/t206
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000206
rm *.gcda

echo ">>>>>>>>running test 207"
./schedule 2 3 1 < input/nnt9  > ../outputs/t207
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000207
rm *.gcda

echo ">>>>>>>>running test 208"
./schedule 3 4 1 < input/nnt11  > ../outputs/t208
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000208
rm *.gcda

echo ">>>>>>>>running test 209"
./schedule 1 1 < input/ad.2  > ../outputs/t209
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000209
rm *.gcda

echo ">>>>>>>>running test 210"
./schedule 0 1 0 < input/inp.hf.8  > ../outputs/t210
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000210
rm *.gcda

echo ">>>>>>>>running test 211"
./schedule 2 1 0 < input/inp.hf.1  > ../outputs/t211
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000211
rm *.gcda

echo ">>>>>>>>running test 212"
./schedule 8 6 2 < input/ft.27  > ../outputs/t212
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000212
rm *.gcda

echo ">>>>>>>>running test 213"
./schedule 2 2 6 < input/ft.11  > ../outputs/t213
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000213
rm *.gcda

echo ">>>>>>>>running test 214"
./schedule < ../inputs/input/bdt.77 > ../outputs/t214
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000214
rm *.gcda

echo ">>>>>>>>running test 215"
./schedule < ../inputs/input/bdt.77 > ../outputs/t215
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000215
rm *.gcda

echo ">>>>>>>>running test 216"
./schedule 2 5 0 < input/dt.1  > ../outputs/t216
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000216
rm *.gcda

echo ">>>>>>>>running test 217"
./schedule 2 2 2 < input/dt.2  > ../outputs/t217
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000217
rm *.gcda

echo ">>>>>>>>running test 218"
./schedule 1 1 1 < input/ct.1  > ../outputs/t218
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000218
rm *.gcda

echo ">>>>>>>>running test 219"
./schedule 3 0 3 < input/ct.5  > ../outputs/t219
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000219
rm *.gcda

echo ">>>>>>>>running test 220"
./schedule 3 3 4 < input/ct.19  > ../outputs/t220
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000220
rm *.gcda

echo ">>>>>>>>running test 221"
./schedule 2 1 4 < input/ct.27  > ../outputs/t221
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000221
rm *.gcda

echo ">>>>>>>>running test 222"
./schedule 1 2 4 < input/ct.42  > ../outputs/t222
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000222
rm *.gcda

echo ">>>>>>>>running test 223"
./schedule 2 1 2 < input/ct.52  > ../outputs/t223
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000223
rm *.gcda

echo ">>>>>>>>running test 224"
./schedule 2 4 2 < input/ct.59  > ../outputs/t224
gcov schedule.c
mv schedule.c.gcov ../traces/dump_000224
rm *.gcda

