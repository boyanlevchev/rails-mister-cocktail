// edit_dose.js

export const popdownDoseEditEffect = () => {
  const doseEditArray = document.querySelectorAll('#editDoseButton')
  if (doseEditArray) {
    doseEditArray.forEach( function(doseEdit, index) {
      doseEdit.addEventListener('click', (event) => {
        const descriptionRegion = document.querySelector(`#region${index}`);
        descriptionRegion.classList.toggle('d-inline')
        console.log(`clicked region ${index}`)
      });
    });
  };
};
