// edit_dose.js

export const popdownDoseEditEffect = () => {
  const doseEditArray = document.querySelectorAll('.editDoseButton')
  if (doseEditArray) {
    doseEditArray.forEach( function(doseEdit, index) {
      doseEdit.addEventListener('click', (event) => {
        const descriptionRegion = document.getElementById(`region${index}`);
        descriptionRegion.classList.toggle('d-none')
        console.log(`clicked region ${index}`)
      });
    });
  };
};
