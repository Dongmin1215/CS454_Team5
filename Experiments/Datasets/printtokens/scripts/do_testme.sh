rm *.gcda

echo ">>>>>>>>running test 231"
./print_tokens ../inputs/uslin.1458  > ../outputs/t231
gcov print_tokens.c
mv print_tokens.c.gcov ../traces_tmp/dump_000231

echo ">>>>>>>>running test 42"
./print_tokens < ../inputs/tc32 > ../outputs/t42
gcov print_tokens.c
mv print_tokens.c.gcov ../traces_tmp/dump_000042

echo ">>>>>>>>running test 90"
./print_tokens < ../inputs/ts594 > ../outputs/t90
gcov print_tokens.c
mv print_tokens.c.gcov ../traces_tmp/dump_000090

echo ">>>>>>>>running test 219"
./print_tokens ../inputs/uslin.1125  > ../outputs/t219
gcov print_tokens.c
mv print_tokens.c.gcov ../traces_tmp/dump_000219

echo ">>>>>>>>running test 93"
./print_tokens < ../inputs/ts646 > ../outputs/t93
gcov print_tokens.c
mv print_tokens.c.gcov ../traces_tmp/dump_000093

echo ">>>>>>>>running test 279"
./print_tokens ../inputs/uslin.595  > ../outputs/t279
gcov print_tokens.c
mv print_tokens.c.gcov ../traces_tmp/dump_000279

echo ">>>>>>>>running test 211"
./print_tokens < ../inputs/uslin.954 > ../outputs/t211
gcov print_tokens.c
mv print_tokens.c.gcov ../traces_tmp/dump_000211

echo ">>>>>>>>running test 184"
./print_tokens < ../inputs/uslin.282 > ../outputs/t184
gcov print_tokens.c
mv print_tokens.c.gcov ../traces_tmp/dump_000184

echo ">>>>>>>>running test 181"
./print_tokens < ../inputs/uslin.247 > ../outputs/t181
gcov print_tokens.c
mv print_tokens.c.gcov ../traces_tmp/dump_000181

echo ">>>>>>>>running test 146"
./print_tokens < ../inputs/uslin.1257 > ../outputs/t146
gcov print_tokens.c
mv print_tokens.c.gcov ../traces_tmp/dump_000146

echo ">>>>>>>>running test 237"
./print_tokens ../inputs/uslin.1508  > ../outputs/t237
gcov print_tokens.c
mv print_tokens.c.gcov ../traces_tmp/dump_000237

echo ">>>>>>>>running test 223"
./print_tokens ../inputs/uslin.1186  > ../outputs/t223
gcov print_tokens.c
mv print_tokens.c.gcov ../traces_tmp/dump_000223

echo ">>>>>>>>running test 55"
./print_tokens < ../inputs/tc7 > ../outputs/t55
gcov print_tokens.c
mv print_tokens.c.gcov ../traces_tmp/dump_000055

echo ">>>>>>>>running test 242"
./print_tokens ../inputs/uslin.1548  > ../outputs/t242
gcov print_tokens.c
mv print_tokens.c.gcov ../traces_tmp/dump_000242

echo ">>>>>>>>running test 275"
./print_tokens ../inputs/uslin.466  > ../outputs/t275
gcov print_tokens.c
mv print_tokens.c.gcov ../traces_tmp/dump_000275

echo ">>>>>>>>running test 118"
./print_tokens < ../inputs/tst251 > ../outputs/t118
gcov print_tokens.c
mv print_tokens.c.gcov ../traces_tmp/dump_000118

echo ">>>>>>>>running test 124"
./print_tokens < ../inputs/tst291 > ../outputs/t124
gcov print_tokens.c
mv print_tokens.c.gcov ../traces_tmp/dump_000124

echo ">>>>>>>>running test 254"
./print_tokens ../inputs/uslin.1736  > ../outputs/t254
gcov print_tokens.c
mv print_tokens.c.gcov ../traces_tmp/dump_000254

echo ">>>>>>>>running test 202"
./print_tokens < ../inputs/uslin.788 > ../outputs/t202
gcov print_tokens.c
mv print_tokens.c.gcov ../traces_tmp/dump_000202

echo ">>>>>>>>running test 277"
./print_tokens ../inputs/uslin.554  > ../outputs/t277
gcov print_tokens.c
mv print_tokens.c.gcov ../traces_tmp/dump_000277

echo ">>>>>>>>running test 154"
./print_tokens < ../inputs/uslin.1429 > ../outputs/t154
gcov print_tokens.c
mv print_tokens.c.gcov ../traces_tmp/dump_000154

echo ">>>>>>>>running test 64"
./print_tokens < ../inputs/test188 > ../outputs/t64
gcov print_tokens.c
mv print_tokens.c.gcov ../traces_tmp/dump_000064

echo ">>>>>>>>running test 269"
./print_tokens ../inputs/uslin.366  > ../outputs/t269
gcov print_tokens.c
mv print_tokens.c.gcov ../traces_tmp/dump_000269

echo ">>>>>>>>running test 287"
./print_tokens ../inputs/uslin.703  > ../outputs/t287
gcov print_tokens.c
mv print_tokens.c.gcov ../traces_tmp/dump_000287

echo ">>>>>>>>running test 193"
./print_tokens < ../inputs/uslin.47 > ../outputs/t193
gcov print_tokens.c
mv print_tokens.c.gcov ../traces_tmp/dump_000193

echo ">>>>>>>>running test 308"
./print_tokens ../inputs/garbage/nothing  > ../outputs/t308
gcov print_tokens.c
mv print_tokens.c.gcov ../traces_tmp/dump_000308

echo ">>>>>>>>running test 127"
./print_tokens < ../inputs/tst33 > ../outputs/t127
gcov print_tokens.c
mv print_tokens.c.gcov ../traces_tmp/dump_000127

echo ">>>>>>>>running test 282"
./print_tokens ../inputs/uslin.660  > ../outputs/t282
gcov print_tokens.c
mv print_tokens.c.gcov ../traces_tmp/dump_000282

echo ">>>>>>>>running test 48"
./print_tokens < ../inputs/tc350 > ../outputs/t48
gcov print_tokens.c
mv print_tokens.c.gcov ../traces_tmp/dump_000048

echo ">>>>>>>>running test 285"
./print_tokens ../inputs/uslin.683  > ../outputs/t285
gcov print_tokens.c
mv print_tokens.c.gcov ../traces_tmp/dump_000285

echo ">>>>>>>>running test 161"
./print_tokens < ../inputs/uslin.1712 > ../outputs/t161
gcov print_tokens.c
mv print_tokens.c.gcov ../traces_tmp/dump_000161

echo ">>>>>>>>running test 295"
./print_tokens ../inputs/uslin.819  > ../outputs/t295
gcov print_tokens.c
mv print_tokens.c.gcov ../traces_tmp/dump_000295

echo ">>>>>>>>running test 200"
./print_tokens < ../inputs/uslin.78 > ../outputs/t200
gcov print_tokens.c
mv print_tokens.c.gcov ../traces_tmp/dump_000200

echo ">>>>>>>>running test 88"
./print_tokens < ../inputs/ts577 > ../outputs/t88
gcov print_tokens.c
mv print_tokens.c.gcov ../traces_tmp/dump_000088

echo ">>>>>>>>running test 220"
./print_tokens ../inputs/uslin.1142  > ../outputs/t220
gcov print_tokens.c
mv print_tokens.c.gcov ../traces_tmp/dump_000220

echo ">>>>>>>>running test 304"
./print_tokens ../inputs/uslin.939  > ../outputs/t304
gcov print_tokens.c
mv print_tokens.c.gcov ../traces_tmp/dump_000304

echo ">>>>>>>>running test 173"
./print_tokens < ../inputs/uslin.1918 > ../outputs/t173
gcov print_tokens.c
mv print_tokens.c.gcov ../traces_tmp/dump_000173

echo ">>>>>>>>running test 57"
./print_tokens < ../inputs/tc79 > ../outputs/t57
gcov print_tokens.c
mv print_tokens.c.gcov ../traces_tmp/dump_000057

echo ">>>>>>>>running test 85"
./print_tokens < ../inputs/ts557 > ../outputs/t85
gcov print_tokens.c
mv print_tokens.c.gcov ../traces_tmp/dump_000085

echo ">>>>>>>>running test 143"
./print_tokens < ../inputs/uslin.1201 > ../outputs/t143
gcov print_tokens.c
mv print_tokens.c.gcov ../traces_tmp/dump_000143

echo ">>>>>>>>running test 215"
./print_tokens ../inputs/jk45  > ../outputs/t215
gcov print_tokens.c
mv print_tokens.c.gcov ../traces_tmp/dump_000215

echo ">>>>>>>>running test 130"
./print_tokens < ../inputs/tst7 > ../outputs/t130
gcov print_tokens.c
mv print_tokens.c.gcov ../traces_tmp/dump_000130

echo ">>>>>>>>running test 228"
./print_tokens ../inputs/uslin.132  > ../outputs/t228
gcov print_tokens.c
mv print_tokens.c.gcov ../traces_tmp/dump_000228

echo ">>>>>>>>running test 246"
./print_tokens ../inputs/uslin.1655  > ../outputs/t246
gcov print_tokens.c
mv print_tokens.c.gcov ../traces_tmp/dump_000246

echo ">>>>>>>>running test 39"
./print_tokens < ../inputs/tc293 > ../outputs/t39
gcov print_tokens.c
mv print_tokens.c.gcov ../traces_tmp/dump_000039

echo ">>>>>>>>running test 189"
./print_tokens < ../inputs/uslin.377 > ../outputs/t189
gcov print_tokens.c
mv print_tokens.c.gcov ../traces_tmp/dump_000189

echo ">>>>>>>>running test 209"
./print_tokens < ../inputs/uslin.920 > ../outputs/t209
gcov print_tokens.c
mv print_tokens.c.gcov ../traces_tmp/dump_000209

echo ">>>>>>>>running test 108"
./print_tokens < ../inputs/tst123 > ../outputs/t108
gcov print_tokens.c
mv print_tokens.c.gcov ../traces_tmp/dump_000108

echo ">>>>>>>>running test 265"
./print_tokens ../inputs/uslin.284  > ../outputs/t265
gcov print_tokens.c
mv print_tokens.c.gcov ../traces_tmp/dump_000265

echo ">>>>>>>>running test 262"
./print_tokens ../inputs/uslin.1943  > ../outputs/t262
gcov print_tokens.c
mv print_tokens.c.gcov ../traces_tmp/dump_000262

echo ">>>>>>>>running test 77"
./print_tokens < ../inputs/test54 > ../outputs/t77
gcov print_tokens.c
mv print_tokens.c.gcov ../traces_tmp/dump_000077

