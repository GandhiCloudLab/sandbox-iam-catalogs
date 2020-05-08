
#!/usr/bin/env bash
echo 'tar process started .............................'

cd ..

rm -rfd temp
mkdir temp

cp -r ./terraform/ ./temp/

cd temp

rm -rf .git .gitignore
COPYFILE_DISABLE=1 tar czfv 1-rg-0.0.1.tgz 1-rg/
COPYFILE_DISABLE=1 tar czfv 2-ag-accesspolicies-0.0.1.tgz 2-ag-accesspolicies/
COPYFILE_DISABLE=1 tar czfv 8-ag-0.0.1.tgz 8-ag/

mv *.tgz ../tgz

cd ..
rm -rfd temp

echo 'tar process completed .............................'