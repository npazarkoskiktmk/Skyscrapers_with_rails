module.exports = {
  purge: [],
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {
      colors: {
        divgray: '#292828',
      },
      backgroundImage: theme => ({
        'skyscrapers': "url('../assets/multiple_scrapers.jpg')",
      }),
    },
  },
  variants: {
    extend: {},
  },
  plugins: [],
}
