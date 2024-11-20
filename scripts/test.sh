#!/bin/bash
resp=$(curl --location 'https://cdn.mewatch.sg/api/items/97104/videos?delivery=stream%2Cprogressive&ff=idp%2Cldp%2Crpt%2Ccd&lang=en&resolution=External&segments=all' | jq '.[2]')
url=$(echo $resp | jq -r '.url')
drm=$(echo $resp | jq -r '.drm')
sed -i "s/{#URL}/$url/g" template/widevine.template > mewatch.m3u8
sed -i "s/{#DRM}/$drm/g" template/widevine.template > mewatch.m3u8
cat mewatch.m3u8
