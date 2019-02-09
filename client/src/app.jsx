import React from 'react';
import $ from 'jquery';

class App extends React.Component {
	constructor(props) {
		super(props);
		this.state = {
			testState: 'this.test({ring: string})'
		}
		this.getter = this.getter.bind(this);
		this.test = this.test.bind(this);

	}
	getter (successCB) {
		$.ajax({
			type: 'GET',
			url: '/neighborhood/:1',
			success: successCB,
			async: false
		});
	}

	// stuff 
	// 			{this.getter(this.test)}

	test(data) {
		console.log("test");
		console.log(data);
		return JSON.stringify(data);
	}
	

	render() {
		return (
			<div>
				{this.getter(this.test)}
			</div>
		);
	}
}

export default App;

