import React from 'react';

export interface Props {
    name: string;
}

function HelloWorld(props: Props): JSX.Element {
    const hello = `Hello World from ${props.name}`;

    return (
        <div>
            {hello}
        </div>
    );
}

export default HelloWorld;
