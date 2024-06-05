# twb_shrink_files

Get the list of all files and their sizes

```bash
az storage file list --account-name cmescontent --share-name contentshare --path 'CMES-Pi/assets/content/' --output json --sas-token 'xxx' --query "[*].{name:name, size:properties.contentLength}" > files_with_size.json
```

Sort by size
```bash
jq 'sort_by(.size)' twb_files_with_size.json > ./twb_files_by_size.json
```

Run playbook