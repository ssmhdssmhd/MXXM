.class public Lcom/shenma/tvlauncher/vod/db/Album;
.super Ljava/lang/Object;
.source "Album.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lnet/tsz/afinal/annotation/sqlite/Table;
    name = "albums"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/shenma/tvlauncher/vod/db/Album;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private albumId:Ljava/lang/String;

.field private albumPic:Ljava/lang/String;

.field private albumSourceType:Ljava/lang/String;

.field private albumState:Ljava/lang/String;

.field private albumTitle:Ljava/lang/String;

.field private albumType:Ljava/lang/String;

.field private collectionTime:I

.field private id:I
    .annotation runtime Lnet/tsz/afinal/annotation/sqlite/Id;
        column = "id"
    .end annotation
.end field

.field private nextLink:Ljava/lang/String;

.field private playIndex:I

.field private time:Ljava/lang/String;

.field private typeId:I

.field private vod_play_url:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fputalbumId(Lcom/shenma/tvlauncher/vod/db/Album;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->albumId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputalbumPic(Lcom/shenma/tvlauncher/vod/db/Album;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->albumPic:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputalbumSourceType(Lcom/shenma/tvlauncher/vod/db/Album;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->albumSourceType:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputalbumState(Lcom/shenma/tvlauncher/vod/db/Album;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->albumState:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputalbumTitle(Lcom/shenma/tvlauncher/vod/db/Album;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->albumTitle:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputalbumType(Lcom/shenma/tvlauncher/vod/db/Album;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->albumType:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcollectionTime(Lcom/shenma/tvlauncher/vod/db/Album;I)V
    .locals 0

    iput p1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->collectionTime:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputid(Lcom/shenma/tvlauncher/vod/db/Album;I)V
    .locals 0

    iput p1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->id:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputnextLink(Lcom/shenma/tvlauncher/vod/db/Album;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->nextLink:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputplayIndex(Lcom/shenma/tvlauncher/vod/db/Album;I)V
    .locals 0

    iput p1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->playIndex:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtime(Lcom/shenma/tvlauncher/vod/db/Album;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->time:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtypeId(Lcom/shenma/tvlauncher/vod/db/Album;I)V
    .locals 0

    iput p1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->typeId:I

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 185
    new-instance v0, Lcom/shenma/tvlauncher/vod/db/Album$1;

    invoke-direct {v0}, Lcom/shenma/tvlauncher/vod/db/Album$1;-><init>()V

    sput-object v0, Lcom/shenma/tvlauncher/vod/db/Album;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 346
    const/4 v0, 0x0

    return v0
.end method

.method public getAlbumId()Ljava/lang/String;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/db/Album;->albumId:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumPic()Ljava/lang/String;
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/db/Album;->albumPic:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumSourceType()Ljava/lang/String;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/db/Album;->albumSourceType:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumState()Ljava/lang/String;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/db/Album;->albumState:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumTitle()Ljava/lang/String;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/db/Album;->albumTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumType()Ljava/lang/String;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/db/Album;->albumType:Ljava/lang/String;

    return-object v0
.end method

.method public getCollectionTime()I
    .locals 1

    .line 257
    iget v0, p0, Lcom/shenma/tvlauncher/vod/db/Album;->collectionTime:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 233
    iget v0, p0, Lcom/shenma/tvlauncher/vod/db/Album;->id:I

    return v0
.end method

.method public getNextLink()Ljava/lang/String;
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/db/Album;->nextLink:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayIndex()I
    .locals 1

    .line 249
    iget v0, p0, Lcom/shenma/tvlauncher/vod/db/Album;->playIndex:I

    return v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/db/Album;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeId()I
    .locals 1

    .line 265
    iget v0, p0, Lcom/shenma/tvlauncher/vod/db/Album;->typeId:I

    return v0
.end method

.method public getVod_play_url()Ljava/lang/String;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/db/Album;->vod_play_url:Ljava/lang/String;

    return-object v0
.end method

.method public setAlbumId(Ljava/lang/String;)V
    .locals 0
    .param p1, "albumId"    # Ljava/lang/String;

    .line 245
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->albumId:Ljava/lang/String;

    .line 246
    return-void
.end method

.method public setAlbumPic(Ljava/lang/String;)V
    .locals 0
    .param p1, "albumPic"    # Ljava/lang/String;

    .line 309
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->albumPic:Ljava/lang/String;

    .line 310
    return-void
.end method

.method public setAlbumSourceType(Ljava/lang/String;)V
    .locals 0
    .param p1, "albumSourceType"    # Ljava/lang/String;

    .line 285
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->albumSourceType:Ljava/lang/String;

    .line 286
    return-void
.end method

.method public setAlbumState(Ljava/lang/String;)V
    .locals 0
    .param p1, "albumState"    # Ljava/lang/String;

    .line 301
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->albumState:Ljava/lang/String;

    .line 302
    return-void
.end method

.method public setAlbumTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "albumTitle"    # Ljava/lang/String;

    .line 293
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->albumTitle:Ljava/lang/String;

    .line 294
    return-void
.end method

.method public setAlbumType(Ljava/lang/String;)V
    .locals 0
    .param p1, "albumType"    # Ljava/lang/String;

    .line 277
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->albumType:Ljava/lang/String;

    .line 278
    return-void
.end method

.method public setCollectionTime(I)V
    .locals 0
    .param p1, "collectionTime"    # I

    .line 261
    iput p1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->collectionTime:I

    .line 262
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .line 237
    iput p1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->id:I

    .line 238
    return-void
.end method

.method public setNextLink(Ljava/lang/String;)V
    .locals 0
    .param p1, "nextLink"    # Ljava/lang/String;

    .line 317
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->nextLink:Ljava/lang/String;

    .line 318
    return-void
.end method

.method public setPlayIndex(I)V
    .locals 0
    .param p1, "playIndex"    # I

    .line 253
    iput p1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->playIndex:I

    .line 254
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "time"    # Ljava/lang/String;

    .line 325
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->time:Ljava/lang/String;

    .line 326
    return-void
.end method

.method public setTypeId(I)V
    .locals 0
    .param p1, "typeId"    # I

    .line 269
    iput p1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->typeId:I

    .line 270
    return-void
.end method

.method public setVod_play_url(Ljava/lang/String;)V
    .locals 0
    .param p1, "vod_play_url"    # Ljava/lang/String;

    .line 229
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->vod_play_url:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Album [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", albumId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->albumId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->playIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", collectionTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->collectionTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", typeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->typeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", albumType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->albumType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", albumSourceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->albumSourceType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", albumTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->albumTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", albumState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->albumState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", albumPic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->albumPic:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nextLink="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->nextLink:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/db/Album;->time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 351
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 352
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "ID"

    iget v2, p0, Lcom/shenma/tvlauncher/vod/db/Album;->id:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 353
    const-string v1, "PlayIndex"

    iget v2, p0, Lcom/shenma/tvlauncher/vod/db/Album;->playIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 354
    const-string v1, "CollectionTime"

    iget v2, p0, Lcom/shenma/tvlauncher/vod/db/Album;->collectionTime:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 355
    const-string v1, "TypeId"

    iget v2, p0, Lcom/shenma/tvlauncher/vod/db/Album;->typeId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 356
    const-string v1, "AlbumId"

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/db/Album;->albumId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v1, "AlbumType"

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/db/Album;->albumType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string v1, "AlbumSourceType"

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/db/Album;->albumSourceType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string v1, "AlbumPic"

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/db/Album;->albumPic:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string v1, "AlbumTitle"

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/db/Album;->albumTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string v1, "AlbumState"

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/db/Album;->albumState:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string v1, "NextLink"

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/db/Album;->nextLink:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const-string v1, "Time"

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/db/Album;->time:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 365
    return-void
.end method
