import React from 'react';

const Overview = (props) => {
  const {
    neighborhood,
    priceRange,
    numberOfHouses,
  } = props;
  return (
    <div className="neighborhood-overview-main">
      <div className="h3"> Neighborhood Overview </div>
      <span className="neighborhood-overview-container">
        <img className="neighborhood-overview-image" src={neighborhood.image_link} alt="neighborhood" />
        <ul className="overview-content">
          <li>
            <div className="h4">
              {neighborhood.name.charAt(0).toUpperCase() + neighborhood.name.slice(1)} 
            </div>
          </li>
          <li className="li-content">
            <img className="icon" src="https://s3-us-west-1.amazonaws.com/icons-trulia/sale_icon.svg" alt="sale-icon" />
            <span className="words">
              {`${numberOfHouses} Homes For Sale`}
            </span>
          </li>
          <li className="li-content">
            <img className="icon" src="https://s3-us-west-1.amazonaws.com/icons-trulia/home_icon.svg" alt="home-icon" />
            <span className="words">
              {`Buy: $ ${priceRange.lowest} - $ ${priceRange.highest}`}
            </span>
          </li>
          <li className="li-content">
            <a className="words" id="highlights" href="www.google.com"> See Local Highlights </a>
          </li>
        </ul>
      </span>
    </div>
  );
};

export default Overview;
