/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 * @flow
 */

import React, { Component } from 'react';
import {
  AppRegistry,
  StyleSheet,
  Text,
  View,
} from 'react-native';

/** example--FLAnimatedImage **/

// import FLAnimatedImage from './FLAnimatedImage';
// export default class UIComponentExample extends Component {
//
//   render() {
//     // let url = "https://upload.wikimedia.org/wikipedia/commons/2/2c/Rotating_earth_%28large%29.gif"
//     let url = "https://cloud.githubusercontent.com/assets/1567433/10417835/1c97e436-7052-11e5-8fb5-69373072a5a0.gif"
//     return (
//       <View style={styles.container}>
//         <FLAnimatedImage style={styles.nativeViewStyle}
//           src={url}
//           resizeMode="contain"
//         />
//
//         <View style={styles.textContainer}>
//           <Text style={{fontSize: 20}}>FLAnimatedImage</Text>
//           <Text>https://github.com/Flipboard/FLAnimatedImage</Text>
//         </View>
//       </View>
//     );
//   }
// }


/** example--GradientView **/

import GradientView from './GradientView';
export default class UIComponentExample extends Component {
  render() {
    return (
      <View style={styles.container}>
        <GradientView
          style={styles.nativeViewStyle}
          rnColors={['red', 'blue']}
          rnLocations={[0.8, 0.2]}
          >
        </GradientView>
        <View style={styles.textContainer}>
          <Text style={{fontSize: 20}}>GradientView</Text>
          <Text>https://github.com/soffes/GradientView</Text>
        </View>
      </View>


    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#F5FCFF',
    marginTop: 20,
  },
  nativeViewStyle: {
    flex: 9,
  },
  textContainer: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',

  }
});

AppRegistry.registerComponent('UIComponentExample', () => UIComponentExample);
