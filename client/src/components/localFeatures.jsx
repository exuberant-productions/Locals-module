import React from 'react';

class Features extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      showing: false,
    };
  }

  render() {
    return (
      <div>
        <div className="h5">
          Neighborhood Features
        </div>
        <div className="greyed-small" >
          % of Locals who say Cow Hollow has these qualities
        </div>
        <ul className="features-container">
          <li className="thumbs-container">
            <ul className="feature-line">
              <li className="percent surround">
                <span className="thumbs-container">
                  <img className="thumbs-image" src="./media/thumbs.svg" alt="thumbs-icon" />
                  <span className="tell-us"> 98%</span>
                </span>
              </li>
              <li>
                <div className="desc-container">
                  <img className="thumbs-image" src="./media/sidewalk.svg" alt="sidewalk-icon" />
                  <span className="feature-desc"> There are sidewalks</span>
                </div>
              </li>
            </ul>
          </li>
          <li className="thumbs-container">
            <ul className="feature-line">
              <li className="percent surround">
                <span className="thumbs-container">
                  <img className="thumbs-image" src="./media/thumbs.svg" alt="thumbs-icon" />
                  <span className="tell-us"> 94%</span>
                </span>
              </li>
              <li>
                <div className="desc-container"> 
                  <img className="thumbs-image" src="./media/restaurant.svg" alt="restaurant-icon" />
                  <span className="feature-desc"> It's walkable to restaurants</span>
                </div>
              </li>
            </ul>
          </li>
          <li className="thumbs-container">
            <ul className="feature-line">
              <li className="percent surround">
                <span className="thumbs-container">
                  <img className="thumbs-image" src="./media/thumbs.svg" alt="thumbs-icon" />
                  <span className="tell-us"> 93%</span>
                </span>
              </li>
              <li>
                <div className="desc-container"> 
                  <img className="thumbs-image" src="./media/dog.svg" alt="restaurant-icon" />
                  <span className="feature-desc"> It's dog friendly</span>
                </div>
              </li>
            </ul>
          </li>          
        </ul>
        <a className="see-more">
          See more 
        </a>
      </div>
    );
  }
}


export default Features;
