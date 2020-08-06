# react-native-images-merge

## Getting started

`$ npm install react-native-images-merge --save`

### Mostly automatic installation

`$ react-native link react-native-images-merge`

## Usage
```javascript
import ImagesMerge from 'react-native-images-merge';

    ImagesMerge.mergeImages([{
        uri: 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAALGPC/xhBQAAAAFzUkdCAK7OHOkAAACzSURBVDjLhVIxEsAgCONZLi6Oujn6/3/Yw7t4gUI75OwJCTFUaq1b0Vo76L0frLUM5pwHWtM+8ARkLaApIjJYRKCEySzEgCDqehoH3sWXGzhQCE/nDCIXIOP7OCilbM4BQmMMQ+Ianq1cici8GU8GlGwEsma+8wFegUiEp0WZ3C1EGfjn6Jn+SBBgF385oPZy4IlZuGYLSJOdZKJcv1vwzSB40eyJwo1RgyeHDvy0TIh7gQcKP8ylbMeQ9QAAAABJRU5ErkJggg==',
    }, { uri: 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAALGPC/xhBQAAAAFzUkdCAK7OHOkAAAC6SURBVDjLpVOrDsMwDMznDA8UDewHhgYjFXZgaDSovF+wr011kS5yLkkbbcCV7Z4vfrp1nuL2usXv555l1Easg7I8LvH9vGaBjZ89H3QIYhOBBQLErKzQb7HwO3xsMMEtAqZNfJEBARqodZOsIlCANk99RQ9gHIFbk2CZrlfzGUGzhBBC9N7nDPTFIQLIGQGwVQ8I0s3sTaTqgQ08IuiO0e6Cpju0SL+sciJgQ+zR6OFAp9/iUg/+PecdxlckrJoZmykAAAAASUVORK5CYII=' }], (result) => {
        console.log(result);
    })

```
## This REPO IS IN PORGRESS NEED TO DO ANROID VERSION !!!