
#!/usr/bin/env bash
echo 'tar process started .............................'

cd ..

rm -rfd temp
mkdir temp

cp -r ./terraform/ ./temp/

cd temp

rm -rf .git .gitignore
COPYFILE_DISABLE=1 tar czfv ResourceGroup-0.0.1.tgz 01-rg/
COPYFILE_DISABLE=1 tar czfv AccessGroup-AccessPolicies-0.0.1.tgz 02-ag-accesspolicies/
COPYFILE_DISABLE=1 tar czfv AssignUsersToAccessGroup-0.0.1.tgz 03-ag-users/

mv *.tgz ../tgz

cd ..
rm -rfd temp

echo 'tar process completed .............................'
