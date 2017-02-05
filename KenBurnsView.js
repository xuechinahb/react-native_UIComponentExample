import React, { Component,PropTypes} from 'react';
import {
  AppRegistry,
  StyleSheet,
  Text,
  View,
  NativeModules,
  requireNativeComponent,
  processColor
} from 'react-native';

let props = {
  name: 'KenBurnsView',
  propTypes: {
    source: PropTypes.string,
    ...View.propTypes//导入View的所有属性
  }
}

module.exports = requireNativeComponent('KenBurnsView', props)
