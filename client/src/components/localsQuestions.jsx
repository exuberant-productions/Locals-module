import React from 'react';

const Questions = () => (
  <div className="questions-container">
    <div className="greyed question">
      Do you live in Cow Hollow?
    </div>
    <div className="tell-us">
      If so, tell our Community about yours:
    </div>
    <div className="question-stack">
      <div className="back-card">
      </div>
      <div className="front-card">
        <div className="front-contents">
          <div className="h4 grey text-center">
          Can you regularly hear street noise inside your home?
          </div>
          <div className="answers">
            <button type="button" className="ask ask0">
              Yes
            </button>
            <button type="button" className="ask">
              No
            </button>
          </div>
          <div className="question-skip">
            Skip Question
          </div>
        </div>
      </div>
    </div>
  </div>
);

export default Questions;
