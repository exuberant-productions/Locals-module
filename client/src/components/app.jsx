import React from 'react';
import Overview from './overview';
import Locals from './localsView';
// import $ from 'jquery';


class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      neighborhood: undefined,
      homesOnSale: undefined,
      questions: undefined,
      answerCount: undefined,
      reviews: undefined,
    };
    // this.tester = this.tester.bind(this);
  }

  componentDidMount() {
    Promise.all([
      fetch('http://localhost:3004/neighborhood/1').then(value => value.json()),
      fetch('http://localhost:3004/homes/1').then(value => value.json()),
      fetch('http://localhost:3004/questions').then(value => value.json()),
      fetch('http://localhost:3004/features/1').then(value => value.json()),
      fetch('http://localhost:3004/reviews/1').then(value => value.json()),
    ]).then(([dat1, dat2, dat3, dat4, dat5]) => ([dat1, dat2, dat3, dat4, dat5])).then(([dataGot1, dataGot2, dataGot3, dataGot4, dataGot5]) => {
      this.setState({
        neighborhood: dataGot1,
        homesOnSale: dataGot2,
        questions: dataGot3,
        answerCount: dataGot4,
        reviews: dataGot5,
      });
      console.log(this.state.questions);
    });
  }

  render() {
    // const { neighborhood } = this.state;
    return (
      <div>
        <div>
          <Overview />
        </div>
        <div>
          <Locals />
        </div>
        <div>
          {/* {neighborhood} */}
        </div>
      </div>
    );
  };
}

export default App;
