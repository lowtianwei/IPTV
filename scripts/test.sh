#!/bin/bash
resp=$(curl --location 'https://cdn.mewatch.sg/api/items/97104/videos?delivery=stream%2Cprogressive&ff=idp%2Cldp%2Crpt%2Ccd&lang=en&resolution=External&segments=all' | jq '.[2]')
url=$(echo $resp | jq -r '.url')
drm=$(echo $resp | jq -r '.drm')
sed -i 's/{$url}/$url/g' template/widevine.template
sed -i 's/{$drm}/$drm/g' template/widevine.template
cat template/widevine.template
