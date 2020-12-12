rm *.gcda

echo ">>>>>>>>running test 4"
./print_tokens < ../inputs/tc318 > ../outputs/t4
gcov print_tokens.c
mv print_tokens.c.gcov ../traces/dump_000004

echo ">>>>>>>>running test 9"
./print_tokens < ../inputs/tst147 > ../outputs/t9
gcov print_tokens.c
mv print_tokens.c.gcov ../traces/dump_000009

echo ">>>>>>>>running test 11"
./print_tokens < ../inputs/uslin.1308 > ../outputs/t11
gcov print_tokens.c
mv print_tokens.c.gcov ../traces/dump_000011

echo ">>>>>>>>running test 12"
./print_tokens < ../inputs/uslin.100 > ../outputs/t12
gcov print_tokens.c
mv print_tokens.c.gcov ../traces/dump_000012

echo ">>>>>>>>running test 8"
./print_tokens < ../inputs/test95 > ../outputs/t8
gcov print_tokens.c
mv print_tokens.c.gcov ../traces/dump_000008

echo ">>>>>>>>running test 3"
./print_tokens < ../inputs/test201 > ../outputs/t3
gcov print_tokens.c
mv print_tokens.c.gcov ../traces/dump_000003

echo ">>>>>>>>running test 7"
./print_tokens < ../inputs/uslin.1208 > ../outputs/t7
gcov print_tokens.c
mv print_tokens.c.gcov ../traces/dump_000007

echo ">>>>>>>>running test 2"
./print_tokens < ../inputs/tc46 > ../outputs/t2
gcov print_tokens.c
mv print_tokens.c.gcov ../traces/dump_000002

echo ">>>>>>>>running test 5"
./print_tokens < ../inputs/uslin.1755 > ../outputs/t5
gcov print_tokens.c
mv print_tokens.c.gcov ../traces/dump_000005

echo ">>>>>>>>running test 13"
./print_tokens < ../inputs/test306 > ../outputs/t13
gcov print_tokens.c
mv print_tokens.c.gcov ../traces/dump_000013

echo ">>>>>>>>running test 10"
./print_tokens < ../inputs/tc369 > ../outputs/t10
gcov print_tokens.c
mv print_tokens.c.gcov ../traces/dump_000010

echo ">>>>>>>>running test 1"
./print_tokens < ../inputs/ts522 > ../outputs/t1
gcov print_tokens.c
mv print_tokens.c.gcov ../traces/dump_000001

echo ">>>>>>>>running test 6"
./print_tokens < ../inputs/test127 > ../outputs/t6
gcov print_tokens.c
mv print_tokens.c.gcov ../traces/dump_000006

