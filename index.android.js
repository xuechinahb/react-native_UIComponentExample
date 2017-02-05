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
  View
} from 'react-native';

import KenBurnsView from './KenBurnsView'



export default class UIComponentExample extends Component {
  render() {
    // let imgSource = 'img_source_a.jpeg';
    let imgSource = 'img_source_b.jpeg';

    return (
      <View style={styles.container}>
        <KenBurnsView
          style={styles.kenBurnsViewStyle}
          source={imgSource}
        />
        <View style={styles.textContainer}>
          <Text style={{fontSize: 20}}>KenBurnsView</Text>
          <Text>https://github.com/flavioarfaria/KenBurnsView</Text>
        </View>
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#F5FCFF',
  },
  kenBurnsViewStyle: {
    flex: 9
  },

  textContainer: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',

  }

});

AppRegistry.registerComponent('UIComponentExample', () => UIComponentExample);
