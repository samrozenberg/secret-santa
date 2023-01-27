export const addParticipant = () => {
  const addParticipantButton = document.querySelector('.add-participant');
  const participantTemplate = document.querySelector('#participant-template');


  addParticipantButton.addEventListener('click', function () {
    console.log("Hello");
    const newField = participantTemplate.cloneNode(true);
    newField.style.display = 'block';

    const fields = participantTemplate.parentNode.querySelectorAll(".participant-field");
    console.log(fields);
    // const lastField = fields[fields.length - 1];
    // console.log(lastField);
    // participantTemplate.parentNode.insertBefore(newField, lastField.nextSibling);

    participantTemplate.parentNode.appendChild(newField);
    // participantTemplate.parentNode.insertBefore(newFields, parentNode.childNodes[0]);
  });
}
