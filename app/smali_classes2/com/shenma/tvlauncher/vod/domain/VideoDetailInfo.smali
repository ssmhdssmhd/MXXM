.class public Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;
.super Ljava/lang/Object;
.source "VideoDetailInfo.java"


# instance fields
.field private about:Lcom/shenma/tvlauncher/vod/domain/AboutInfo;

.field private actor:[Ljava/lang/String;

.field private area:[Ljava/lang/String;

.field private cur_episode:Ljava/lang/String;

.field private director:[Ljava/lang/String;

.field private foreign_ip:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private img_url:Ljava/lang/String;

.field private intro:Ljava/lang/String;

.field private is_finish:Ljava/lang/String;

.field private max_episode:Ljava/lang/String;

.field private play_filter:Ljava/lang/String;

.field private pubtime:Ljava/lang/String;

.field private raing:Ljava/lang/String;

.field private season_num:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private top_type:Ljava/lang/String;

.field private trunk:Ljava/lang/String;

.field private type:[Ljava/lang/String;

.field private video_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/vod/domain/VodUrl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAbout()Lcom/shenma/tvlauncher/vod/domain/AboutInfo;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->about:Lcom/shenma/tvlauncher/vod/domain/AboutInfo;

    return-object v0
.end method

.method public getActor()[Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->actor:[Ljava/lang/String;

    return-object v0
.end method

.method public getArea()[Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->area:[Ljava/lang/String;

    return-object v0
.end method

.method public getCur_episode()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->cur_episode:Ljava/lang/String;

    return-object v0
.end method

.method public getDirector()[Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->director:[Ljava/lang/String;

    return-object v0
.end method

.method public getForeign_ip()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->foreign_ip:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImg_url()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->img_url:Ljava/lang/String;

    return-object v0
.end method

.method public getIntro()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->intro:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_finish()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->is_finish:Ljava/lang/String;

    return-object v0
.end method

.method public getMax_episode()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->max_episode:Ljava/lang/String;

    return-object v0
.end method

.method public getPlay_filter()Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->play_filter:Ljava/lang/String;

    return-object v0
.end method

.method public getPubtime()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->pubtime:Ljava/lang/String;

    return-object v0
.end method

.method public getRaing()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->raing:Ljava/lang/String;

    return-object v0
.end method

.method public getSeason_num()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->season_num:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTop_type()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->top_type:Ljava/lang/String;

    return-object v0
.end method

.method public getTrunk()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->trunk:Ljava/lang/String;

    return-object v0
.end method

.method public getType()[Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->type:[Ljava/lang/String;

    return-object v0
.end method

.method public getVideo_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/vod/domain/VodUrl;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->video_list:Ljava/util/List;

    return-object v0
.end method

.method public setAbout(Lcom/shenma/tvlauncher/vod/domain/AboutInfo;)V
    .locals 0
    .param p1, "about"    # Lcom/shenma/tvlauncher/vod/domain/AboutInfo;

    .line 34
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->about:Lcom/shenma/tvlauncher/vod/domain/AboutInfo;

    .line 35
    return-void
.end method

.method public setActor([Ljava/lang/String;)V
    .locals 0
    .param p1, "actor"    # [Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->actor:[Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setArea([Ljava/lang/String;)V
    .locals 0
    .param p1, "area"    # [Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->area:[Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setCur_episode(Ljava/lang/String;)V
    .locals 0
    .param p1, "cur_episode"    # Ljava/lang/String;

    .line 154
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->cur_episode:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public setDirector([Ljava/lang/String;)V
    .locals 0
    .param p1, "director"    # [Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->director:[Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setForeign_ip(Ljava/lang/String;)V
    .locals 0
    .param p1, "foreign_ip"    # Ljava/lang/String;

    .line 194
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->foreign_ip:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 98
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->id:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setImg_url(Ljava/lang/String;)V
    .locals 0
    .param p1, "img_url"    # Ljava/lang/String;

    .line 122
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->img_url:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setIntro(Ljava/lang/String;)V
    .locals 0
    .param p1, "intro"    # Ljava/lang/String;

    .line 130
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->intro:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setIs_finish(Ljava/lang/String;)V
    .locals 0
    .param p1, "is_finish"    # Ljava/lang/String;

    .line 138
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->is_finish:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setMax_episode(Ljava/lang/String;)V
    .locals 0
    .param p1, "max_episode"    # Ljava/lang/String;

    .line 162
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->max_episode:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public setPlay_filter(Ljava/lang/String;)V
    .locals 0
    .param p1, "play_filter"    # Ljava/lang/String;

    .line 186
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->play_filter:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public setPubtime(Ljava/lang/String;)V
    .locals 0
    .param p1, "pubtime"    # Ljava/lang/String;

    .line 146
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->pubtime:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setRaing(Ljava/lang/String;)V
    .locals 0
    .param p1, "raing"    # Ljava/lang/String;

    .line 178
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->raing:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public setSeason_num(Ljava/lang/String;)V
    .locals 0
    .param p1, "season_num"    # Ljava/lang/String;

    .line 170
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->season_num:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .line 106
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->title:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setTop_type(Ljava/lang/String;)V
    .locals 0
    .param p1, "top_type"    # Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->top_type:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setTrunk(Ljava/lang/String;)V
    .locals 0
    .param p1, "trunk"    # Ljava/lang/String;

    .line 114
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->trunk:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setType([Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # [Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->type:[Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setVideo_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/vod/domain/VodUrl;",
            ">;)V"
        }
    .end annotation

    .line 90
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/shenma/tvlauncher/vod/domain/VodUrl;>;"
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->video_list:Ljava/util/List;

    .line 91
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoDetailInfo [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", top_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->top_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", trunk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->trunk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", img_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->img_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", intro="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->intro:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", is_finish="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->is_finish:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pubtime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->pubtime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cur_episode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->cur_episode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", max_episode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->max_episode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", season_num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->season_num:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", raing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->raing:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", play_filter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->play_filter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", foreign_ip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->foreign_ip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", actor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->actor:[Ljava/lang/String;

    .line 213
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", director="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->director:[Ljava/lang/String;

    .line 214
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", area="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->area:[Ljava/lang/String;

    .line 215
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->type:[Ljava/lang/String;

    .line 216
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", about="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->about:Lcom/shenma/tvlauncher/vod/domain/AboutInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", video_list="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;->video_list:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    return-object v0
.end method
