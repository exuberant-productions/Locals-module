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

function featureOrdering(featureSet) {
  let newSet = featureSet.map((value) => {
    // const percentage = parseFloat(value.yes_count) / parseFloat(value.yes_count + value.no_count);
    const percentage = (value.yes_count) / (value.yes_count + value.no_count);

    return {
      questionNum: value.question_id,
      yesPercent: Math.ceil(percentage * 100),
    };
  });
  for (let i = 0; i < newSet.length; i += 1) {
    for (let j = 1; j < newSet.length; j += 1) {

      let temp = newSet[j - 1];
      if (newSet[j].yesPercent > temp.yesPercent) {
        newSet[j - 1] = newSet[j];
        newSet[j] = temp;
      }
    }
  }
  return newSet;
}

function twoRandom(array) {
  let index1 = Math.floor(Math.random() * array.length);
  let index2 = undefined;
  while (true) {
    index2 = Math.floor(Math.random() * array.length);
    if (index1 !== index2) {
      break;
    }
  }
  console.log(array);
  return [array[index1], array[index2]];
}

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
      fetch('http://localhost:3004/reviews/4').then(value => value.json()),
    ]).then(([dat1, dat2, dat3, dat4, dat5]) => ([dat1, dat2, dat3, dat4, dat5]))
      .then(([dataGot1, dataGot2, dataGot3, dataGot4, dataGot5]) => {
        this.setState({
          neighborhood: dataGot1[0],
          homesOnSale: dataGot2,
          questions: dataGot3,
          answerCount: featureOrdering(dataGot4),
          reviews: twoRandom(dataGot5),
          numberOfHouses: dataGot2.length,
          priceRange: priceRanger(dataGot2),
        });
        console.log(this.state.reviews);
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
            <Overview
              neighborhood={neighborhood}
              priceRange={priceRange}
              numberOfHouses={numberOfHouses}
            />
          </div>
          <div>
            <Locals
              questions={questions}
              neighborhood={neighborhood}
              answerCount={answerCount}
              reviews={reviews}
            />
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
