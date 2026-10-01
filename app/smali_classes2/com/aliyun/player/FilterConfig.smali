.class public Lcom/aliyun/player/FilterConfig;
.super Ljava/lang/Object;
.source "FilterConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/player/FilterConfig$FilterOptions;,
        Lcom/aliyun/player/FilterConfig$Filter;
    }
.end annotation


# instance fields
.field private filters:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/aliyun/player/FilterConfig;->filters:Lorg/json/JSONArray;

    return-void
.end method


# virtual methods
.method public addFilter(Lcom/aliyun/player/FilterConfig$Filter;)V
    .locals 2
    .param p1, "filter"    # Lcom/aliyun/player/FilterConfig$Filter;

    .line 58
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/aliyun/player/FilterConfig$Filter;->getFilter()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/aliyun/player/FilterConfig;->filters:Lorg/json/JSONArray;

    invoke-virtual {p1}, Lcom/aliyun/player/FilterConfig$Filter;->getFilter()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 61
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/aliyun/player/FilterConfig;->filters:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
