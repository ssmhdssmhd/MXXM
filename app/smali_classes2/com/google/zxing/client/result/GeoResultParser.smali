.class public final Lcom/google/zxing/client/result/GeoResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "GeoResultParser.java"


# static fields
.field private static final GEO_URL_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    nop

    .line 35
    const-string v0, "geo:([\\-0-9.]+),([\\-0-9.]+)(?:,([\\-0-9.]+))?(?:\\?(.*))?"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/GeoResultParser;->GEO_URL_PATTERN:Ljava/util/regex/Pattern;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/GeoParsedResult;
    .locals 16
    .param p1, "result"    # Lcom/google/zxing/Result;

    .line 39
    invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/result/GeoResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "rawText":Ljava/lang/CharSequence;
    sget-object v0, Lcom/google/zxing/client/result/GeoResultParser;->GEO_URL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const/4 v2, 0x0

    .line 41
    .local v2, "matcher":Ljava/util/regex/Matcher;
    move-object v2, v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 42
    return-object v3

    .line 45
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    .line 51
    .local v11, "query":Ljava/lang/String;
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    const-wide/16 v7, 0x0

    move-wide v9, v7

    .line 52
    .local v9, "latitude":D
    move-wide v9, v5

    const-wide v12, 0x4056800000000000L    # 90.0

    cmpl-double v0, v5, v12

    if-gtz v0, :cond_6

    const-wide v4, -0x3fa9800000000000L    # -90.0

    cmpg-double v0, v9, v4

    if-gez v0, :cond_1

    move-wide v5, v9

    goto :goto_2

    .line 55
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    move-wide v12, v7

    .line 56
    .local v12, "longitude":D
    move-wide v12, v4

    const-wide v14, 0x4066800000000000L    # 180.0

    cmpl-double v0, v4, v14

    if-gtz v0, :cond_5

    const-wide v4, -0x3f99800000000000L    # -180.0

    cmpg-double v0, v12, v4

    if-gez v0, :cond_2

    move-wide v5, v9

    move-wide v7, v12

    goto :goto_1

    .line 59
    :cond_2
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    .line 60
    const-wide/16 v3, 0x0

    .local v3, "altitude":D
    goto :goto_0

    .line 62
    .end local v3    # "altitude":D
    :cond_3
    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .local v7, "altitude":D
    move-wide v6, v4

    .end local v7    # "altitude":D
    .local v6, "altitude":D
    const-wide/16 v14, 0x0

    cmpg-double v0, v4, v14

    if-gez v0, :cond_4

    .line 64
    return-object v3

    .line 69
    :cond_4
    move-wide v3, v6

    .line 70
    .end local v6    # "altitude":D
    .restart local v3    # "altitude":D
    :goto_0
    move-wide v5, v9

    move-wide v9, v3

    .end local v3    # "altitude":D
    .local v5, "latitude":D
    .local v9, "altitude":D
    new-instance v4, Lcom/google/zxing/client/result/GeoParsedResult;

    move-wide v7, v12

    .end local v12    # "longitude":D
    .local v7, "longitude":D
    invoke-direct/range {v4 .. v11}, Lcom/google/zxing/client/result/GeoParsedResult;-><init>(DDDLjava/lang/String;)V

    return-object v4

    .line 56
    .end local v5    # "latitude":D
    .end local v7    # "longitude":D
    .local v9, "latitude":D
    .restart local v12    # "longitude":D
    :cond_5
    move-wide v5, v9

    move-wide v7, v12

    .line 57
    .end local v9    # "latitude":D
    .end local v12    # "longitude":D
    .restart local v5    # "latitude":D
    .restart local v7    # "longitude":D
    :goto_1
    return-object v3

    .line 52
    .end local v5    # "latitude":D
    .end local v7    # "longitude":D
    .restart local v9    # "latitude":D
    :cond_6
    move-wide v5, v9

    .line 53
    .end local v9    # "latitude":D
    .restart local v5    # "latitude":D
    :goto_2
    return-object v3

    .line 67
    .end local v5    # "latitude":D
    :catch_0
    move-exception v0

    .line 68
    return-object v3
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/GeoResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/GeoParsedResult;

    move-result-object p1

    return-object p1
.end method
