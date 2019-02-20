import React from 'react';
import Overview from './overview';
import Locals from './localsView';
import '../../../public/styles.css';
// import $ from 'jquery';

function priceRanger(arrayOfHomes) {
  let highest = arrayOfHomes[0].price;
  let lowest = arrayOfHomes[0].price;
  for (let i = 0; i < arrayOfHomes.length; i += 1) {
    if (highest < arrayOfHomes[i].price) {
      highest = arrayOfHomes[i].price;
    }
    if (lowest > arrayOfHomes[i].price) {
      lowest = arrayOfHomes[i].price;
    }
  }
  return {
    highest,
    lowest,
  };
}

// function featureOrdering(featureSet) {

// }

class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      neighborhood: undefined,
      homesOnSale: undefined,
      questions: undefined,
      answerCount: undefined,
      reviews: undefined,
      numberOfHouses: undefined,
      priceRange: {
        lowest: 0,
        highest: 0,
      },
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
    ]).then(([dat1, dat2, dat3, dat4, dat5]) => ([dat1, dat2, dat3, dat4, dat5]))
      .then(([dataGot1, dataGot2, dataGot3, dataGot4, dataGot5]) => {
        console.log(dataGot3);
;        this.setState({
          neighborhood: dataGot1[0],
          homesOnSale: dataGot2,
          questions: dataGot3,
          answerCount: dataGot4,
          reviews: dataGot5,
          numberOfHouses: dataGot2.length,
          priceRange: priceRanger(dataGot2),
        });
        // if (!this.priceRange) {
        //   this.setState({
        //     priceRange: priceRanger(dataGot2),
        //   });
        // }
      });
  }

  render() {
    const {
      neighborhood,
      homesOnSale,
      questions,
      answerCount,
      reviews,
      priceRange,
      numberOfHouses,
    } = this.state;

    if (
      !neighborhood
      || !homesOnSale
      || !questions
      || !answerCount
      || !reviews
      || !priceRange
      || !numberOfHouses
    ) {
      return (
        <div>
          {/* {Nothing to report} */}
        </div>
      )
    }

    return (
      <div className="main-container">
        <div>
          <div>
            <Overview neighborhood={neighborhood} priceRange={priceRange} numberOfHouses={numberOfHouses} />
          </div>
          <div>
            <Locals questions={questions} neighborhood={neighborhood} answerCount={answerCount} />
          </div>
          <div>
            {/* {neighborhood} */}
          </div>
        </div>
      </div>
    );
  };
}

export default App;
