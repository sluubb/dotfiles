local config = os.getenv("XDG_CONFIG_HOME") .. "/hypr"
package.path = package.path
    .. ";" .. config .. "/?.lua"

require("core.env")
require("core.base")
require("core.vis")
require("core.start")
require("loader")
