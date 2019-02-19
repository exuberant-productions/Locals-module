import { CardStack, Card } from 'react-cardstack';
import React from 'react';

const CardTester = () => {
  return (
    <div>
      <CardStack height={500} width={400} background="#f8f8f8" hoverOffset={25}>
        <Card background="#2980B9">
          <h1>Number 1</h1>
        </Card>  
        <Card background="#27AE60">
          <h1>Number 2</h1>
        </Card>
        <Card background="pink">
          <h1>STUFFFFF</h1>
        </Card>
      </CardStack>
    </div>
  );
};

export default CardTester;
 
