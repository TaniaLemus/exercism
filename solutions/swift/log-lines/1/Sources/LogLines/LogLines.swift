enum LogLevel {
    case trace, debug, info, warning, error, fatal, unknown

    init(_ logLine: String) {
        if logLine.contains("[TRC]") {
            self = .trace
        } else if logLine.contains("[DBG]") {
            self = .debug
        } else if logLine.contains("[INF]") {
            self = .info
        } else if logLine.contains("[WRN]") {
            self = .warning
        } else if logLine.contains("[ERR]") {
            self = .error
        } else if logLine.contains("[FTL]") {
            self = .fatal
        } else {
            self = .unknown
        }
    }

    func shortFormat(message: String) -> String {
        let levelNumber: Int

        switch self {
        case .trace: levelNumber = 0
        case .debug: levelNumber = 1
        case .info: levelNumber = 4
        case .warning: levelNumber = 5
        case .error: levelNumber = 6
        case .fatal: levelNumber = 7
        case .unknown: levelNumber = 42
        }

        return "\(levelNumber):\(message)"
    }
}
