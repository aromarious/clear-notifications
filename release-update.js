import Mustache from "mustache"
const args = process.argv.slice(2)
const [inputFilename, outputFilename, viewJSON] = args
const input = fs.readFileSync(inputFilename, "utf8")
const view = JSON.parse(viewJSON)
const output = Mustache.render(input, view)
fs.writeFileSync(outputFilename, output)
