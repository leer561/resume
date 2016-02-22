argv = require("minimist")(process.argv.slice(2))

BUILD_TYPES =
  LOCAL: "local"
  PRODUCTION: "production"

TYPE = BUILD_TYPES.LOCAL
for arg in argv._
  for key, type of BUILD_TYPES
    if arg.toUpperCase() == type.toUpperCase()
      TYPE = type
      break

  if TYPE?
    break
console.log "Bulid type: #{TYPE}."
exports.IS_LOCAL = TYPE == BUILD_TYPES.LOCAL
exports.path_src = "src"
exports.path_app = "app"

