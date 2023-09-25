const Express = require('express');
const App = Express();
const BodyParser = require('body-parser');
const PORT = 8080;

// Middleware
App.set("view engine", "ejs");
App.use(Express.urlencoded({extended: true}));


// Getting the registration page (Specific route should be defined first)
App.get('/register', (req, res) => {
  try {
    res.render('registration');
  } catch (error) {
    console.error('Error rendering template:', error);
    res.status(500).send('Internal Server Error');
  }
});

App.get('/api/data', (req, res) => {
  res.json({
    message: "Seems to work!",
  });
});

// Handling registration POST request

App.listen(PORT, () => {
  console.log(`Express is listening on port ${PORT}`);
  
});
