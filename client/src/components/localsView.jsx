import React from 'react';
import Features from './localFeatures';
import LocalMap from './localsMap';
import Reviews from './localReviews';
import Questions from './localsQuestions';

class Locals extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      questionNum: 0,
    };
  }

  render() {
    const {
      questions,
      neighborhood,
      answerCount,
      reviews,
    } = this.props;
    const { questionNum } = this.state;
    return (
      <div>
        <div className="h3">What Locals Say</div>
        <div className="greyed">
          {`Here is what locals have to say about ${neighborhood.name}`}
        </div>
        <ul className="locals-container">
          <li className="locals-part">
            <div>
              <LocalMap />
            </div>
            <div>
              <Questions
                questions={questions}
                questionNum={questionNum}
                neighborhoodName={neighborhood.name}
              />
            </div>
          </li>
          <li className="locals-part">
            <div>
              <Features
                questions={questions}
                answerCount={answerCount}
                neighborhoodName={neighborhood.name}
              />
            </div>
            <div>
              <Reviews reviews={reviews} />
            </div>
          </li>
        </ul>
      </div>
    );
  }
}

export default Locals;
