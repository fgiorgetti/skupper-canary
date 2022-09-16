ls -1 site-a/* | xargs -r -i kubectl -n site-a delete -f {}
ls -1 site-b/* | xargs -r -i kubectl -n site-b delete -f {}
