    Promise.all([
      fetch('http://localhost:3004/neighborhood/1').then(value => value),
    ]).then(([dat]) => ([dat])).then(([dataGot]) => {
      console.log(dataGot.json());
      this.setState({
        neighborhoodName: "dataGot",
      });
    });
  }