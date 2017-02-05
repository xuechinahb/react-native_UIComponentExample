/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 * @flow
 */

import React, { Component,PropTypes } from 'react';
import {
  AppRegistry,
  StyleSheet,
  Text,
  View,
  NativeModules,
  requireNativeComponent,
} from 'react-native';

let RNFLAnimatedImageManager = NativeModules.RNFLAnimatedImageManager;
// import {ScaleAspectFit, ScaleAspectFill, ScaleToFill} from RNFLAnimatedImageManager;
var {ScaleAspectFit, ScaleAspectFill, ScaleToFill} = RNFLAnimatedImageManager;

let MODES = {'stretch': ScaleToFill, 'contain': ScaleAspectFit, 'cover': ScaleAspectFill};

console.log('modes.stretch=' + MODES.contain);

let RNFLAnimatedImage = requireNativeComponent('RNFLAnimatedImage', FLAnimatedImage);


export default class FLAnimatedImage extends Component {

  static propTypes = {
    contentMode: PropTypes.number,
    src: PropTypes.string,
    resizeMode: PropTypes.string,
    onFrameChange: PropTypes.func,
    ...View.propTypes
  }


  changeEvent(){
    console.log('changeEvent.....');
  }

  render() {
    var contentMode = MODES[this.props.resizeMode] || MODES.stretch;
    return (
      <RNFLAnimatedImage
        {...this.props}
        contentMode={contentMode}
      />
    );
  }
}
