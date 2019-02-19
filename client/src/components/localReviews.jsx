import React from 'react';

const Reviews = () => {
  return (
    <div>
      <div className="statement">Neighborhood Reviews</div>
      <ul className="reviews-container">
        <li className="review-box">
          <div>
            I love my neighborhood! It’s such a fun and safe area.
            Great for families too! Super convenient to walk to restaurants and bars.
          </div>
          <div> <br/> -- By User </div>
        </li>
        <li className="review-box">
          <div>
            Walkable safe fun and convenient,
            everything you need is at Fred’s hardware Clean safe
            and easy access with parks and shops close by
          </div>
          <div> <br/> -- By User </div>
        </li>
      </ul>
    </div>
  );
};

export default Reviews;
