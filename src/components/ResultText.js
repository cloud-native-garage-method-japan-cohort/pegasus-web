import React from 'react';
import {Card, CardContent} from "@material-ui/core";

function ResultText(props) {
    return(
         props.texts.map((text,index) => (
            <Card>
            <CardContent>
                {text}
            </CardContent>
        </Card>
        ))
    );
}
export default ResultText