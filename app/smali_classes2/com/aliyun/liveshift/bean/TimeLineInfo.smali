.class public Lcom/aliyun/liveshift/bean/TimeLineInfo;
.super Ljava/lang/Object;
.source "TimeLineInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TimeLineInfo"


# instance fields
.field public end:J

.field public start:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInfoArrayFromJson(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 5
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/aliyun/liveshift/bean/TimeLineInfo;",
            ">;"
        }
    .end annotation

    .line 22
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    return-object v0

    .line 26
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .local v0, "timeLineInfos":Ljava/util/List;, "Ljava/util/List<Lcom/aliyun/liveshift/bean/TimeLineInfo;>;"
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 29
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 31
    :try_start_0
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 32
    .local v3, "jsonObject":Lorg/json/JSONObject;
    invoke-static {v3}, Lcom/aliyun/liveshift/bean/TimeLineInfo;->getInfoFromJson(Lorg/json/JSONObject;)Lcom/aliyun/liveshift/bean/TimeLineInfo;

    move-result-object v4

    .line 33
    .local v4, "timeLineInfo":Lcom/aliyun/liveshift/bean/TimeLineInfo;
    if-eqz v4, :cond_1

    .line 34
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "timeLineInfo":Lcom/aliyun/liveshift/bean/TimeLineInfo;
    :cond_1
    goto :goto_1

    .line 36
    :catch_0
    move-exception v3

    .line 29
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 42
    .end local v2    # "i":I
    :cond_2
    return-object v0
.end method

.method private static getInfoFromJson(Lorg/json/JSONObject;)Lcom/aliyun/liveshift/bean/TimeLineInfo;
    .locals 5
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .line 47
    if-nez p0, :cond_0

    .line 48
    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_0
    new-instance v0, Lcom/aliyun/liveshift/bean/TimeLineInfo;

    invoke-direct {v0}, Lcom/aliyun/liveshift/bean/TimeLineInfo;-><init>()V

    .line 52
    .local v0, "timeLineInfo":Lcom/aliyun/liveshift/bean/TimeLineInfo;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v3, "start"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p0, v2}, Lcom/aliyun/utils/JsonUtil;->getLong(Lorg/json/JSONObject;[Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/aliyun/liveshift/bean/TimeLineInfo;->start:J

    .line 53
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "end"

    aput-object v2, v1, v4

    invoke-static {p0, v1}, Lcom/aliyun/utils/JsonUtil;->getLong(Lorg/json/JSONObject;[Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/aliyun/liveshift/bean/TimeLineInfo;->end:J

    .line 55
    return-object v0
.end method
