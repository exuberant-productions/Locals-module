import React from 'react';
import Overview from './overview';
import Locals from './localsView';
// import $ from 'jquery';


class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      writeReview: false,
    };
  }

  render() {
    return (
      <div>
        <div>
          <Overview />
        </div>
        <div>
          <Locals />
        </div>
      </div>
    );
  }
}

export default App;
