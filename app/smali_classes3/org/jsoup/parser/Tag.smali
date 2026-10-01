.class public Lorg/jsoup/parser/Tag;
.super Ljava/lang/Object;
.source "Tag.java"


# static fields
.field private static final blockTags:[Ljava/lang/String;

.field private static final emptyTags:[Ljava/lang/String;

.field private static final formatAsInlineTags:[Ljava/lang/String;

.field private static final inlineTags:[Ljava/lang/String;

.field private static final preserveWhitespaceTags:[Ljava/lang/String;

.field private static final tags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jsoup/parser/Tag;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private canContainBlock:Z

.field private canContainInline:Z

.field private empty:Z

.field private formatAsBlock:Z

.field private isBlock:Z

.field private preserveWhitespace:Z

.field private selfClosing:Z

.field private tagName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jsoup/parser/Tag;->tags:Ljava/util/Map;

    .line 199
    const/16 v0, 0x3b

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "html"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    const-string v3, "head"

    aput-object v3, v0, v2

    const/4 v3, 0x2

    const-string v4, "body"

    aput-object v4, v0, v3

    const/4 v4, 0x3

    const-string v5, "frameset"

    aput-object v5, v0, v4

    const/4 v5, 0x4

    const-string v6, "script"

    aput-object v6, v0, v5

    const/4 v6, 0x5

    const-string v7, "noscript"

    aput-object v7, v0, v6

    const/4 v7, 0x6

    const-string v8, "style"

    aput-object v8, v0, v7

    const/4 v8, 0x7

    const-string v9, "meta"

    aput-object v9, v0, v8

    const/16 v9, 0x8

    const-string v10, "link"

    aput-object v10, v0, v9

    const/16 v10, 0x9

    const-string v11, "title"

    aput-object v11, v0, v10

    const/16 v12, 0xa

    const-string v13, "frame"

    aput-object v13, v0, v12

    const/16 v13, 0xb

    const-string v14, "noframes"

    aput-object v14, v0, v13

    const/16 v14, 0xc

    const-string v15, "section"

    aput-object v15, v0, v14

    const/16 v15, 0xd

    const-string v16, "nav"

    aput-object v16, v0, v15

    const/16 v16, 0x2

    const/16 v3, 0xe

    const-string v17, "aside"

    aput-object v17, v0, v3

    const/16 v17, 0xf

    const-string v18, "hgroup"

    aput-object v18, v0, v17

    const/16 v18, 0x10

    const-string v19, "header"

    aput-object v19, v0, v18

    const/16 v19, 0x11

    const-string v20, "footer"

    aput-object v20, v0, v19

    const/16 v20, 0x12

    const-string v21, "p"

    aput-object v21, v0, v20

    const/16 v21, 0x3

    const/16 v4, 0x13

    const-string v22, "h1"

    aput-object v22, v0, v4

    const-string v22, "h2"

    const/16 v23, 0x14

    aput-object v22, v0, v23

    const-string v22, "h3"

    const/16 v23, 0x15

    aput-object v22, v0, v23

    const-string v22, "h4"

    const/16 v23, 0x16

    aput-object v22, v0, v23

    const-string v22, "h5"

    const/16 v23, 0x17

    aput-object v22, v0, v23

    const-string v22, "h6"

    const/16 v23, 0x18

    aput-object v22, v0, v23

    const-string v22, "ul"

    const/16 v23, 0x19

    aput-object v22, v0, v23

    const-string v22, "ol"

    const/16 v23, 0x1a

    aput-object v22, v0, v23

    const/16 v22, 0x1b

    const-string v23, "pre"

    aput-object v23, v0, v22

    const-string v22, "div"

    const/16 v24, 0x1c

    aput-object v22, v0, v24

    const-string v22, "blockquote"

    const/16 v24, 0x1d

    aput-object v22, v0, v24

    const-string v22, "hr"

    const/16 v24, 0x1e

    aput-object v22, v0, v24

    const-string v22, "address"

    const/16 v24, 0x1f

    aput-object v22, v0, v24

    const-string v22, "figure"

    const/16 v24, 0x20

    aput-object v22, v0, v24

    const-string v22, "figcaption"

    const/16 v24, 0x21

    aput-object v22, v0, v24

    const-string v22, "form"

    const/16 v24, 0x22

    aput-object v22, v0, v24

    const-string v22, "fieldset"

    const/16 v24, 0x23

    aput-object v22, v0, v24

    const-string v22, "ins"

    const/16 v24, 0x24

    aput-object v22, v0, v24

    const-string v22, "del"

    const/16 v24, 0x25

    aput-object v22, v0, v24

    const-string v22, "s"

    const/16 v24, 0x26

    aput-object v22, v0, v24

    const-string v22, "dl"

    const/16 v24, 0x27

    aput-object v22, v0, v24

    const-string v22, "dt"

    const/16 v24, 0x28

    aput-object v22, v0, v24

    const-string v22, "dd"

    const/16 v24, 0x29

    aput-object v22, v0, v24

    const-string v22, "li"

    const/16 v24, 0x2a

    aput-object v22, v0, v24

    const-string v22, "table"

    const/16 v24, 0x2b

    aput-object v22, v0, v24

    const-string v22, "caption"

    const/16 v24, 0x2c

    aput-object v22, v0, v24

    const-string v22, "thead"

    const/16 v24, 0x2d

    aput-object v22, v0, v24

    const-string v22, "tfoot"

    const/16 v24, 0x2e

    aput-object v22, v0, v24

    const-string v22, "tbody"

    const/16 v24, 0x2f

    aput-object v22, v0, v24

    const-string v22, "colgroup"

    const/16 v24, 0x30

    aput-object v22, v0, v24

    const-string v22, "col"

    const/16 v24, 0x31

    aput-object v22, v0, v24

    const-string v22, "tr"

    const/16 v24, 0x32

    aput-object v22, v0, v24

    const-string v22, "th"

    const/16 v24, 0x33

    aput-object v22, v0, v24

    const-string v22, "td"

    const/16 v24, 0x34

    aput-object v22, v0, v24

    const-string v22, "video"

    const/16 v24, 0x35

    aput-object v22, v0, v24

    const-string v22, "audio"

    const/16 v24, 0x36

    aput-object v22, v0, v24

    const-string v22, "canvas"

    const/16 v24, 0x37

    aput-object v22, v0, v24

    const-string v22, "details"

    const/16 v24, 0x38

    aput-object v22, v0, v24

    const-string v22, "menu"

    const/16 v24, 0x39

    aput-object v22, v0, v24

    const-string v22, "plaintext"

    const/16 v24, 0x3a

    aput-object v22, v0, v24

    sput-object v0, Lorg/jsoup/parser/Tag;->blockTags:[Ljava/lang/String;

    .line 206
    const/16 v0, 0x38

    new-array v0, v0, [Ljava/lang/String;

    const-string v22, "object"

    aput-object v22, v0, v1

    const-string v22, "base"

    aput-object v22, v0, v2

    const-string v22, "font"

    aput-object v22, v0, v16

    const-string v22, "tt"

    aput-object v22, v0, v21

    const-string v22, "i"

    aput-object v22, v0, v5

    const-string v22, "b"

    aput-object v22, v0, v6

    const-string v22, "u"

    aput-object v22, v0, v7

    const-string v22, "big"

    aput-object v22, v0, v8

    const-string v22, "small"

    aput-object v22, v0, v9

    const-string v22, "em"

    aput-object v22, v0, v10

    const-string v22, "strong"

    aput-object v22, v0, v12

    const-string v22, "dfn"

    aput-object v22, v0, v13

    const-string v22, "code"

    aput-object v22, v0, v14

    const-string v22, "samp"

    aput-object v22, v0, v15

    const-string v22, "kbd"

    aput-object v22, v0, v3

    const-string v22, "var"

    aput-object v22, v0, v17

    const-string v22, "cite"

    aput-object v22, v0, v18

    const-string v22, "abbr"

    aput-object v22, v0, v19

    const-string v22, "time"

    aput-object v22, v0, v20

    const-string v22, "acronym"

    aput-object v22, v0, v4

    const-string v22, "mark"

    const/16 v24, 0x14

    aput-object v22, v0, v24

    const-string v22, "ruby"

    const/16 v24, 0x15

    aput-object v22, v0, v24

    const-string v22, "rt"

    const/16 v24, 0x16

    aput-object v22, v0, v24

    const-string v22, "rp"

    const/16 v24, 0x17

    aput-object v22, v0, v24

    const-string v22, "a"

    const/16 v24, 0x18

    aput-object v22, v0, v24

    const-string v22, "img"

    const/16 v24, 0x19

    aput-object v22, v0, v24

    const-string v22, "br"

    const/16 v24, 0x1a

    aput-object v22, v0, v24

    const-string v22, "wbr"

    const/16 v24, 0x1b

    aput-object v22, v0, v24

    const-string v22, "map"

    const/16 v24, 0x1c

    aput-object v22, v0, v24

    const-string v22, "q"

    const/16 v24, 0x1d

    aput-object v22, v0, v24

    const-string v22, "sub"

    const/16 v24, 0x1e

    aput-object v22, v0, v24

    const-string v22, "sup"

    const/16 v24, 0x1f

    aput-object v22, v0, v24

    const-string v22, "bdo"

    const/16 v24, 0x20

    aput-object v22, v0, v24

    const-string v22, "iframe"

    const/16 v24, 0x21

    aput-object v22, v0, v24

    const-string v22, "embed"

    const/16 v24, 0x22

    aput-object v22, v0, v24

    const-string v22, "span"

    const/16 v24, 0x23

    aput-object v22, v0, v24

    const-string v22, "input"

    const/16 v24, 0x24

    aput-object v22, v0, v24

    const-string v22, "select"

    const/16 v24, 0x25

    aput-object v22, v0, v24

    const-string v22, "textarea"

    const/16 v24, 0x26

    aput-object v22, v0, v24

    const-string v22, "label"

    const/16 v24, 0x27

    aput-object v22, v0, v24

    const-string v22, "button"

    const/16 v24, 0x28

    aput-object v22, v0, v24

    const-string v22, "optgroup"

    const/16 v24, 0x29

    aput-object v22, v0, v24

    const-string v22, "option"

    const/16 v24, 0x2a

    aput-object v22, v0, v24

    const-string v22, "legend"

    const/16 v24, 0x2b

    aput-object v22, v0, v24

    const-string v22, "datalist"

    const/16 v24, 0x2c

    aput-object v22, v0, v24

    const-string v22, "keygen"

    const/16 v24, 0x2d

    aput-object v22, v0, v24

    const-string v22, "output"

    const/16 v24, 0x2e

    aput-object v22, v0, v24

    const-string v22, "progress"

    const/16 v24, 0x2f

    aput-object v22, v0, v24

    const-string v22, "meter"

    const/16 v24, 0x30

    aput-object v22, v0, v24

    const-string v22, "area"

    const/16 v24, 0x31

    aput-object v22, v0, v24

    const-string v22, "param"

    const/16 v24, 0x32

    aput-object v22, v0, v24

    const-string v22, "source"

    const/16 v24, 0x33

    aput-object v22, v0, v24

    const-string v22, "track"

    const/16 v24, 0x34

    aput-object v22, v0, v24

    const-string v22, "summary"

    const/16 v24, 0x35

    aput-object v22, v0, v24

    const-string v22, "command"

    const/16 v24, 0x36

    aput-object v22, v0, v24

    const-string v22, "device"

    const/16 v24, 0x37

    aput-object v22, v0, v24

    sput-object v0, Lorg/jsoup/parser/Tag;->inlineTags:[Ljava/lang/String;

    .line 213
    new-array v0, v3, [Ljava/lang/String;

    const-string v22, "meta"

    aput-object v22, v0, v1

    const-string v22, "link"

    aput-object v22, v0, v2

    const-string v22, "base"

    aput-object v22, v0, v16

    const-string v22, "frame"

    aput-object v22, v0, v21

    const-string v22, "img"

    aput-object v22, v0, v5

    const-string v22, "br"

    aput-object v22, v0, v6

    const-string v22, "wbr"

    aput-object v22, v0, v7

    const-string v22, "embed"

    aput-object v22, v0, v8

    const-string v22, "hr"

    aput-object v22, v0, v9

    const-string v22, "input"

    aput-object v22, v0, v10

    const-string v22, "keygen"

    aput-object v22, v0, v12

    const-string v22, "col"

    aput-object v22, v0, v13

    const-string v22, "command"

    aput-object v22, v0, v14

    const-string v22, "device"

    aput-object v22, v0, v15

    sput-object v0, Lorg/jsoup/parser/Tag;->emptyTags:[Ljava/lang/String;

    .line 217
    new-array v0, v4, [Ljava/lang/String;

    aput-object v11, v0, v1

    const-string v4, "a"

    aput-object v4, v0, v2

    const-string v4, "p"

    aput-object v4, v0, v16

    const-string v4, "h1"

    aput-object v4, v0, v21

    const-string v4, "h2"

    aput-object v4, v0, v5

    const-string v4, "h3"

    aput-object v4, v0, v6

    const-string v4, "h4"

    aput-object v4, v0, v7

    const-string v4, "h5"

    aput-object v4, v0, v8

    const-string v4, "h6"

    aput-object v4, v0, v9

    aput-object v23, v0, v10

    const-string v4, "address"

    aput-object v4, v0, v12

    const-string v4, "li"

    aput-object v4, v0, v13

    const-string v4, "th"

    aput-object v4, v0, v14

    const-string v4, "td"

    aput-object v4, v0, v15

    const-string v4, "script"

    aput-object v4, v0, v3

    const-string v3, "style"

    aput-object v3, v0, v17

    const-string v3, "ins"

    aput-object v3, v0, v18

    const-string v3, "del"

    aput-object v3, v0, v19

    const-string v3, "s"

    aput-object v3, v0, v20

    sput-object v0, Lorg/jsoup/parser/Tag;->formatAsInlineTags:[Ljava/lang/String;

    .line 221
    new-array v0, v5, [Ljava/lang/String;

    aput-object v23, v0, v1

    const-string v3, "plaintext"

    aput-object v3, v0, v2

    aput-object v11, v0, v16

    const-string v3, "textarea"

    aput-object v3, v0, v21

    sput-object v0, Lorg/jsoup/parser/Tag;->preserveWhitespaceTags:[Ljava/lang/String;

    .line 225
    sget-object v0, Lorg/jsoup/parser/Tag;->blockTags:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v0, v4

    .line 226
    .local v5, "tagName":Ljava/lang/String;
    new-instance v6, Lorg/jsoup/parser/Tag;

    invoke-direct {v6, v5}, Lorg/jsoup/parser/Tag;-><init>(Ljava/lang/String;)V

    .line 227
    .local v6, "tag":Lorg/jsoup/parser/Tag;
    invoke-static {v6}, Lorg/jsoup/parser/Tag;->register(Lorg/jsoup/parser/Tag;)V

    .line 225
    .end local v5    # "tagName":Ljava/lang/String;
    .end local v6    # "tag":Lorg/jsoup/parser/Tag;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 229
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_0
    sget-object v0, Lorg/jsoup/parser/Tag;->inlineTags:[Ljava/lang/String;

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    .line 230
    .restart local v5    # "tagName":Ljava/lang/String;
    new-instance v6, Lorg/jsoup/parser/Tag;

    invoke-direct {v6, v5}, Lorg/jsoup/parser/Tag;-><init>(Ljava/lang/String;)V

    .line 231
    .restart local v6    # "tag":Lorg/jsoup/parser/Tag;
    iput-boolean v1, v6, Lorg/jsoup/parser/Tag;->isBlock:Z

    .line 232
    iput-boolean v1, v6, Lorg/jsoup/parser/Tag;->canContainBlock:Z

    .line 233
    iput-boolean v1, v6, Lorg/jsoup/parser/Tag;->formatAsBlock:Z

    .line 234
    invoke-static {v6}, Lorg/jsoup/parser/Tag;->register(Lorg/jsoup/parser/Tag;)V

    .line 229
    .end local v5    # "tagName":Ljava/lang/String;
    .end local v6    # "tag":Lorg/jsoup/parser/Tag;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 238
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_1
    sget-object v0, Lorg/jsoup/parser/Tag;->emptyTags:[Ljava/lang/String;

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    :goto_2
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    .line 239
    .restart local v5    # "tagName":Ljava/lang/String;
    sget-object v6, Lorg/jsoup/parser/Tag;->tags:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jsoup/parser/Tag;

    .line 240
    .restart local v6    # "tag":Lorg/jsoup/parser/Tag;
    invoke-static {v6}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 241
    iput-boolean v1, v6, Lorg/jsoup/parser/Tag;->canContainBlock:Z

    .line 242
    iput-boolean v1, v6, Lorg/jsoup/parser/Tag;->canContainInline:Z

    .line 243
    iput-boolean v2, v6, Lorg/jsoup/parser/Tag;->empty:Z

    .line 238
    .end local v5    # "tagName":Ljava/lang/String;
    .end local v6    # "tag":Lorg/jsoup/parser/Tag;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 246
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_2
    sget-object v0, Lorg/jsoup/parser/Tag;->formatAsInlineTags:[Ljava/lang/String;

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    :goto_3
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    .line 247
    .restart local v5    # "tagName":Ljava/lang/String;
    sget-object v6, Lorg/jsoup/parser/Tag;->tags:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jsoup/parser/Tag;

    .line 248
    .restart local v6    # "tag":Lorg/jsoup/parser/Tag;
    invoke-static {v6}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 249
    iput-boolean v1, v6, Lorg/jsoup/parser/Tag;->formatAsBlock:Z

    .line 246
    .end local v5    # "tagName":Ljava/lang/String;
    .end local v6    # "tag":Lorg/jsoup/parser/Tag;
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 252
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_3
    sget-object v0, Lorg/jsoup/parser/Tag;->preserveWhitespaceTags:[Ljava/lang/String;

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_4
    if-ge v3, v1, :cond_4

    aget-object v4, v0, v3

    .line 253
    .local v4, "tagName":Ljava/lang/String;
    sget-object v5, Lorg/jsoup/parser/Tag;->tags:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/parser/Tag;

    .line 254
    .local v5, "tag":Lorg/jsoup/parser/Tag;
    invoke-static {v5}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 255
    iput-boolean v2, v5, Lorg/jsoup/parser/Tag;->preserveWhitespace:Z

    .line 252
    .end local v4    # "tagName":Ljava/lang/String;
    .end local v5    # "tag":Lorg/jsoup/parser/Tag;
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 257
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "len$":I
    .end local v3    # "i$":I
    :cond_4
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "tagName"    # Ljava/lang/String;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->isBlock:Z

    .line 18
    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->formatAsBlock:Z

    .line 19
    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->canContainBlock:Z

    .line 20
    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->canContainInline:Z

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->empty:Z

    .line 22
    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->selfClosing:Z

    .line 23
    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->preserveWhitespace:Z

    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public static isKnownTag(Ljava/lang/String;)Z
    .locals 1
    .param p0, "tagName"    # Ljava/lang/String;

    .line 144
    sget-object v0, Lorg/jsoup/parser/Tag;->tags:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static register(Lorg/jsoup/parser/Tag;)V
    .locals 2
    .param p0, "tag"    # Lorg/jsoup/parser/Tag;

    .line 260
    sget-object v0, Lorg/jsoup/parser/Tag;->tags:Ljava/util/Map;

    iget-object v1, p0, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jsoup/parser/Tag;
    .locals 2
    .param p0, "tagName"    # Ljava/lang/String;

    .line 47
    invoke-static {p0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 48
    sget-object v0, Lorg/jsoup/parser/Tag;->tags:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/parser/Tag;

    .line 50
    .local v0, "tag":Lorg/jsoup/parser/Tag;
    if-nez v0, :cond_0

    .line 51
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 52
    invoke-static {p0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 53
    sget-object v1, Lorg/jsoup/parser/Tag;->tags:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/jsoup/parser/Tag;

    .line 55
    if-nez v0, :cond_0

    .line 57
    new-instance v1, Lorg/jsoup/parser/Tag;

    invoke-direct {v1, p0}, Lorg/jsoup/parser/Tag;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 58
    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/jsoup/parser/Tag;->isBlock:Z

    .line 59
    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/jsoup/parser/Tag;->canContainBlock:Z

    .line 62
    :cond_0
    return-object v0
.end method


# virtual methods
.method public canContainBlock()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->canContainBlock:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 163
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 164
    :cond_0
    instance-of v1, p1, Lorg/jsoup/parser/Tag;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 166
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/jsoup/parser/Tag;

    .line 168
    .local v1, "tag":Lorg/jsoup/parser/Tag;
    iget-boolean v3, p0, Lorg/jsoup/parser/Tag;->canContainBlock:Z

    iget-boolean v4, v1, Lorg/jsoup/parser/Tag;->canContainBlock:Z

    if-eq v3, v4, :cond_2

    return v2

    .line 169
    :cond_2
    iget-boolean v3, p0, Lorg/jsoup/parser/Tag;->canContainInline:Z

    iget-boolean v4, v1, Lorg/jsoup/parser/Tag;->canContainInline:Z

    if-eq v3, v4, :cond_3

    return v2

    .line 170
    :cond_3
    iget-boolean v3, p0, Lorg/jsoup/parser/Tag;->empty:Z

    iget-boolean v4, v1, Lorg/jsoup/parser/Tag;->empty:Z

    if-eq v3, v4, :cond_4

    return v2

    .line 171
    :cond_4
    iget-boolean v3, p0, Lorg/jsoup/parser/Tag;->formatAsBlock:Z

    iget-boolean v4, v1, Lorg/jsoup/parser/Tag;->formatAsBlock:Z

    if-eq v3, v4, :cond_5

    return v2

    .line 172
    :cond_5
    iget-boolean v3, p0, Lorg/jsoup/parser/Tag;->isBlock:Z

    iget-boolean v4, v1, Lorg/jsoup/parser/Tag;->isBlock:Z

    if-eq v3, v4, :cond_6

    return v2

    .line 173
    :cond_6
    iget-boolean v3, p0, Lorg/jsoup/parser/Tag;->preserveWhitespace:Z

    iget-boolean v4, v1, Lorg/jsoup/parser/Tag;->preserveWhitespace:Z

    if-eq v3, v4, :cond_7

    return v2

    .line 174
    :cond_7
    iget-boolean v3, p0, Lorg/jsoup/parser/Tag;->selfClosing:Z

    iget-boolean v4, v1, Lorg/jsoup/parser/Tag;->selfClosing:Z

    if-eq v3, v4, :cond_8

    return v2

    .line 175
    :cond_8
    iget-object v3, p0, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    iget-object v4, v1, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    return v2

    .line 177
    :cond_9
    return v0
.end method

.method public formatAsBlock()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->formatAsBlock:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 182
    iget-object v0, p0, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 183
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lorg/jsoup/parser/Tag;->isBlock:Z

    add-int/2addr v1, v2

    .line 184
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lorg/jsoup/parser/Tag;->formatAsBlock:Z

    add-int/2addr v0, v2

    .line 185
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lorg/jsoup/parser/Tag;->canContainBlock:Z

    add-int/2addr v1, v2

    .line 186
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lorg/jsoup/parser/Tag;->canContainInline:Z

    add-int/2addr v0, v2

    .line 187
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lorg/jsoup/parser/Tag;->empty:Z

    add-int/2addr v1, v2

    .line 188
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lorg/jsoup/parser/Tag;->selfClosing:Z

    add-int/2addr v0, v2

    .line 189
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lorg/jsoup/parser/Tag;->preserveWhitespace:Z

    add-int/2addr v1, v2

    .line 190
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public isBlock()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->isBlock:Z

    return v0
.end method

.method public isData()Z
    .locals 1

    .line 107
    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->canContainInline:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/parser/Tag;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 116
    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->empty:Z

    return v0
.end method

.method public isInline()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->isBlock:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isKnownTag()Z
    .locals 2

    .line 134
    sget-object v0, Lorg/jsoup/parser/Tag;->tags:Ljava/util/Map;

    iget-object v1, p0, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSelfClosing()Z
    .locals 1

    .line 125
    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->empty:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->selfClosing:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public preserveWhitespace()Z
    .locals 1

    .line 153
    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->preserveWhitespace:Z

    return v0
.end method

.method setSelfClosing()Lorg/jsoup/parser/Tag;
    .locals 1

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->selfClosing:Z

    .line 158
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    return-object v0
.end method
