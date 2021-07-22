import React from 'react';
import PageRenderer from './page-renderer'
import {BrowserRouter as Router, Switch, Route, Redirect} from 'react-router-dom'

import Navigation from './components/navigation.js'

function App() {
  const user = {
    firstName: 'Tausif',
    lastName: 'Zaman'
  }
  return (
    <Router>
      <div className="App">
        <Navigation user={user}/>
        <Switch>
          <Route path="/:page" component = {PageRenderer} />
          <Route path="/" render={() => <Redirect to ="/home" />} />
          <Route component={() => 404} />
        </Switch>
      </div>
    </Router>
  );
}

export default App;
