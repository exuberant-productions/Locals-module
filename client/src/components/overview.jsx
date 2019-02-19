import React from 'react';

const Overview = (props) => {
  const { neighborhood } = props;
  return (
    <div className="neighborhood-overview-main">
      <div className="h3"> Neighborhood Overview </div>
      <span className="neighborhood-overview-container">
        <img className="neighborhood-overview-image" src="https://cdn.vox-cdn.com/thumbor/8r8BPzz1c43V-euim7Oryo_bBYA=/0x0:1200x800/1200x800/filters:focal(504x304:696x496)/cdn.vox-cdn.com/uploads/chorus_image/image/57847271/Corktown_101.0.jpg" alt="neighborhood" />
        <ul className="overview-content">
          <li>
            <div className="h4"> {neighborhood.name} </div>
          </li>
          <li className="li-content">
            <img className="icon" src="./media/sale_icon.svg" alt="sale-icon" />
            <span className="words">8 Homes For Sale </span>
          </li>
          <li className="li-content">
            <img className="icon" src="./media/home_icon.svg" alt="home-icon" />
            <span className="words">Buy: $263k - $8.9m </span>
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
