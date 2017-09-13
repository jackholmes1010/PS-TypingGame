Clear-Host

# == Generate a random paragrarph... ===================
# ======================================================
function _generateRandomParagraph() {
    $otherWords = @("theta", "infringement", "bent", "laos", "subjective", "monsters", "asylum", "lightbox", "robbie", "stake", "cocktail", "outlets", "swaziland", "varieties", "arbor", "mediawiki", "configurations", "poison", "lone", "refresh", "aluminium", "snowboard", "beastality", "webcast", "michel", "evanescence", "subtle", "coordinated", "notre", "shipments", "maldives", "stripes", "firmware", "antarctica", "cope", "shepherd", "canberra", "cradle", "chancellor", "mambo", "lime", "kirk", "flour", "controversy", "legendary", "bool", "sympathy", "choir", "avoiding", "beautifully", "blond", "expects", "cho", "jumping", "fabrics", "antibodies", "polymer", "hygiene", "wit", "poultry", "virtue", "burst", "examinations", "surgeons", "bouquet", "immunology", "promotes", "mandate", "wiley", "departmental", "bbs", "spas", "ind", "corpus", "johnston", "terminology", "gentleman", "fibre", "reproduce", "convicted", "shades", "jets", "indices", "roommates", "adware", "qui", "intl", "threatening", "spokesman", "zoloft", "activists", "frankfurt", "orbit", "currencies", "niger", "bacon", "survivors", "positioning", "heater", "colony", "cannon", "circus", "promoted", "forbes", "mae", "moldova", "mel", "descending", "paxil", "spine", "trout", "enclosed", "feat", "temporarily", "ntsc", "cooked", "thriller", "transmit", "apnic", "fatty", "gerald", "pressed", "frequencies", "scanned", "reflections", "hunger", "mariah", "sic", "municipality", "usps", "joyce", "detective", "surgeon", "cement", "experiencing", "fireplace", "endorsement", "bg", "planners", "disputes", "textiles", "missile", "intranet", "closes", "seq", "psychiatry", "persistent", "deborah", "conf", "marco", "assists", "summaries", "glow", "gabriel", "auditor", "wma", "aquarium", "violin", "prophet", "cir", "bracket", "looksmart", "isaac", "oxide", "oaks", "magnificent", "erik", "colleague", "naples", "promptly", "modems", "adaptation", "hu", "harmful", "paintball", "prozac", "sexually", "enclosure", "dividend", "newark", "kw", "paso", "glucose", "phantom", "norm", "playback", "supervisors", "westminster", "turtle", "ips", "distances", "absorption", "treasures", "dsc", "warned", "neural", "ware", "fossil", "mia", "hometown", "badly", "transcripts", "apollo", "receiving", "matches", "accordance", "width", "noise", "engines", "forget", "array", "discussed", "accurate", "stephen", "elizabeth", "climate", "reservations", "pin", "playstation", "alcohol", "greek", "instruction", "managing", "annotation", "sister", "raw", "differences", "walking", "explain", "smaller", "newest", "establish", "gnu", "happened", "expressed", "jeff", "extent", "sharp", "lesbians", "ben", "lane", "paragraph", "kill", "mathematics", "aol", "compensation", "ce", "export", "managers", "aircraft", "modules", "sweden", "conflict", "conducted", "versions", "employer", "occur", "percentage", "knows", "describe", "concern", "backup", "requested", "citizens", "connecticut", "heritage", "personals", "immediate", "holding", "trouble", "spread", "coach", "kevin", "agricultural", "expand", "supporting", "audience", "assigned", "jordan", "collections", "ages", "participate", "plug", "specialist", "cook", "affect", "virgin", "experienced", "investigation", "raised", "hat", "institution", "directed", "dealers", "searching", "sporting", "helping", "perl", "affected", "sites", "level", "digital", "profile", "previous", "form", "events", "love", "old", "john", "main", "call", "hours", "image", "department", "title", "description", "insurance", "another", "why", "shall", "property", "class", "cd", "still", "money", "quality", "every", "listing", "content", "country", "private", "little", "visit", "save", "tools", "low", "reply", "customer", "december", "compare", "movies", "include", "college", "value", "article", "york", "man", "card", "jobs", "provide", "food", "source", "author", "different", "press", "learn", "sale", "around", "print", "course", "job", "canada", "process", "teen", "room", "stock", "training", "too", "credit", "point", "join", "science", "men", "categories", "advanced", "west", "sales", "look", "english", "left", "team", "estate", "box", "conditions", "select", "windows", "photos", "gay", "thread", "week", "category", "note", "live", "large", "gallery", "table", "register", "however", "june", "october", "november", "market", "library", "really", "action", "start", "series", "model", "features", "air", "industry", "plan", "human", "provided", "tv", "yes", "required", "second", "hot", "accessories", "cost", "movie", "forums", "march", "la", "september", "better", "say", "questions", "july", "yahoo", "going", "medical", "test", "friend", "come", "derp")
    $commonWords = @("the", "of", "to", "and", "a", "in", "is", "it", "you", "that", "he", "was", "for", "on", "are", "with", "as", "I", "his", "they", "be", "at", "one", "have", "this", "from", "or", "had", "by", "hot", "word", "but", "what", "some", "we", "can", "out", "other", "were", "all", "there", "when", "up", "use", "your", "how", "said", "an", "each", "she", "which", "do", "their", "time", "if", "will", "way", "about", "many", "then", "them", "write", "would", "like", "so", "these", "her", "long", "make", "thing", "see", "him", "two", "has", "look", "more", "day", "could", "go", "come", "did", "number", "sound", "no", "most", "people", "my", "over", "know", "water", "than", "call", "first", "who", "may", "down", "side", "been", "now", "find", "any", "new", "work", "part", "take", "get", "place", "made", "live", "where", "after", "back", "little", "only", "round", "man", "year", "came", "show", "every", "good", "me", "give", "our", "under", "name", "very", "through", "just", "form", "sentence", "great", "think", "say", "help", "low", "line", "differ", "turn", "cause", "much", "mean", "before", "move", "right", "boy", "old", "too", "same", "tell", "does", "set", "three", "want", "air", "well", "also", "play", "small", "end", "put", "home", "read", "hand", "port", "large", "spell", "add", "even", "land", "here", "must", "big", "high", "such", "follow", "act", "why", "ask", "men", "change", "went", "light", "kind", "off", "need", "house", "picture", "try", "us", "again", "animal", "point", "mother", "world", "near", "build", "self", "earth", "father", "head", "stand", "own", "page", "should", "country", "found", "answer", "school", "grow", "study", "still", "learn", "plant", "cover", "food", "sun", "four", "between", "state", "keep", "eye", "never", "last", "let", "thought", "city", "tree", "cross", "farm", "hard", "start", "might", "story", "saw", "far", "sea", "draw", "left", "late", "run", "don't", "while", "press", "close", "night", "real", "life", "few", "north", "open", "seem", "together", "next", "white", "children", "begin", "got", "walk", "example", "ease", "paper", "group", "always", "music", "those", "both", "mark", "often", "letter", "until", "mile", "river", "car", "feet", "care", "second", "book", "carry", "took", "science", "eat", "room", "friend", "began", "idea", "fish", "mountain", "stop", "once", "base", "hear", "horse", "cut", "sure", "watch", "color", "face", "wood", "main", "enough", "plain", "girl", "usual", "young", "ready", "above", "ever", "red", "list", "though", "feel", "talk", "bird", "soon", "body", "dog", "family", "direct", "pose", "leave", "song", "measure", "door", "product", "black", "short", "numeral", "class", "wind", "question", "happen", "complete", "ship", "area", "half", "rock", "order", "fire", "south", "problem", "piece", "told", "knew", "pass", "since", "top", "whole", "king", "space", "heard", "best", "hour", "better", "true", "during", "hundred", "five", "remember", "step", "early", "hold", "west", "ground", "interest", "reach", "fast", "verb", "sing", "listen", "six", "table", "travel", "less", "morning", "ten", "simple", "several", "vowel", "toward", "war", "lay", "against", "pattern", "slow", "center", "love", "person", "money", "serve", "appear", "road", "map", "rain", "rule", "govern", "pull", "cold", "notice", "voice", "unit", "power", "town", "fine", "certain", "fly", "fall", "lead", "cry", "dark", "machine", "note", "wait", "plan", "figure", "star", "box", "noun", "field", "rest", "correct", "able", "pound", "done", "beauty", "drive", "stood", "contain", "front", "teach", "week", "final", "gave", "green", "oh", "quick", "develop", "ocean", "warm", "free", "minute", "strong", "special", "mind", "behind", "clear", "tail", "produce", "fact", "street", "inch", "multiply", "nothing", "course", "stay", "wheel", "full", "force", "blue", "object", "decide", "surface", "deep", "moon", "island", "foot", "system", "busy", "test", "record", "boat", "common", "gold", "possible", "plane", "stead", "dry", "wonder", "laugh", "thousand", "ago", "ran", "check", "game", "shape", "equate", "hot", "miss", "brought", "heat", "snow", "tire", "bring", "yes", "distant", "fill", "east", "paint", "language", "among", "grand", "ball", "yet", "wave", "drop", "heart", "am", "present", "heavy", "dance", "engine", "position", "arm", "wide", "sail", "material", "size", "vary", "settle", "speak", "weight", "general", "ice", "matter", "circle", "pair", "include", "divide", "syllable", "felt", "perhaps", "pick", "sudden", "count", "square", "reason", "length", "represent", "art", "subject", "region", "energy", "hunt", "probable", "bed", "brother", "egg", "ride", "cell", "believe", "fraction", "forest", "sit", "race", "window", "store", "summer", "train", "sleep", "prove", "lone", "leg", "exercise", "wall", "catch", "mount", "wish", "sky", "board", "joy", "winter", "sat", "written", "wild", "instrument", "kept", "glass", "grass", "cow", "job", "edge", "sign", "visit", "past", "soft", "fun", "bright", "gas", "weather", "month", "million", "bear", "finish", "happy", "hope", "flower", "clothe", "strange", "gone", "jump", "baby", "eight", "village", "meet", "root", "buy", "raise", "solve", "metal", "whether", "push", "seven", "paragraph", "third", "shall", "held", "hair", "describe", "cook", "floor", "either", "result", "burn", "hill", "safe", "cat", "century", "consider", "type", "law", "bit", "coast", "copy", "phrase", "silent", "tall", "sand", "soil", "roll", "temperature", "finger", "industry", "value", "fight", "lie", "beat", "excite", "natural", "view", "sense", "ear", "else", "quite", "broke", "case", "middle", "kill", "son", "lake", "moment", "scale", "loud", "spring", "observe", "child", "straight", "consonant", "nation", "dictionary", "milk", "speed", "method", "organ", "pay", "age", "section", "dress", "cloud", "surprise", "quiet", "stone", "tiny", "climb", "cool", "design", "poor", "lot", "experiment", "bottom", "key", "iron", "single", "stick", "flat", "twenty", "skin", "smile", "crease", "hole", "trade", "melody", "trip", "office", "receive", "row", "mouth", "exact", "symbol", "die", "least", "trouble", "shout", "except", "wrote", "seed", "tone", "join", "suggest", "clean", "break", "lady", "yard", "rise", "bad", "blow", "oil", "blood", "touch", "grew", "cent", "mix", "team", "wire", "cost", "lost", "brown", "wear", "garden", "equal", "sent", "choose", "fell", "fit", "flow", "fair", "bank", "collect", "save", "control", "decimal", "gentle", "woman", "captain", "practice", "separate", "difficult", "doctor", "please", "protect", "noon", "whose", "locate", "ring", "character", "insect", "caught", "period", "indicate", "radio", "spoke", "atom", "human", "history", "effect", "electric", "expect", "crop", "modern", "element", "hit", "student", "corner", "party", "supply", "bone", "rail", "imagine", "provide", "agree", "thus", "capital", "won't", "chair", "danger", "fruit", "rich", "thick", "soldier", "process", "operate", "guess", "necessary", "sharp", "wing", "create", "neighbor", "wash", "bat", "rather", "crowd", "corn", "compare", "poem", "string", "bell", "depend", "meat", "rub", "tube", "famous", "dollar", "stream", "fear", "sight", "thin", "triangle", "planet", "hurry", "chief", "colony", "clock", "mine", "tie", "enter", "major", "fresh", "search", "send", "yellow", "gun", "allow", "print", "dead", "spot", "desert", "suit", "current", "lift", "rose", "continue", "block", "chart", "hat", "sell", "success", "company", "subtract", "event", "particular", "deal", "swim", "term", "opposite", "wife", "shoe", "shoulder", "spread", "arrange", "camp", "invent", "cotton", "born", "determine", "quart", "nine", "truck", "noise", "level", "chance", "gather", "shop", "stretch", "throw", "shine", "property", "column", "molecule", "select", "wrong", "gray", "repeat", "require", "broad", "prepare", "salt", "nose", "plural", "anger", "claim", "continent", "oxygen", "sugar", "death", "pretty", "skill", "women", "season", "solution", "magnet", "silver", "thank", "branch", "match", "suffix", "especially", "fig", "afraid", "huge", "sister", "steel", "discuss", "forward", "similar", "guide", "experience", "score", "apple", "bought", "led", "pitch", "coat", "mass", "card", "band", "rope", "slip", "win", "dream", "evening", "condition", "feed", "tool", "total", "basic", "smell", "valley", "nor", "double", "seat", "arrive", "master", "track", "parent", "shore", "division", "sheet", "substance", "favor", "connect", "post", "spend", "chord", "fat", "glad", "original", "share", "station", "dad", "bread", "charge", "proper", "bar", "offer", "segment", "slave", "duck", "instant", "market", "degree", "populate", "chick", "dear", "enemy", "reply", "drink", "occur", "support", "speech", "nature", "range", "steam", "motion", "path", "liquid", "log", "meant", "quotient", "teeth", "shell", "neck")
    $textBuilder = New-Object System.Text.StringBuilder
    $numWords = 10 + (Get-Random -Maximum 60)
    
    for ($i = 0; $i -lt $numWords; $i++) {
        if ($i % 3 -eq 0) {
            [void]$textBuilder.Append($commonWords[(Get-Random) % $commonWords.Length])
        } else {
            [void]$textBuilder.Append($otherWords[(Get-Random) % $otherWords.Length])
        }
        # Avoid adding a space to the end of the line
        if ($i -lt $numWords - 1) {
            [void]$textBuilder.Append(" ")
        } else {
            [void]$textBuilder.Append(".")
        }
    
    }
    return $textBuilder.ToString()
}

# == Setup game variables... ===========================
# ======================================================
# The randomly generated paragraph to type
$text = _generateRandomParagraph
# The index of the character in the text currently being typed.
$charIndex = 0
# The number of consecutive incorrect characters typed.
$incorrectCharacters = 0
# The starting position of the cursor in the console.
$startPosition = $Host.UI.RawUI.CursorPosition
# Number of words typed, used to track the WPM.
$wordsTyped = 0
# Timer to track the WPM.
$timer = [System.Diagnostics.StopWatch]::StartNew()

# == Print the paragrarph... ===========================
# ======================================================
for ($i = 0; $i -lt 9; $i++) {
    for ($j = 0; $j -lt ($Host.UI.RawUI.WindowSize.Width); $j++) {
        Write-Host -NoNewLine "$" -ForegroundColor Gray -BackgroundColor Black
    }
}
Write-Host -NoNewline `n`n
Write-Host "$text" -BackgroundColor Black -ForegroundColor Cyan
Write-Host -NoNewline `n`n

# == Start game loop... ================================
# ======================================================
while ($true) {
    # Update the progress (percentage of text completed and WPM)
    if ($charIndex -lt 1) {
        $percentComplete = 0
    }
    else {
        $percentComplete = ($charIndex/$text.length) * 100
    }
    $wpm = [Math]::Round($wordsTyped/$timer.Elapsed.TotalMinutes, 2)    
    Write-Progress "WPM: $wpm." -PercentComplete $percentComplete -Status "Completed:"

    # == Exit the game
    $key = [System.Console]::ReadKey($true)
    if ($key.Key -eq "Escape") {
        Write-Host -NoNewline `n
        break
    }
    # == Remove a character from the console
    elseif ($key.Key -eq "Backspace") {
        # Once we reach the start of the console, we 
        # need to move the cursor to the previous line.
        $position = $Host.UI.RawUI.CursorPosition
        if ($position -ne $startPosition) {
            if ($position.X -eq 0) {
                # Move to the last character on the previous line.
                $position.Y = $position.Y - 1
                $position.X = $Host.UI.RawUI.BufferSize.Width - 1
                $Host.UI.RawUI.CursorPosition = $position
    
                # Delete the last character on the previous line.
                Write-Host -NoNewLine ' '
    
                # Deleting the last character on the previous line will take us back
                # to the next line, so we need to reset the cursor position again.
                $position = $Host.UI.RawUI.CursorPosition
                $position.Y = $position.Y - 1
                $position.X = $Host.UI.RawUI.BufferSize.Width - 1
                $Host.UI.RawUI.CursorPosition = $position
            }
            else {
                # Remove the last character.
                Write-Host -NoNewLine `b
                Write-Host -NoNewLine ' '
                Write-Host -NoNewLine `b
            }

            # Since it is not possible to have incorrectly typed 
            # characters interspersed with correctly typed characters,
            # if the user presses the backspace key and the incorrectCharacters 
            # counter is non 0, this means they must be deleting a typo.
            if ($incorrectCharacters -ne 0) {
                $incorrectCharacters--
            }
            elseif ($charIndex -gt 0) {
                $charIndex--
            }
        }
    }
    # == Update the game state based on whether the character is correct or incorrect
    else {
        if ($key.KeyChar -eq $text[$charIndex] -and $incorrectCharacters -eq 0) {
            Write-Host -NoNewLine $key.KeyChar -ForegroundColor Green
            $charIndex++

            if ($text[$charIndex] -eq ' ') {
                $wordsTyped++
            }

            if ($charIndex -eq $text.Length) {
                Write-Host -NoNewline `n
                break
            }
        }
        else {
            Write-Host -NoNewLine $key.KeyChar -ForegroundColor Red
            $incorrectCharacters++
        }
    }
}

Write-Host "WPM: $wpm"
