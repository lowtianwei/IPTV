#!/bin/bash
curl --location 'https://www.mewatch.sg/api/account/items/97104/videos?delivery=stream&ff=idp%2Cldp%2Crpt%2Ccd&lang=en&resolution=External&segments=all&sub=Registered' \
--header 'X-Authorization: {token}'
