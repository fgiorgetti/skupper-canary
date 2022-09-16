echo Running curl nginx:8080 on site-a
kubectl -n site-a exec deploy/curl -- sh -c 'for i in `seq 1 100`; do curl -s nginx:8080 | grep "Hello" | sed -re "s/<[\/]?h1>//g" ; done' > nginx.out.site-a
echo Running curl nginx:8080 on site-b
kubectl -n site-b exec deploy/curl -- sh -c 'for i in `seq 1 100`; do curl -s nginx:8080 | grep "Hello" | sed -re "s/<[\/]?h1>//g" ; done' > nginx.out.site-b
echo

echo Summary from Site-A
cat nginx.out.site-a | sort | uniq -c
echo
echo Summary from Site-B
cat nginx.out.site-b | sort | uniq -c
echo
