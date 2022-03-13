let notes = ["A", "B", "C", "D", "E", "F", "G"]

let reduceFunc = (acc, note) => {
    let randomValue = Js.Math.random_int(0, 6)
    acc ++ notes[randomValue]
}

let randomNotes = () => Js.Array2.reduce(notes, reduceFunc, Js.Array2.joinWith(notes, ""))


let sortFunc = (a, b) => Js.Math.random_int(0, 2) - 1 

let randomUniqNotes = Js.Array2.sortInPlaceWith(notes, sortFunc) ->Js.Array2.joinWith("")