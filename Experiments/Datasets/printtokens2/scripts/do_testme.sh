rm *.gcda

echo ">>>>>>>>running test 368"
./print_tokens2 ../inputs/uslin.73  > ../outputs/t368
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000368

echo ">>>>>>>>running test 329"
./print_tokens2 ../inputs/uslin.1906  > ../outputs/t329
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000329

echo ">>>>>>>>running test 353"
./print_tokens2 ../inputs/uslin.499  > ../outputs/t353
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000353

echo ">>>>>>>>running test 247"
./print_tokens2 < ../inputs/uslin.713 > ../outputs/t247
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000247

echo ">>>>>>>>running test 360"
./print_tokens2 ../inputs/uslin.575  > ../outputs/t360
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000360

echo ">>>>>>>>running test 387"
./print_tokens2 ../inputs/uslin.959  > ../outputs/t387
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000387

echo ">>>>>>>>running test 351"
./print_tokens2 ../inputs/uslin.484  > ../outputs/t351
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000351

echo ">>>>>>>>running test 4"
./print_tokens2 < ../inputs/newtst163.tst > ../outputs/t4
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000004

echo ">>>>>>>>running test 3"
./print_tokens2 < ../inputs/newtst121.tst > ../outputs/t3
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000003

echo ">>>>>>>>running test 51"
./print_tokens2 < ../inputs/tc266 > ../outputs/t51
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000051

echo ">>>>>>>>running test 292"
./print_tokens2 ../inputs/uslin.1453  > ../outputs/t292
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000292

echo ">>>>>>>>running test 326"
./print_tokens2 ../inputs/uslin.1853  > ../outputs/t326
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000326

echo ">>>>>>>>running test 29"
./print_tokens2 < ../inputs/newtst531.tst > ../outputs/t29
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000029

echo ">>>>>>>>running test 348"
./print_tokens2 ../inputs/uslin.408  > ../outputs/t348
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000348

echo ">>>>>>>>running test 93"
./print_tokens2 < ../inputs/test286 > ../outputs/t93
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000093

echo ">>>>>>>>running test 54"
./print_tokens2 < ../inputs/tc322 > ../outputs/t54
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000054

echo ">>>>>>>>running test 375"
./print_tokens2 ../inputs/uslin.84  > ../outputs/t375
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000375

echo ">>>>>>>>running test 64"
./print_tokens2 < ../inputs/tc50 > ../outputs/t64
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000064

echo ">>>>>>>>running test 213"
./print_tokens2 < ../inputs/uslin.1905 > ../outputs/t213
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000213

echo ">>>>>>>>running test 390"
./print_tokens2 ../inputs/garbage/nothing  > ../outputs/t390
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000390

echo ">>>>>>>>running test 142"
./print_tokens2 < ../inputs/tst176 > ../outputs/t142
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000142

echo ">>>>>>>>running test 206"
./print_tokens2 < ../inputs/uslin.1809 > ../outputs/t206
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000206

echo ">>>>>>>>running test 318"
./print_tokens2 ../inputs/uslin.1777  > ../outputs/t318
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000318

echo ">>>>>>>>running test 101"
./print_tokens2 < ../inputs/ts503 > ../outputs/t101
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000101

echo ">>>>>>>>running test 125"
./print_tokens2 < ../inputs/ts714 > ../outputs/t125
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000125

echo ">>>>>>>>running test 219"
./print_tokens2 < ../inputs/uslin.1985 > ../outputs/t219
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000219

echo ">>>>>>>>running test 122"
./print_tokens2 < ../inputs/ts680 > ../outputs/t122
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000122

echo ">>>>>>>>running test 11"
./print_tokens2 < ../inputs/newtst273.tst > ../outputs/t11
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000011

echo ">>>>>>>>running test 21"
./print_tokens2 < ../inputs/newtst422.tst > ../outputs/t21
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000021

echo ">>>>>>>>running test 105"
./print_tokens2 < ../inputs/ts520 > ../outputs/t105
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000105

echo ">>>>>>>>running test 392"
./print_tokens2 one doesntliketwo  > ../outputs/t392
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000392

echo ">>>>>>>>running test 5"
./print_tokens2 < ../inputs/newtst181.tst > ../outputs/t5
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000005

echo ">>>>>>>>running test 240"
./print_tokens2 < ../inputs/uslin.607 > ../outputs/t240
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000240

echo ">>>>>>>>running test 35"
./print_tokens2 < ../inputs/newtst76.tst > ../outputs/t35
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000035

echo ">>>>>>>>running test 268"
./print_tokens2 ../inputs/uslin.1009  > ../outputs/t268
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000268

echo ">>>>>>>>running test 252"
./print_tokens2 < ../inputs/uslin.85 > ../outputs/t252
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000252

echo ">>>>>>>>running test 177"
./print_tokens2 < ../inputs/uslin.1331 > ../outputs/t177
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000177

echo ">>>>>>>>running test 162"
./print_tokens2 < ../inputs/uslin.1053 > ../outputs/t162
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000162

echo ">>>>>>>>running test 393"
./print_tokens2 one doesntliketwo  > ../outputs/t393
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000393

echo ">>>>>>>>running test 355"
./print_tokens2 ../inputs/uslin.503  > ../outputs/t355
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000355

echo ">>>>>>>>running test 178"
./print_tokens2 < ../inputs/uslin.1356 > ../outputs/t178
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000178

echo ">>>>>>>>running test 57"
./print_tokens2 < ../inputs/tc357 > ../outputs/t57
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000057

echo ">>>>>>>>running test 19"
./print_tokens2 < ../inputs/newtst373.tst > ../outputs/t19
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000019

echo ">>>>>>>>running test 1"
./print_tokens2 < ../inputs/newtst106.tst > ../outputs/t1
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000001

echo ">>>>>>>>running test 394"
./print_tokens2 one doesntliketwo  > ../outputs/t394
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000394

echo ">>>>>>>>running test 327"
./print_tokens2 ../inputs/uslin.1864  > ../outputs/t327
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000327

echo ">>>>>>>>running test 316"
./print_tokens2 ../inputs/uslin.1763  > ../outputs/t316
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000316

echo ">>>>>>>>running test 325"
./print_tokens2 ../inputs/uslin.1852  > ../outputs/t325
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000325

echo ">>>>>>>>running test 164"
./print_tokens2 < ../inputs/uslin.1072 > ../outputs/t164
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000164

echo ">>>>>>>>running test 238"
./print_tokens2 < ../inputs/uslin.602 > ../outputs/t238
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000238

echo ">>>>>>>>running test 143"
./print_tokens2 < ../inputs/tst18 > ../outputs/t143
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000143

echo ">>>>>>>>running test 42"
./print_tokens2 < ../inputs/tc167 > ../outputs/t42
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000042

echo ">>>>>>>>running test 197"
./print_tokens2 < ../inputs/uslin.160 > ../outputs/t197
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000197

echo ">>>>>>>>running test 249"
./print_tokens2 < ../inputs/uslin.773 > ../outputs/t249
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000249

echo ">>>>>>>>running test 188"
./print_tokens2 < ../inputs/uslin.1539 > ../outputs/t188
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000188

echo ">>>>>>>>running test 244"
./print_tokens2 < ../inputs/uslin.670 > ../outputs/t244
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000244

echo ">>>>>>>>running test 154"
./print_tokens2 < ../inputs/tst36 > ../outputs/t154
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000154

echo ">>>>>>>>running test 266"
./print_tokens2 ../inputs/uslin.1003  > ../outputs/t266
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000266

echo ">>>>>>>>running test 233"
./print_tokens2 < ../inputs/uslin.50 > ../outputs/t233
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000233

echo ">>>>>>>>running test 362"
./print_tokens2 ../inputs/uslin.622  > ../outputs/t362
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000362

echo ">>>>>>>>running test 149"
./print_tokens2 < ../inputs/tst275 > ../outputs/t149
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000149

echo ">>>>>>>>running test 2"
./print_tokens2 < ../inputs/newtst11.tst > ../outputs/t2
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000002

echo ">>>>>>>>running test 89"
./print_tokens2 < ../inputs/test231 > ../outputs/t89
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000089

echo ">>>>>>>>running test 242"
./print_tokens2 < ../inputs/uslin.656 > ../outputs/t242
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000242

echo ">>>>>>>>running test 388"
./print_tokens2 ../inputs/garbage/nothing  > ../outputs/t388
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000388

echo ">>>>>>>>running test 58"
./print_tokens2 < ../inputs/tc36 > ../outputs/t58
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000058

echo ">>>>>>>>running test 114"
./print_tokens2 < ../inputs/ts630 > ../outputs/t114
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000114

echo ">>>>>>>>running test 382"
./print_tokens2 ../inputs/uslin.897  > ../outputs/t382
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000382

echo ">>>>>>>>running test 191"
./print_tokens2 < ../inputs/uslin.1565 > ../outputs/t191
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000191

echo ">>>>>>>>running test 129"
./print_tokens2 < ../inputs/ts742 > ../outputs/t129
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000129

echo ">>>>>>>>running test 373"
./print_tokens2 ../inputs/uslin.783  > ../outputs/t373
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000373

echo ">>>>>>>>running test 166"
./print_tokens2 < ../inputs/uslin.1087 > ../outputs/t166
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000166

echo ">>>>>>>>running test 107"
./print_tokens2 < ../inputs/ts530 > ../outputs/t107
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000107

echo ">>>>>>>>running test 130"
./print_tokens2 < ../inputs/ts754 > ../outputs/t130
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000130

echo ">>>>>>>>running test 46"
./print_tokens2 < ../inputs/tc201 > ../outputs/t46
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000046

echo ">>>>>>>>running test 239"
./print_tokens2 < ../inputs/uslin.605 > ../outputs/t239
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000239

echo ">>>>>>>>running test 17"
./print_tokens2 < ../inputs/newtst318.tst > ../outputs/t17
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000017

echo ">>>>>>>>running test 342"
./print_tokens2 ../inputs/uslin.356  > ../outputs/t342
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000342

echo ">>>>>>>>running test 331"
./print_tokens2 ../inputs/uslin.1915  > ../outputs/t331
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000331

echo ">>>>>>>>running test 314"
./print_tokens2 ../inputs/uslin.1746  > ../outputs/t314
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000314

echo ">>>>>>>>running test 246"
./print_tokens2 < ../inputs/uslin.712 > ../outputs/t246
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000246

echo ">>>>>>>>running test 361"
./print_tokens2 ../inputs/uslin.591  > ../outputs/t361
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000361

echo ">>>>>>>>running test 225"
./print_tokens2 < ../inputs/uslin.31 > ../outputs/t225
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000225

echo ">>>>>>>>running test 97"
./print_tokens2 < ../inputs/test370 > ../outputs/t97
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000097

echo ">>>>>>>>running test 119"
./print_tokens2 < ../inputs/ts657 > ../outputs/t119
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000119

echo ">>>>>>>>running test 102"
./print_tokens2 < ../inputs/ts508 > ../outputs/t102
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000102

echo ">>>>>>>>running test 135"
./print_tokens2 < ../inputs/tst10 > ../outputs/t135
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000135

echo ">>>>>>>>running test 171"
./print_tokens2 < ../inputs/uslin.1221 > ../outputs/t171
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000171

echo ">>>>>>>>running test 241"
./print_tokens2 < ../inputs/uslin.624 > ../outputs/t241
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000241

echo ">>>>>>>>running test 214"
./print_tokens2 < ../inputs/uslin.1913 > ../outputs/t214
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000214

echo ">>>>>>>>running test 228"
./print_tokens2 < ../inputs/uslin.36 > ../outputs/t228
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000228

echo ">>>>>>>>running test 172"
./print_tokens2 < ../inputs/uslin.1236 > ../outputs/t172
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000172

echo ">>>>>>>>running test 378"
./print_tokens2 ../inputs/uslin.878  > ../outputs/t378
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000378

echo ">>>>>>>>running test 333"
./print_tokens2 ../inputs/uslin.1951  > ../outputs/t333
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000333

echo ">>>>>>>>running test 62"
./print_tokens2 < ../inputs/tc399 > ../outputs/t62
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000062

echo ">>>>>>>>running test 70"
./print_tokens2 < ../inputs/tc92 > ../outputs/t70
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000070

echo ">>>>>>>>running test 293"
./print_tokens2 ../inputs/uslin.1456  > ../outputs/t293
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000293

echo ">>>>>>>>running test 234"
./print_tokens2 < ../inputs/uslin.566 > ../outputs/t234
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000234

echo ">>>>>>>>running test 259"
./print_tokens2 ../inputs/jk28  > ../outputs/t259
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000259

echo ">>>>>>>>running test 27"
./print_tokens2 < ../inputs/newtst52.tst > ../outputs/t27
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000027

echo ">>>>>>>>running test 198"
./print_tokens2 < ../inputs/uslin.1605 > ../outputs/t198
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000198

echo ">>>>>>>>running test 152"
./print_tokens2 < ../inputs/tst285 > ../outputs/t152
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000152

echo ">>>>>>>>running test 236"
./print_tokens2 < ../inputs/uslin.583 > ../outputs/t236
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000236

echo ">>>>>>>>running test 144"
./print_tokens2 < ../inputs/tst218 > ../outputs/t144
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000144

echo ">>>>>>>>running test 235"
./print_tokens2 < ../inputs/uslin.573 > ../outputs/t235
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000235

echo ">>>>>>>>running test 96"
./print_tokens2 < ../inputs/test356 > ../outputs/t96
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000096

echo ">>>>>>>>running test 307"
./print_tokens2 ../inputs/uslin.1645  > ../outputs/t307
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000307

echo ">>>>>>>>running test 113"
./print_tokens2 < ../inputs/ts620 > ../outputs/t113
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000113

echo ">>>>>>>>running test 253"
./print_tokens2 < ../inputs/uslin.926 > ../outputs/t253
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000253

echo ">>>>>>>>running test 184"
./print_tokens2 < ../inputs/uslin.145 > ../outputs/t184
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000184

echo ">>>>>>>>running test 28"
./print_tokens2 < ../inputs/newtst523.tst > ../outputs/t28
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000028

echo ">>>>>>>>running test 261"
./print_tokens2 ../inputs/jk35  > ../outputs/t261
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000261

echo ">>>>>>>>running test 224"
./print_tokens2 < ../inputs/uslin.299 > ../outputs/t224
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000224

echo ">>>>>>>>running test 67"
./print_tokens2 < ../inputs/tc6 > ../outputs/t67
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000067

echo ">>>>>>>>running test 9"
./print_tokens2 < ../inputs/newtst259.tst > ../outputs/t9
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000009

echo ">>>>>>>>running test 88"
./print_tokens2 < ../inputs/test225 > ../outputs/t88
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000088

echo ">>>>>>>>running test 153"
./print_tokens2 < ../inputs/tst30 > ../outputs/t153
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000153

echo ">>>>>>>>running test 282"
./print_tokens2 ../inputs/uslin.1252  > ../outputs/t282
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000282

echo ">>>>>>>>running test 212"
./print_tokens2 < ../inputs/uslin.1880 > ../outputs/t212
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000212

echo ">>>>>>>>running test 23"
./print_tokens2 < ../inputs/newtst458.tst > ../outputs/t23
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000023

echo ">>>>>>>>running test 257"
./print_tokens2 ../inputs/jk13  > ../outputs/t257
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000257

echo ">>>>>>>>running test 72"
./print_tokens2 < ../inputs/test115 > ../outputs/t72
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000072

echo ">>>>>>>>running test 313"
./print_tokens2 ../inputs/uslin.1734  > ../outputs/t313
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000313

echo ">>>>>>>>running test 179"
./print_tokens2 < ../inputs/uslin.1357 > ../outputs/t179
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000179

echo ">>>>>>>>running test 201"
./print_tokens2 < ../inputs/uslin.1675 > ../outputs/t201
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000201

echo ">>>>>>>>running test 138"
./print_tokens2 < ../inputs/tst152 > ../outputs/t138
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000138

echo ">>>>>>>>running test 207"
./print_tokens2 < ../inputs/uslin.1816 > ../outputs/t207
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000207

echo ">>>>>>>>running test 8"
./print_tokens2 < ../inputs/newtst257.tst > ../outputs/t8
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000008

echo ">>>>>>>>running test 13"
./print_tokens2 < ../inputs/newtst282.tst > ../outputs/t13
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000013

echo ">>>>>>>>running test 334"
./print_tokens2 ../inputs/uslin.1969  > ../outputs/t334
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000334

echo ">>>>>>>>running test 163"
./print_tokens2 < ../inputs/uslin.1070 > ../outputs/t163
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000163

echo ">>>>>>>>running test 227"
./print_tokens2 < ../inputs/uslin.333 > ../outputs/t227
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000227

echo ">>>>>>>>running test 115"
./print_tokens2 < ../inputs/ts635 > ../outputs/t115
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000115

echo ">>>>>>>>running test 159"
./print_tokens2 < ../inputs/tst66 > ../outputs/t159
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000159

echo ">>>>>>>>running test 372"
./print_tokens2 ../inputs/uslin.782  > ../outputs/t372
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000372

echo ">>>>>>>>running test 126"
./print_tokens2 < ../inputs/ts719 > ../outputs/t126
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000126

echo ">>>>>>>>running test 205"
./print_tokens2 < ../inputs/uslin.1806 > ../outputs/t205
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000205

echo ">>>>>>>>running test 150"
./print_tokens2 < ../inputs/tst279 > ../outputs/t150
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000150

echo ">>>>>>>>running test 384"
./print_tokens2 ../inputs/uslin.902  > ../outputs/t384
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000384

echo ">>>>>>>>running test 386"
./print_tokens2 ../inputs/uslin.95  > ../outputs/t386
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000386

echo ">>>>>>>>running test 69"
./print_tokens2 < ../inputs/tc84 > ../outputs/t69
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000069

echo ">>>>>>>>running test 277"
./print_tokens2 ../inputs/uslin.1113  > ../outputs/t277
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000277

echo ">>>>>>>>running test 165"
./print_tokens2 < ../inputs/uslin.108 > ../outputs/t165
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000165

echo ">>>>>>>>running test 77"
./print_tokens2 < ../inputs/test150 > ../outputs/t77
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000077

echo ">>>>>>>>running test 116"
./print_tokens2 < ../inputs/ts637 > ../outputs/t116
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000116

echo ">>>>>>>>running test 56"
./print_tokens2 < ../inputs/tc344 > ../outputs/t56
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000056

echo ">>>>>>>>running test 79"
./print_tokens2 < ../inputs/test166 > ../outputs/t79
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000079

echo ">>>>>>>>running test 339"
./print_tokens2 ../inputs/uslin.312  > ../outputs/t339
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000339

echo ">>>>>>>>running test 220"
./print_tokens2 < ../inputs/uslin.243 > ../outputs/t220
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000220

echo ">>>>>>>>running test 192"
./print_tokens2 < ../inputs/uslin.1566 > ../outputs/t192
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000192

echo ">>>>>>>>running test 275"
./print_tokens2 ../inputs/uslin.1101  > ../outputs/t275
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000275

echo ">>>>>>>>running test 169"
./print_tokens2 < ../inputs/uslin.1116 > ../outputs/t169
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000169

echo ">>>>>>>>running test 170"
./print_tokens2 < ../inputs/uslin.113 > ../outputs/t170
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000170

echo ">>>>>>>>running test 298"
./print_tokens2 ../inputs/uslin.1515  > ../outputs/t298
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000298

echo ">>>>>>>>running test 123"
./print_tokens2 < ../inputs/ts686 > ../outputs/t123
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000123

echo ">>>>>>>>running test 30"
./print_tokens2 < ../inputs/newtst56.tst > ../outputs/t30
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000030

echo ">>>>>>>>running test 111"
./print_tokens2 < ../inputs/ts608 > ../outputs/t111
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000111

echo ">>>>>>>>running test 322"
./print_tokens2 ../inputs/uslin.1841  > ../outputs/t322
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000322

echo ">>>>>>>>running test 280"
./print_tokens2 ../inputs/uslin.1159  > ../outputs/t280
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000280

echo ">>>>>>>>running test 99"
./print_tokens2 < ../inputs/test64 > ../outputs/t99
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000099

echo ">>>>>>>>running test 161"
./print_tokens2 < ../inputs/uslin.1023 > ../outputs/t161
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000161

echo ">>>>>>>>running test 216"
./print_tokens2 < ../inputs/uslin.1918 > ../outputs/t216
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000216

echo ">>>>>>>>running test 103"
./print_tokens2 < ../inputs/ts516 > ../outputs/t103
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000103

echo ">>>>>>>>running test 285"
./print_tokens2 ../inputs/uslin.1303  > ../outputs/t285
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000285

echo ">>>>>>>>running test 50"
./print_tokens2 < ../inputs/tc263 > ../outputs/t50
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000050

echo ">>>>>>>>running test 147"
./print_tokens2 < ../inputs/tst252 > ../outputs/t147
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000147

echo ">>>>>>>>running test 296"
./print_tokens2 ../inputs/uslin.1488  > ../outputs/t296
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000296

echo ">>>>>>>>running test 175"
./print_tokens2 < ../inputs/uslin.1263 > ../outputs/t175
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000175

echo ">>>>>>>>running test 232"
./print_tokens2 < ../inputs/uslin.432 > ../outputs/t232
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000232

echo ">>>>>>>>running test 273"
./print_tokens2 ../inputs/uslin.1080  > ../outputs/t273
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000273

echo ">>>>>>>>running test 25"
./print_tokens2 < ../inputs/newtst481.tst > ../outputs/t25
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000025

echo ">>>>>>>>running test 173"
./print_tokens2 < ../inputs/uslin.1254 > ../outputs/t173
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000173

echo ">>>>>>>>running test 183"
./print_tokens2 < ../inputs/uslin.1443 > ../outputs/t183
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000183

echo ">>>>>>>>running test 341"
./print_tokens2 ../inputs/uslin.328  > ../outputs/t341
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000341

echo ">>>>>>>>running test 44"
./print_tokens2 < ../inputs/tc194 > ../outputs/t44
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000044

echo ">>>>>>>>running test 24"
./print_tokens2 < ../inputs/newtst464.tst > ../outputs/t24
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000024

echo ">>>>>>>>running test 39"
./print_tokens2 < ../inputs/tc112 > ../outputs/t39
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000039

echo ">>>>>>>>running test 104"
./print_tokens2 < ../inputs/ts517 > ../outputs/t104
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000104

echo ">>>>>>>>running test 356"
./print_tokens2 ../inputs/uslin.508  > ../outputs/t356
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000356

echo ">>>>>>>>running test 20"
./print_tokens2 < ../inputs/newtst409.tst > ../outputs/t20
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000020

echo ">>>>>>>>running test 374"
./print_tokens2 ../inputs/uslin.838  > ../outputs/t374
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000374

echo ">>>>>>>>running test 350"
./print_tokens2 ../inputs/uslin.473  > ../outputs/t350
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000350

echo ">>>>>>>>running test 182"
./print_tokens2 < ../inputs/uslin.1439 > ../outputs/t182
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000182

echo ">>>>>>>>running test 265"
./print_tokens2 ../inputs/ts516.noeof  > ../outputs/t265
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000265

echo ">>>>>>>>running test 371"
./print_tokens2 ../inputs/uslin.770  > ../outputs/t371
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000371

echo ">>>>>>>>running test 66"
./print_tokens2 < ../inputs/tc59 > ../outputs/t66
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000066

echo ">>>>>>>>running test 199"
./print_tokens2 < ../inputs/uslin.1628 > ../outputs/t199
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000199

echo ">>>>>>>>running test 217"
./print_tokens2 < ../inputs/uslin.1935 > ../outputs/t217
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000217

echo ">>>>>>>>running test 71"
./print_tokens2 < ../inputs/test111 > ../outputs/t71
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000071

echo ">>>>>>>>running test 250"
./print_tokens2 < ../inputs/uslin.788 > ../outputs/t250
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000250

echo ">>>>>>>>running test 256"
./print_tokens2 < ../inputs/uslin.984 > ../outputs/t256
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000256

echo ">>>>>>>>running test 370"
./print_tokens2 ../inputs/uslin.763  > ../outputs/t370
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000370

echo ">>>>>>>>running test 237"
./print_tokens2 < ../inputs/uslin.584 > ../outputs/t237
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000237

echo ">>>>>>>>running test 148"
./print_tokens2 < ../inputs/tst264 > ../outputs/t148
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000148

echo ">>>>>>>>running test 26"
./print_tokens2 < ../inputs/newtst516.tst > ../outputs/t26
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000026

echo ">>>>>>>>running test 308"
./print_tokens2 ../inputs/uslin.166  > ../outputs/t308
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000308

echo ">>>>>>>>running test 22"
./print_tokens2 < ../inputs/newtst423.tst > ../outputs/t22
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000022

echo ">>>>>>>>running test 82"
./print_tokens2 < ../inputs/test182 > ../outputs/t82
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000082

echo ">>>>>>>>running test 363"
./print_tokens2 ../inputs/uslin.632  > ../outputs/t363
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000363

echo ">>>>>>>>running test 181"
./print_tokens2 < ../inputs/uslin.1405 > ../outputs/t181
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000181

echo ">>>>>>>>running test 290"
./print_tokens2 ../inputs/uslin.1417  > ../outputs/t290
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000290

echo ">>>>>>>>running test 381"
./print_tokens2 ../inputs/uslin.885.noeof  > ../outputs/t381
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000381

echo ">>>>>>>>running test 145"
./print_tokens2 < ../inputs/tst241 > ../outputs/t145
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000145

echo ">>>>>>>>running test 75"
./print_tokens2 < ../inputs/test144 > ../outputs/t75
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000075

echo ">>>>>>>>running test 195"
./print_tokens2 < ../inputs/uslin.1589 > ../outputs/t195
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000195

echo ">>>>>>>>running test 112"
./print_tokens2 < ../inputs/ts610 > ../outputs/t112
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000112

echo ">>>>>>>>running test 134"
./print_tokens2 < ../inputs/ts795 > ../outputs/t134
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000134

echo ">>>>>>>>running test 95"
./print_tokens2 < ../inputs/test332 > ../outputs/t95
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000095

echo ">>>>>>>>running test 45"
./print_tokens2 < ../inputs/tc196 > ../outputs/t45
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000045

echo ">>>>>>>>running test 364"
./print_tokens2 ../inputs/uslin.687  > ../outputs/t364
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000364

echo ">>>>>>>>running test 349"
./print_tokens2 ../inputs/uslin.416  > ../outputs/t349
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000349

echo ">>>>>>>>running test 226"
./print_tokens2 < ../inputs/uslin.323 > ../outputs/t226
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000226

echo ">>>>>>>>running test 160"
./print_tokens2 < ../inputs/uslin.1013 > ../outputs/t160
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000160

echo ">>>>>>>>running test 158"
./print_tokens2 < ../inputs/tst61 > ../outputs/t158
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000158

echo ">>>>>>>>running test 299"
./print_tokens2 ../inputs/uslin.1521  > ../outputs/t299
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000299

echo ">>>>>>>>running test 68"
./print_tokens2 < ../inputs/tc60 > ../outputs/t68
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000068

echo ">>>>>>>>running test 221"
./print_tokens2 < ../inputs/uslin.267 > ../outputs/t221
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000221

echo ">>>>>>>>running test 140"
./print_tokens2 < ../inputs/tst158 > ../outputs/t140
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000140

echo ">>>>>>>>running test 297"
./print_tokens2 ../inputs/uslin.1498  > ../outputs/t297
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000297

echo ">>>>>>>>running test 196"
./print_tokens2 < ../inputs/uslin.1596 > ../outputs/t196
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000196

echo ">>>>>>>>running test 174"
./print_tokens2 < ../inputs/uslin.1257 > ../outputs/t174
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000174

echo ">>>>>>>>running test 15"
./print_tokens2 < ../inputs/newtst291.tst > ../outputs/t15
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000015

echo ">>>>>>>>running test 324"
./print_tokens2 ../inputs/uslin.1844  > ../outputs/t324
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000324

echo ">>>>>>>>running test 155"
./print_tokens2 < ../inputs/tst37 > ../outputs/t155
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000155

echo ">>>>>>>>running test 332"
./print_tokens2 ../inputs/uslin.1927  > ../outputs/t332
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000332

echo ">>>>>>>>running test 304"
./print_tokens2 ../inputs/uslin.1623  > ../outputs/t304
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000304

echo ">>>>>>>>running test 36"
./print_tokens2 < ../inputs/newtst78.tst > ../outputs/t36
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000036

echo ">>>>>>>>running test 354"
./print_tokens2 ../inputs/uslin.501  > ../outputs/t354
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000354

echo ">>>>>>>>running test 248"
./print_tokens2 < ../inputs/uslin.758 > ../outputs/t248
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000248

echo ">>>>>>>>running test 269"
./print_tokens2 ../inputs/uslin.1038  > ../outputs/t269
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000269

echo ">>>>>>>>running test 208"
./print_tokens2 < ../inputs/uslin.1835 > ../outputs/t208
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000208

echo ">>>>>>>>running test 289"
./print_tokens2 ../inputs/uslin.1390  > ../outputs/t289
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000289

echo ">>>>>>>>running test 263"
./print_tokens2 ../inputs/jk4  > ../outputs/t263
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000263

echo ">>>>>>>>running test 245"
./print_tokens2 < ../inputs/uslin.680 > ../outputs/t245
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000245

echo ">>>>>>>>running test 176"
./print_tokens2 < ../inputs/uslin.1320 > ../outputs/t176
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000176

echo ">>>>>>>>running test 81"
./print_tokens2 < ../inputs/test171 > ../outputs/t81
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000081

echo ">>>>>>>>running test 319"
./print_tokens2 ../inputs/uslin.1780  > ../outputs/t319
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000319

echo ">>>>>>>>running test 91"
./print_tokens2 < ../inputs/test254 > ../outputs/t91
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000091

echo ">>>>>>>>running test 345"
./print_tokens2 ../inputs/uslin.389  > ../outputs/t345
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000345

echo ">>>>>>>>running test 92"
./print_tokens2 < ../inputs/test276 > ../outputs/t92
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000092

echo ">>>>>>>>running test 194"
./print_tokens2 < ../inputs/uslin.1588 > ../outputs/t194
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000194

echo ">>>>>>>>running test 264"
./print_tokens2 ../inputs/jk6  > ../outputs/t264
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000264

echo ">>>>>>>>running test 121"
./print_tokens2 < ../inputs/ts678 > ../outputs/t121
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000121

echo ">>>>>>>>running test 204"
./print_tokens2 < ../inputs/uslin.1785 > ../outputs/t204
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000204

echo ">>>>>>>>running test 94"
./print_tokens2 < ../inputs/test330 > ../outputs/t94
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000094

echo ">>>>>>>>running test 306"
./print_tokens2 ../inputs/uslin.1632  > ../outputs/t306
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000306

echo ">>>>>>>>running test 124"
./print_tokens2 < ../inputs/ts696 > ../outputs/t124
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000124

echo ">>>>>>>>running test 60"
./print_tokens2 < ../inputs/tc367 > ../outputs/t60
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000060

echo ">>>>>>>>running test 346"
./print_tokens2 ../inputs/uslin.397  > ../outputs/t346
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000346

echo ">>>>>>>>running test 110"
./print_tokens2 < ../inputs/ts599 > ../outputs/t110
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000110

echo ">>>>>>>>running test 367"
./print_tokens2 ../inputs/uslin.722  > ../outputs/t367
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000367

echo ">>>>>>>>running test 151"
./print_tokens2 < ../inputs/tst282 > ../outputs/t151
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000151

echo ">>>>>>>>running test 336"
./print_tokens2 ../inputs/uslin.1987  > ../outputs/t336
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000336

echo ">>>>>>>>running test 38"
./print_tokens2 < ../inputs/tc109 > ../outputs/t38
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000038

echo ">>>>>>>>running test 190"
./print_tokens2 < ../inputs/uslin.1563 > ../outputs/t190
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000190

echo ">>>>>>>>running test 156"
./print_tokens2 < ../inputs/tst43 > ../outputs/t156
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000156

echo ">>>>>>>>running test 139"
./print_tokens2 < ../inputs/tst157 > ../outputs/t139
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000139

echo ">>>>>>>>running test 310"
./print_tokens2 ../inputs/uslin.1719  > ../outputs/t310
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000310

echo ">>>>>>>>running test 379"
./print_tokens2 ../inputs/uslin.883  > ../outputs/t379
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000379

echo ">>>>>>>>running test 337"
./print_tokens2 ../inputs/uslin.269  > ../outputs/t337
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000337

echo ">>>>>>>>running test 117"
./print_tokens2 < ../inputs/ts649 > ../outputs/t117
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000117

echo ">>>>>>>>running test 359"
./print_tokens2 ../inputs/uslin.551  > ../outputs/t359
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000359

echo ">>>>>>>>running test 343"
./print_tokens2 ../inputs/uslin.359  > ../outputs/t343
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000343

echo ">>>>>>>>running test 272"
./print_tokens2 ../inputs/uslin.1078  > ../outputs/t272
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000272

echo ">>>>>>>>running test 180"
./print_tokens2 < ../inputs/uslin.1383 > ../outputs/t180
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000180

echo ">>>>>>>>running test 209"
./print_tokens2 < ../inputs/uslin.1847 > ../outputs/t209
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000209

echo ">>>>>>>>running test 33"
./print_tokens2 < ../inputs/newtst594.tst > ../outputs/t33
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000033

echo ">>>>>>>>running test 18"
./print_tokens2 < ../inputs/newtst345.tst > ../outputs/t18
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000018

echo ">>>>>>>>running test 215"
./print_tokens2 < ../inputs/uslin.1914 > ../outputs/t215
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000215

echo ">>>>>>>>running test 106"
./print_tokens2 < ../inputs/ts521 > ../outputs/t106
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000106

echo ">>>>>>>>running test 338"
./print_tokens2 ../inputs/uslin.273  > ../outputs/t338
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000338

echo ">>>>>>>>running test 279"
./print_tokens2 ../inputs/uslin.1141  > ../outputs/t279
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000279

echo ">>>>>>>>running test 16"
./print_tokens2 < ../inputs/newtst293.tst > ../outputs/t16
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000016

echo ">>>>>>>>running test 267"
./print_tokens2 ../inputs/uslin.1005  > ../outputs/t267
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000267

echo ">>>>>>>>running test 48"
./print_tokens2 < ../inputs/tc253 > ../outputs/t48
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000048

echo ">>>>>>>>running test 85"
./print_tokens2 < ../inputs/test205 > ../outputs/t85
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000085

echo ">>>>>>>>running test 335"
./print_tokens2 ../inputs/uslin.1984.noeof  > ../outputs/t335
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000335

echo ">>>>>>>>running test 294"
./print_tokens2 ../inputs/uslin.1467  > ../outputs/t294
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000294

echo ">>>>>>>>running test 287"
./print_tokens2 ../inputs/uslin.1327  > ../outputs/t287
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000287

echo ">>>>>>>>running test 47"
./print_tokens2 < ../inputs/tc214 > ../outputs/t47
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000047

echo ">>>>>>>>running test 189"
./print_tokens2 < ../inputs/uslin.1549 > ../outputs/t189
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000189

echo ">>>>>>>>running test 369"
./print_tokens2 ../inputs/uslin.762  > ../outputs/t369
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000369

echo ">>>>>>>>running test 230"
./print_tokens2 < ../inputs/uslin.379 > ../outputs/t230
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000230

echo ">>>>>>>>running test 284"
./print_tokens2 ../inputs/uslin.1292  > ../outputs/t284
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000284

echo ">>>>>>>>running test 309"
./print_tokens2 ../inputs/uslin.1683  > ../outputs/t309
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000309

echo ">>>>>>>>running test 255"
./print_tokens2 < ../inputs/uslin.961 > ../outputs/t255
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000255

echo ">>>>>>>>running test 65"
./print_tokens2 < ../inputs/tc56 > ../outputs/t65
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000065

echo ">>>>>>>>running test 270"
./print_tokens2 ../inputs/uslin.105  > ../outputs/t270
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000270

echo ">>>>>>>>running test 109"
./print_tokens2 < ../inputs/ts581 > ../outputs/t109
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000109

echo ">>>>>>>>running test 254"
./print_tokens2 < ../inputs/uslin.933 > ../outputs/t254
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000254

echo ">>>>>>>>running test 320"
./print_tokens2 ../inputs/uslin.1807  > ../outputs/t320
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000320

echo ">>>>>>>>running test 37"
./print_tokens2 < ../inputs/tc106 > ../outputs/t37
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000037

echo ">>>>>>>>running test 328"
./print_tokens2 ../inputs/uslin.1870  > ../outputs/t328
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000328

echo ">>>>>>>>running test 222"
./print_tokens2 < ../inputs/uslin.272 > ../outputs/t222
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000222

echo ">>>>>>>>running test 168"
./print_tokens2 < ../inputs/uslin.1111 > ../outputs/t168
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000168

echo ">>>>>>>>running test 278"
./print_tokens2 ../inputs/uslin.1121  > ../outputs/t278
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000278

echo ">>>>>>>>running test 302"
./print_tokens2 ../inputs/uslin.1571  > ../outputs/t302
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000302

echo ">>>>>>>>running test 321"
./print_tokens2 ../inputs/uslin.1817  > ../outputs/t321
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000321

echo ">>>>>>>>running test 34"
./print_tokens2 < ../inputs/newtst75.tst > ../outputs/t34
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000034

echo ">>>>>>>>running test 127"
./print_tokens2 < ../inputs/ts726 > ../outputs/t127
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000127

echo ">>>>>>>>running test 358"
./print_tokens2 ../inputs/uslin.53  > ../outputs/t358
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000358

echo ">>>>>>>>running test 389"
./print_tokens2 ../inputs/garbage/nothing  > ../outputs/t389
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000389

echo ">>>>>>>>running test 141"
./print_tokens2 < ../inputs/tst174 > ../outputs/t141
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000141

echo ">>>>>>>>running test 55"
./print_tokens2 < ../inputs/tc33 > ../outputs/t55
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000055

echo ">>>>>>>>running test 74"
./print_tokens2 < ../inputs/test13 > ../outputs/t74
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000074

echo ">>>>>>>>running test 383"
./print_tokens2 ../inputs/uslin.900  > ../outputs/t383
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000383

echo ">>>>>>>>running test 40"
./print_tokens2 < ../inputs/tc12 > ../outputs/t40
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000040

echo ">>>>>>>>running test 301"
./print_tokens2 ../inputs/uslin.1552  > ../outputs/t301
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000301

echo ">>>>>>>>running test 340"
./print_tokens2 ../inputs/uslin.324  > ../outputs/t340
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000340

echo ">>>>>>>>running test 315"
./print_tokens2 ../inputs/uslin.1759  > ../outputs/t315
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000315

echo ">>>>>>>>running test 365"
./print_tokens2 ../inputs/uslin.715  > ../outputs/t365
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000365

echo ">>>>>>>>running test 283"
./print_tokens2 ../inputs/uslin.1258  > ../outputs/t283
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000283

echo ">>>>>>>>running test 167"
./print_tokens2 < ../inputs/uslin.1104 > ../outputs/t167
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000167

echo ">>>>>>>>running test 352"
./print_tokens2 ../inputs/uslin.492  > ../outputs/t352
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000352

echo ">>>>>>>>running test 118"
./print_tokens2 < ../inputs/ts656 > ../outputs/t118
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000118

echo ">>>>>>>>running test 210"
./print_tokens2 < ../inputs/uslin.1856 > ../outputs/t210
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000210

echo ">>>>>>>>running test 223"
./print_tokens2 < ../inputs/uslin.294 > ../outputs/t223
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000223

echo ">>>>>>>>running test 251"
./print_tokens2 < ../inputs/uslin.818 > ../outputs/t251
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000251

echo ">>>>>>>>running test 10"
./print_tokens2 < ../inputs/newtst262.tst > ../outputs/t10
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000010

echo ">>>>>>>>running test 186"
./print_tokens2 < ../inputs/uslin.1502 > ../outputs/t186
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000186

echo ">>>>>>>>running test 303"
./print_tokens2 ../inputs/uslin.1574  > ../outputs/t303
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000303

echo ">>>>>>>>running test 98"
./print_tokens2 < ../inputs/test400 > ../outputs/t98
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000098

echo ">>>>>>>>running test 80"
./print_tokens2 < ../inputs/test170 > ../outputs/t80
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000080

echo ">>>>>>>>running test 347"
./print_tokens2 ../inputs/uslin.406  > ../outputs/t347
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000347

echo ">>>>>>>>running test 14"
./print_tokens2 < ../inputs/newtst287.tst > ../outputs/t14
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000014

echo ">>>>>>>>running test 187"
./print_tokens2 < ../inputs/uslin.153 > ../outputs/t187
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000187

echo ">>>>>>>>running test 59"
./print_tokens2 < ../inputs/tc364 > ../outputs/t59
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000059

echo ">>>>>>>>running test 288"
./print_tokens2 ../inputs/uslin.1374  > ../outputs/t288
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000288

echo ">>>>>>>>running test 76"
./print_tokens2 < ../inputs/test147 > ../outputs/t76
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000076

echo ">>>>>>>>running test 87"
./print_tokens2 < ../inputs/test221 > ../outputs/t87
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000087

echo ">>>>>>>>running test 311"
./print_tokens2 ../inputs/uslin.1727  > ../outputs/t311
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000311

echo ">>>>>>>>running test 52"
./print_tokens2 < ../inputs/tc279 > ../outputs/t52
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000052

echo ">>>>>>>>running test 90"
./print_tokens2 < ../inputs/test250 > ../outputs/t90
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000090

echo ">>>>>>>>running test 43"
./print_tokens2 < ../inputs/tc185 > ../outputs/t43
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000043

echo ">>>>>>>>running test 305"
./print_tokens2 ../inputs/uslin.1624  > ../outputs/t305
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000305

echo ">>>>>>>>running test 32"
./print_tokens2 < ../inputs/newtst583.tst > ../outputs/t32
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000032

echo ">>>>>>>>running test 385"
./print_tokens2 ../inputs/uslin.943  > ../outputs/t385
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000385

echo ">>>>>>>>running test 271"
./print_tokens2 ../inputs/uslin.1067  > ../outputs/t271
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000271

echo ">>>>>>>>running test 193"
./print_tokens2 < ../inputs/uslin.1570 > ../outputs/t193
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000193

echo ">>>>>>>>running test 83"
./print_tokens2 < ../inputs/test188 > ../outputs/t83
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000083

echo ">>>>>>>>running test 185"
./print_tokens2 < ../inputs/uslin.147 > ../outputs/t185
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000185

echo ">>>>>>>>running test 231"
./print_tokens2 < ../inputs/uslin.396 > ../outputs/t231
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000231

echo ">>>>>>>>running test 262"
./print_tokens2 ../inputs/jk38  > ../outputs/t262
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000262

echo ">>>>>>>>running test 357"
./print_tokens2 ../inputs/uslin.524  > ../outputs/t357
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000357

echo ">>>>>>>>running test 281"
./print_tokens2 ../inputs/uslin.1163  > ../outputs/t281
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000281

echo ">>>>>>>>running test 157"
./print_tokens2 < ../inputs/tst45 > ../outputs/t157
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000157

echo ">>>>>>>>running test 6"
./print_tokens2 < ../inputs/newtst211.tst > ../outputs/t6
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000006

echo ">>>>>>>>running test 136"
./print_tokens2 < ../inputs/tst107 > ../outputs/t136
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000136

echo ">>>>>>>>running test 211"
./print_tokens2 < ../inputs/uslin.1873 > ../outputs/t211
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000211

echo ">>>>>>>>running test 132"
./print_tokens2 < ../inputs/ts769 > ../outputs/t132
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000132

echo ">>>>>>>>running test 61"
./print_tokens2 < ../inputs/tc37 > ../outputs/t61
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000061

echo ">>>>>>>>running test 53"
./print_tokens2 < ../inputs/tc297 > ../outputs/t53
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000053

echo ">>>>>>>>running test 344"
./print_tokens2 ../inputs/uslin.376  > ../outputs/t344
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000344

echo ">>>>>>>>running test 276"
./print_tokens2 ../inputs/uslin.1105  > ../outputs/t276
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000276

echo ">>>>>>>>running test 200"
./print_tokens2 < ../inputs/uslin.1640 > ../outputs/t200
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000200

echo ">>>>>>>>running test 229"
./print_tokens2 < ../inputs/uslin.367 > ../outputs/t229
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000229

echo ">>>>>>>>running test 108"
./print_tokens2 < ../inputs/ts580 > ../outputs/t108
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000108

echo ">>>>>>>>running test 330"
./print_tokens2 ../inputs/uslin.1911  > ../outputs/t330
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000330

echo ">>>>>>>>running test 202"
./print_tokens2 < ../inputs/uslin.1764 > ../outputs/t202
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000202

echo ">>>>>>>>running test 366"
./print_tokens2 ../inputs/uslin.720  > ../outputs/t366
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000366

echo ">>>>>>>>running test 300"
./print_tokens2 ../inputs/uslin.1548  > ../outputs/t300
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000300

echo ">>>>>>>>running test 78"
./print_tokens2 < ../inputs/test164 > ../outputs/t78
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000078

echo ">>>>>>>>running test 73"
./print_tokens2 < ../inputs/test118 > ../outputs/t73
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000073

echo ">>>>>>>>running test 7"
./print_tokens2 < ../inputs/newtst256.tst > ../outputs/t7
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000007

echo ">>>>>>>>running test 131"
./print_tokens2 < ../inputs/ts765 > ../outputs/t131
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000131

echo ">>>>>>>>running test 391"
./print_tokens2 ../inputs/garbage/nothing  > ../outputs/t391
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000391

echo ">>>>>>>>running test 376"
./print_tokens2 ../inputs/uslin.869  > ../outputs/t376
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000376

echo ">>>>>>>>running test 317"
./print_tokens2 ../inputs/uslin.1765  > ../outputs/t317
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000317

echo ">>>>>>>>running test 31"
./print_tokens2 < ../inputs/newtst571.tst > ../outputs/t31
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000031

echo ">>>>>>>>running test 274"
./print_tokens2 ../inputs/uslin.1084  > ../outputs/t274
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000274

echo ">>>>>>>>running test 291"
./print_tokens2 ../inputs/uslin.1431  > ../outputs/t291
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000291

echo ">>>>>>>>running test 377"
./print_tokens2 ../inputs/uslin.874  > ../outputs/t377
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000377

echo ">>>>>>>>running test 286"
./print_tokens2 ../inputs/uslin.131  > ../outputs/t286
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000286

echo ">>>>>>>>running test 49"
./print_tokens2 < ../inputs/tc254 > ../outputs/t49
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000049

echo ">>>>>>>>running test 260"
./print_tokens2 ../inputs/jk29  > ../outputs/t260
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000260

echo ">>>>>>>>running test 218"
./print_tokens2 < ../inputs/uslin.1975 > ../outputs/t218
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000218

echo ">>>>>>>>running test 120"
./print_tokens2 < ../inputs/ts673 > ../outputs/t120
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000120

echo ">>>>>>>>running test 137"
./print_tokens2 < ../inputs/tst109 > ../outputs/t137
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000137

echo ">>>>>>>>running test 41"
./print_tokens2 < ../inputs/tc146 > ../outputs/t41
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000041

echo ">>>>>>>>running test 133"
./print_tokens2 < ../inputs/ts794 > ../outputs/t133
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000133

echo ">>>>>>>>running test 63"
./print_tokens2 < ../inputs/tc41 > ../outputs/t63
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000063

echo ">>>>>>>>running test 312"
./print_tokens2 ../inputs/uslin.1731  > ../outputs/t312
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000312

echo ">>>>>>>>running test 12"
./print_tokens2 < ../inputs/newtst276.tst > ../outputs/t12
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000012

echo ">>>>>>>>running test 203"
./print_tokens2 < ../inputs/uslin.177 > ../outputs/t203
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000203

echo ">>>>>>>>running test 86"
./print_tokens2 < ../inputs/test219 > ../outputs/t86
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000086

echo ">>>>>>>>running test 243"
./print_tokens2 < ../inputs/uslin.665 > ../outputs/t243
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000243

echo ">>>>>>>>running test 146"
./print_tokens2 < ../inputs/tst251 > ../outputs/t146
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000146

echo ">>>>>>>>running test 295"
./print_tokens2 ../inputs/uslin.1481  > ../outputs/t295
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000295

echo ">>>>>>>>running test 100"
./print_tokens2 < ../inputs/test87 > ../outputs/t100
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000100

echo ">>>>>>>>running test 323"
./print_tokens2 ../inputs/uslin.1842  > ../outputs/t323
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000323

echo ">>>>>>>>running test 380"
./print_tokens2 ../inputs/uslin.884  > ../outputs/t380
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000380

echo ">>>>>>>>running test 84"
./print_tokens2 < ../inputs/test192 > ../outputs/t84
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000084

echo ">>>>>>>>running test 258"
./print_tokens2 ../inputs/jk26  > ../outputs/t258
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000258

echo ">>>>>>>>running test 128"
./print_tokens2 < ../inputs/ts731 > ../outputs/t128
gcov print_tokens2.c
mv print_tokens2.c.gcov ../traces_tmp/dump_000128

