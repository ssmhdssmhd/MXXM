.class public Lcom/aliyun/player/source/LiveShift;
.super Ljava/lang/Object;
.source "LiveShift.java"


# instance fields
.field private coverPath:Ljava/lang/String;

.field private format:Ljava/lang/String;

.field private timeLineUrl:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "m3u8"

    iput-object v0, p0, Lcom/aliyun/player/source/LiveShift;->format:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCoverPath()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/aliyun/player/source/LiveShift;->coverPath:Ljava/lang/String;

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/aliyun/player/source/LiveShift;->format:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeLineUrl()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/aliyun/player/source/LiveShift;->timeLineUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/aliyun/player/source/LiveShift;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/aliyun/player/source/LiveShift;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setCoverPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "coverPath"    # Ljava/lang/String;

    .line 100
    iput-object p1, p0, Lcom/aliyun/player/source/LiveShift;->coverPath:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setFormat(Ljava/lang/String;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/aliyun/player/source/LiveShift;->format:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setTimeLineUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "timeLineUrl"    # Ljava/lang/String;

    .line 148
    iput-object p1, p0, Lcom/aliyun/player/source/LiveShift;->timeLineUrl:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .line 124
    iput-object p1, p0, Lcom/aliyun/player/source/LiveShift;->title:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .line 76
    iput-object p1, p0, Lcom/aliyun/player/source/LiveShift;->url:Ljava/lang/String;

    .line 77
    return-void
.end method
