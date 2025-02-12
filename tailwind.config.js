const plugin = require('tailwindcss/plugin')
/** @type {import('tailwindcss').Config} */
module.exports = {
  darkMode: "selector",
  content: ["./index.html", "./src/**/*.{gleam,mjs, css}"],
  theme: {
    extend: {
      boxShadow: {
        'neu-inner': 'inset 4px 4px 6px rgba(0, 0, 0, 0.15), inset -4px -4px 6px rgba(255, 255, 255, 0.75)',
        'dark-neu-inner': 'inset 2px 2px 4px rgba(0, 0, 0, 0.5), inset -1px -1px 4px rgba(255, 255, 255, 0.1)',
        'neu': '2px 2px 2px rgba(0, 0, 0, 0.2), -1px -1px 5px rgba(255, 255, 255, 0.7)',
        'dark-neu': '2px 2px 2px rgba(0, 0, 0, 0.5), -2px -2px 5px rgba(255, 255, 255, 0.2)',
        'neu-switch': 'inset 3px 3px 5px rgba(0, 0, 0, 0.1), inset -2px -2px 5px rgba(255, 255, 255, 0.25), 3px 3px 5px rgba(0, 0, 0, 0.2), -3px -3px 5px rgba(255, 255, 255, 0.3)',
        'dark-neu-switch': 'inset 3px 3px 5px rgba(0, 0, 0, 0.25), inset -2px -2px 4px rgba(255, 255, 255, 0.1), 3px 3px 5px rgba(0, 0, 0, 0.25), -2px -2px 5px rgba(255, 255, 255, 0.1)',
        'slider': '2px 2px 2px rgba(0, 0, 0, 0.5), -2px -2px 5px rgba(255, 255, 255, 0.1)'
      },
    },
  },
  plugins: [],
};
