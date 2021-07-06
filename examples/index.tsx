import React from 'react';

export interface Props {
    name: string;
}

function Hello(props: Props): JSX.Element {
    return (
        <>
            {`Hello ${props.name}`}
        </>
    );
}

export default Hello;
