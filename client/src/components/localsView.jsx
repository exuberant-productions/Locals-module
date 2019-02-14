import React from 'react';
import Features from './localFeatures';
import LocalMap from './localsMap';
import Reviews from './localReviews';
import Questions from './localsQuestions';

class Locals extends React.Component {
  constructor(props) {
    super(props);
    this.state = {

    };
  }

  render() {
    return (
      <div>
        <div className="h3">What Locals Say</div>
        <div className="greyed">Here is what locals have to say about Cow Hollow</div>
        <ul className="locals-container">
          <li className="locals-Part">
            <LocalMap />
          </li>
        </ul>
      </div>
    );
  }
}

export default Locals;
