/** @type {import('tailwindcss').Config} */
module.exports = {
    content: ["./index.html", "./src/**/*.{js,ts,jsx,tsx}"],
    theme: {
        extend: {
            colors: {
                primary: "rgba(2, 6, 16, 1)",
                secondary: "rgba(77, 75, 89, 0.8)",
                tertiary: "rgba(255, 255, 255, 0.1)",
                quaternary: "rgba(77, 75, 89, 0.8)",
                borderPrimary: "rgba(77, 75, 89, 0.4)",
                borderSecondary: "rgba(77, 75, 89, 0.8)",
                primaryText: "#f4f4f4",
                textSecondary: "#b3b3b3",
            },
        },
    },
    plugins: [],
};