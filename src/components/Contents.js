import React from 'react';
import {Card, CardContent} from "@material-ui/core";
import ResultText from './ResultText';

function Contents(props) {
    return(
         props.results.map((texts,index) => (
            <Card>
            <CardContent>
                <ResultText texts={texts} />
            </CardContent>
        </Card>
        ))
    );
}
export default Contents