import React from 'react';

class Features extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      showing: false,
      numberToShow: 3,
    };
  }

  render() {
    const {
      showing,
      numberToShow,
    } = this.state;
    const {
      questions,
      answerCount,
      neighborhoodName,
    } = this.props;
    return (
      <div className="comp-container">
        <div className="h5">
          Neighborhood Features
        </div>
        <div className="greyed-small">
          {`% of Locals who say ${neighborhoodName} has these qualities`}
        </div>
        <ul className="features-container">
          {
            answerCount.map((value, index) => {
              if (index >= numberToShow) {
                return (<div></div>);
              }
              return (
                <li className="thumbs-container">
                  <ul className="feature-line">
                    <li className="percent surround">
                      <span className="thumbs-container">
                        <img className="thumbs-image" src="https://s3-us-west-1.amazonaws.com/icons-trulia/thumbs.svg" alt="thumbs-icon" />
                        <span className="tell-us">
                          {`${answerCount[index].yesPercent}%`}
                        </span>
                      </span>
                    </li>
                    <li>
                      <div className="desc-container">
                        <img className="thumbs-image" src={questions[answerCount[index].questionNum - 1].image_link} alt={questions[answerCount[index].questionNum - 1].descript} />
                        <span className="feature-desc">
                          {questions[answerCount[index].questionNum - 1].descript}
                        </span>
                      </div>
                    </li>
                  </ul>
                </li>  
              );
            })
          }
        </ul>
        <a className="see-more">
          See more
        </a>
      </div>
    );
  }
}


export default Features;
