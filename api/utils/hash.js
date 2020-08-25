const crypto = require("crypto");

module.exports = function hash(value) {
    return crypto.createHash("sha256")
        .update(value)
        .digest("hex");
}