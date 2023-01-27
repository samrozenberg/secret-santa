export const addParticipant = () => {
  const addParticipantButton = document.querySelector('.add-participant');
  const participantSimpleFields = document.querySelector('.simple-fields-div');

  let index = 44

  addParticipantButton.addEventListener('click', function () {
    console.log("Hello");
    // const newField = participantSimpleFields.cloneNode(true);
    // newField.classList.add(`${index}`);

    const divToDisplay = document.querySelector(`.c-${index}`);
    console.log(divToDisplay);
    divToDisplay.classList.remove("d-none");
    // const fields = participantTemplate.parentNode.querySelectorAll(".participant-field");
    // console.log(fields);
    // const lastField = fields[fields.length - 1];
    // console.log(lastField);
    // participantTemplate.parentNode.insertBefore(newField, lastField.nextSibling);

    // participantSimpleFields.parentNode.appendChild(newField);
    // participantTemplate.parentNode.insertBefore(newFields, parentNode.childNodes[0]);
    index ++;
  });
}
