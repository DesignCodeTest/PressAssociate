Feature: Simulate requests to add, update or delete a video clip to the Daily Song queue


#Songs

#Case_01
Scenario: POST request to create a couple of video clips 
Given Accept the content in Json Format - PostToCreateAFewVideoClips
And Content Type as JSON - PostToCreateAFewVideoClips - PostToCreateAFewVideoClips
When I perform the Post request with _id as "596cbda86ed7c10011a68b38", - PostToCreateAFewVideoClips
And artist as "Lady Gaga", song as "Just Dance", - PostToCreateAFewVideoClips
And publishDate as "2017-09-01T00:00:00.000Z", - PostToCreateAFewVideoClips
And __v as "0", date_created as "2017-07-17T13:37:44.559Z" - PostToCreateAFewVideoClips
Then Status code 200 OK should be returned - PostToCreateAFewVideoClips
And Response should return the correct ID - PostToCreateAFewVideoClips


#Case_02
Scenario: GET request to return data about all existing video clips
Given the Accept content format is Json - GetsAllExistingVideoClips 
And  where Content Type as JSON - GetsAllExistingVideoClips 
When I perform a Get request for all existing video clips - GetsAllExistingVideoClips 
Then Status code 200 - OK is expected - GetsAllExistingVideoClips 
And Response should return all clips with the correct credentials - GetsAllExistingVideoClips 


#Case_03
Scenario: GET request to return data about a single video
Given the Accept content format is Json - GetSingleVideoClip
And  with the Content Type as JSON - GetSingleVideoClip
When I perform a Get request for all existing video clips - GetSingleVideoClip
Then expected Status code 200 - OK - GetSingleVideoClip
And Response should return all clips with the correct credentials - GetSingleVideoClip


#Case_04
Scenario: POST request to create a video clip 
Given Accept the content in Json Format - PostToCreateVideoClip
And Content Type as JSON - PostToCreateVideoClip
When I perform the Post request with _id as "596cbda86ed7c10011a68b38", - PostToCreateVideoClip
And artist as "Lady Gaga", song as "Just Dance", - PostToCreateVideoClip
And publishDate as "2017-09-01T00:00:00.000Z", - PostToCreateVideoClip
And __v as "0", - PostToCreateVideoClip
And date_created as "2017-07-17T13:37:44.559Z" - PostToCreateVideoClip
Then Status code 200 - OK should be returned - PostToCreateVideoClip
And Response should return the correct ID - PostToCreateVideoClip


##Case_05
Scenario: PATCH request to update data about a single video
Given content in JSON - PatchToUpdate_A_VideoClip
And with the Content Type as JSON - PatchToUpdate_A_VideoClip
When I perform PATCH request with ID - PatchToUpdate_A_VideoClip
Then expected HTTP status code response is 200 OK - PatchToUpdate_A_VideoClip
And details should get updated - PatchToUpdate_A_VideoClip


#Case_06
Scenario: DELETE request to remove a video clip
Given Accept content in JSON - deleteAvideoClip
And with the Content Type as JSON - deleteAvideoClip
When I perform a DELETE request with ID - deleteAvideoClip
Then expected HTTP status code response is 204 - deleteAvideoClip
And I perform a GET for same ID - detail should now not be found - deleteAvideoClip



##Playlist

#Case_07
Scenario: GET request to return data about all existing playlists
Given the Accept Content format is JSON 
And  Content Type is JSON
When I perform a Get request for all existing playlists
Then Status code 200 - OK is expected in response
And Response should return all playlists with correct credentials


#Case_08
Scenario: GET request to return data about a single playlist
Given the Accept content format is Json - GetSinglePlayList
And  with the Content Type as JSON - GetSinglePlayList
When I perform a Get request for all existing video clips - GetSinglePlayList
Then expected Status code 200 - OK - GetSinglePlayList
And Response should return all clips with the correct credentials - GetSinglePlayList

#
#Case_09
Scenario: POST request to create a playlist
Given the Accept content format is Json - PostToCreatePlayList
And with the Content Type as JSON - PostToCreatePlayList
When I perform a Post request with _id as somethingTBC - PostToCreatePlayList
Then expected Http status code is 200 - OK - PostToCreatePlayList
And Response should return all clips with the correct credentials - PostToCreatePlayList


#Case_10
Scenario: PATCH request to add and remove songs from the playlist
Given content in JSON - PatchToAddRemoveClipsFromPlaylist
And with the Content Type as JSON - PatchToAddRemoveClipsFromPlaylist
When I perform PATCHT request with ID - PatchToAddRemoveClipsFromPlaylist
Then expected HTTP status code response is Http_SC_OK - PatchToAddRemoveClipsFromPlaylist
And details should get updated - PatchToAddRemoveClipsFromPlaylist


#Case_11
Scenario: DELETE request to remove a video clip from a playlist
Given content in JSON - DeleteToRemoveClipFromPlaylist
And with the Content Type as JSON - DeleteToRemoveClipFromPlaylist
When I perform a DELETE request with ID of a clip in playlist - DeleteToRemoveClipFromPlaylist
Then expected HTTP status code response is 204 - DeleteToRemoveClipFromPlaylist
And I perform a GET for same ID - detail should now not be found - DeleteToRemoveClipFromPlaylist

