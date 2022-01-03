import React from "react";

export interface Props { name: string; }
export interface State {}

class HelloWorld extends React.Component<Props, State> {
    constructor(props: Props) {
        super(props);
        this.state = {};
    }

    render() {
        const hello = `Hello World from ${this.props.name}`;
        return (
            <div>{hello}</div>
        );
    }
}

export default HelloWorld;
