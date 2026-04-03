document.getElementById("formDocente")
.addEventListener("submit", async (e) => {
    e.preventDefault();

    const data = Object.fromEntries(
        new FormData(e.target)
    );

    await fetch("https://playdiom.com/api/docentes", {
        method: "POST",
        headers: {
            "Content-Type": "application/json"
        },
        body: JSON.stringify(data)
    });

    alert("Registro enviado");
});