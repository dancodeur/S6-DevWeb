import { getVersionForName } from './utils/index.js';

function sanitizeFilename(str) {
    return str
        .normalize("NFD") // décompose les accents
        .replace(/[\u0300-\u036f]/g, "") // supprime les accents
        .replace(/[^a-zA-Z0-9]/g, "-") // remplace tout caractère spécial par un tiret
        .replace(/-+/g, "-") // évite les tirets doublons
        .replace(/(^-|-$)/g, "") // supprime les tirets en début/fin
        .toLowerCase();
}

const jeux = Object.values(getVersionForName);

window.addEventListener("DOMContentLoaded", () => {
    const container = document.body;

    const form = document.createElement("form");
    form.enctype = "multipart/form-data";

    const label = document.createElement("label");
    label.textContent = "Sélectionnez le jeu : ";
    const select = document.createElement("select");
    jeux.forEach(nom => {
        const option = document.createElement("option");
        option.value = nom;
        option.textContent = nom;
        select.appendChild(option);
    });

    const fileInput = document.createElement("input");
    fileInput.type = "file";
    fileInput.accept = "image/*";

    const submit = document.createElement("button");
    submit.type = "submit";
    submit.textContent = "Uploader";

    const result = document.createElement("div");

    form.appendChild(label);
    form.appendChild(select);
    form.appendChild(document.createElement("br"));
    form.appendChild(fileInput);
    form.appendChild(document.createElement("br"));
    form.appendChild(submit);
    form.appendChild(result);

    container.appendChild(form);

    form.addEventListener("submit", (e) => {
        e.preventDefault();

        const file = fileInput.files[0];
        if (!file) {
            result.textContent = "Veuillez sélectionner un fichier.";
            return;
        }

        const jeuNom = select.value;
        const extension = file.name.split(".").pop();
        const sanitizedFilename = sanitizeFilename(jeuNom) + "." + extension;

        console.log("Nouveau nom de fichier :", sanitizedFilename);

        const formData = new FormData();
        formData.append("file", file, sanitizedFilename);
        formData.append("jeu", jeuNom);

        result.textContent = `Fichier prêt : ${sanitizedFilename}`;
    });
});

