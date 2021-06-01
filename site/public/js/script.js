window.addEventListener("load", async function () {
  let nombre = document.getElementById("nombre");
  let emailField = document.getElementById("email");
  let apellido = document.getElementById("apellido");
  let pass = document.getElementById("password");
  let confPass = this.document.getElementById("confPass");
  let calle = document.getElementById("calle");
  let telefono = document.getElementById("telefono");
  let cp = document.getElementById("cp");
  let localidad = document.getElementById("localidad");
  let pais = document.getElementById("pais");
  let provincias = document.getElementById("provincia");
  let error = document.querySelector(".ventana-error");
  let highlighted = document.querySelectorAll(".highlighted");
  let highlightedForm = document.querySelectorAll(".highlightedForm");

  let deleteSubmit = document.querySelector(".deleteProduct");
  if (deleteSubmit) {
    deleteSubmit.addEventListener("submit", function (evt) {
      evt.preventDefault();
      let sureDelete = confirm("Seguro desea eliminar el producto ??");
      if (sureDelete) {
        deleteSubmit.submit();
      }
    });
  }
  let deleteSubmitList = document.querySelectorAll(".deleteProductList");
  if (deleteSubmitList) {
    deleteSubmitList.forEach((delSub) =>
      delSub.addEventListener("submit", function (evt) {
        evt.preventDefault();
        let sureDelete = confirm("Seguro desea eliminar el producto ??");
        if (sureDelete) {
          delSub.submit();
        }
      })
    );
  }
  if (highlighted) {
    for (let i = 0; i < highlighted.length; i++) {
      highlighted[i].addEventListener("click", function () {
        highlightedForm[i].submit();
      });
    }
  }
  function minChar(field, num) {
    if (field.value.length > 0 && field.value.length < num) {
      field.style.color = "red";
      field.style.backgroundColor = "orange";
      error.innerHTML = `Debes ingresar mas de ${num - 1} caracteres`;
    } else {
      error.innerHTML = "";
      field.style.color = "black";
      field.style.backgroundColor = "white";
    }
  }
  if (nombre) {
    console.log(nombre);
    nombre.addEventListener("input", () => {
      minChar(nombre, 3);
    });
  }
  if (telefono) {
    console.log(telefono);
    telefono.addEventListener("input", () => {
      minChar(telefono, 3);
    });
  }
  if (apellido) {
    console.log(apellido);
    apellido.addEventListener("input", () => {
      minChar(apellido, 3);
    });
  }
  if (pass) {
    pass.addEventListener("input", () => {
      minChar(pass, 8);
    });
  }
  if (confPass) {
    confPass.addEventListener("input", () => {
      minChar(confPass, 8);

      if (confPass.value !== pass.value) {
        confPass.style.color = "red";
        confPass.style.backgroundColor = "orange";
        error.innerHTML = `Las contraseñas no coinciden`;
      } else {
        error.innerHTML = "";
        confPass.style.color = "black";
        confPass.style.backgroundColor = "white";
      }
    });
  }
  if (calle) {
    calle.addEventListener("input", () => {
      minChar(calle, 3);
    });
  }
  if (cp) {
    cp.addEventListener("input", () => {
      minChar(cp, 4);
    });
  }
  if (localidad) {
    localidad.addEventListener("input", () => {
      minChar(localidad, 4);
    });
  }
  if (pais) {
    pais.addEventListener("input", async () => {
      provincias.innerHTML = "";
      const res = await this.fetch(
        `http://localhost:4000/domicilios/provincias/${pais.value}`
      );
      const provinciasList = await res.json();
      console.log(provinciasList);
      provinciasList.forEach((prov) => {
        provincias.innerHTML += `<option value=${prov.id}>${prov.nombre}</option>`;
      });
    });
  }
  const res = await fetch("http://localhost:4000/api/users");
  const data = await res.json();
  const users = data.users;
  console.log(users);
  if (emailField) {
    emailField.addEventListener("input" || "change", () => {
      const found = users.find((user) => user.email == emailField.value);
      if (found) {
        console.log(emailField);
        emailField.style.color = "red";
        emailField.style.backgroundColor = "orange";
        error.innerHTML = `El email ya existe`;
      } else {
        error.innerHTML = "";
        emailField.style.color = "black";
        emailField.style.backgroundColor = "white";
      }
    });
  }
});
