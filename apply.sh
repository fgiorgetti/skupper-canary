ls -1 site-a/* | xargs -r -i kubectl -n site-a apply -f {}
ls -1 site-b/* | xargs -r -i kubectl -n site-b apply -f {}
