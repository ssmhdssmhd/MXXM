.class public Lcom/aliyun/liveshift/bean/TimeLineContent;
.super Ljava/lang/Object;
.source "TimeLineContent.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public current:J

.field public timelines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aliyun/liveshift/bean/TimeLineInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcom/aliyun/liveshift/bean/TimeLineContent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aliyun/liveshift/bean/TimeLineContent;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInfoFromJson(Lorg/json/JSONObject;)Lcom/aliyun/liveshift/bean/TimeLineContent;
    .locals 4
    .param p0, "json"    # Lorg/json/JSONObject;

    .line 23
    new-instance v0, Lcom/aliyun/liveshift/bean/TimeLineContent;

    invoke-direct {v0}, Lcom/aliyun/liveshift/bean/TimeLineContent;-><init>()V

    .line 24
    .local v0, "content":Lcom/aliyun/liveshift/bean/TimeLineContent;
    if-nez p0, :cond_0

    .line 25
    return-object v0

    .line 28
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "current"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p0, v1}, Lcom/aliyun/utils/JsonUtil;->getLong(Lorg/json/JSONObject;[Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/aliyun/liveshift/bean/TimeLineContent;->current:J

    .line 31
    :try_start_0
    const-string/jumbo v1, "timeline"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 32
    .local v1, "jsonArray":Lorg/json/JSONArray;
    invoke-static {v1}, Lcom/aliyun/liveshift/bean/TimeLineInfo;->getInfoArrayFromJson(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/aliyun/liveshift/bean/TimeLineContent;->timelines:Ljava/util/List;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    goto :goto_0

    .line 33
    :catch_0
    move-exception v1

    .line 37
    :goto_0
    return-object v0
.end method
