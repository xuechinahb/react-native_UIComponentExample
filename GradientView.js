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

let RNGradientView = requireNativeComponent('RNGradientViewSwift', GradientView);

export default class GradientView extends Component {
  static propTypes = {
    rnColors: PropTypes.array,
    rnLocations: PropTypes.array,
  }
  render(){
    let {rnColors,...otherProps} = this.props;
    let colors = Array.from(rnColors, color => processColor(color))
    return (
      <RNGradientView
        {...otherProps}
        rnColors={colors}
        >

      </RNGradientView>
    )
  }
}
