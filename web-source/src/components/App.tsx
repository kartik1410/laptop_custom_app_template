import { useEffect, useState } from "react";
import { fetchNui } from "../utils/fetchNui";
import { useNuiEvent } from "../hooks/useNuiEvent";

const MOCK_DATA = {
    some_index: 'Hello World!'
}

const App = () => {
    const [value, setValue] = useState('Hello');
    const [isVisible, setVisible] = useState(false);

    useNuiEvent("TOGGLE_APP", (data) => {
        setVisible(data.ui || false)
    });

    // useEffect(() => {
    //     fetchNui<any>('GET_DEMO_VALUE', {}, MOCK_DATA).then((data) => {
    //         if (data) {
    //             setValue(data.some_index);
    //         }
    //     })
    // }, [])

    useNuiEvent("SET_DATA", (data) => {
        if (data) {
            setValue(data.some_index);
        }
    })

    if (!isVisible) {
        return null;
    }

    return (
        <div className="flex w-screen h-screen" >
            <div className="flex w-full h-full justify-center items-center bg-primary text-primaryText">
                {value}
            </div>
        </div>
    );
};

export default App;
