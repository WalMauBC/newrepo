
// Named object for the controller

const baseController = {}

// Named method of the baseController object
baseController.buildHome = async function(req, res) {
  const nav = await utilities.getNav()
  res.render("index", {title: "Home", nav})
}

// Export the baseController object directly
module.exports = baseController;