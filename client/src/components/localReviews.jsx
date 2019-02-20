import React from 'react';

const Reviews = (props) => {
  const {
  reviews,
  } = props;
  return (
    <div className="comp-container">
      <div className="statement">Neighborhood Reviews</div>
      <ul className="reviews-container">
        {
          reviews.map( (value) => {
            return (
              <li className="review-box">
                <div>
                  {value.review}
                </div>
                <div> <br/> {value.user} </div>
              </li>
            );
          })
        }
      </ul>
    </div>
  );
};

export default Reviews;
