.class public Lcom/shenma/tvlauncher/vod/domain/VodUrl;
.super Ljava/lang/Object;
.source "VodUrl.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/shenma/tvlauncher/vod/domain/VodUrl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private duration:Ljava/lang/String;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/vod/domain/VodUrlList;",
            ">;"
        }
    .end annotation
.end field

.field private lists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/vod/domain/VodUrlList;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private parse:[Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lcom/shenma/tvlauncher/vod/domain/VodUrl$1;

    invoke-direct {v0}, Lcom/shenma/tvlauncher/vod/domain/VodUrl$1;-><init>()V

    sput-object v0, Lcom/shenma/tvlauncher/vod/domain/VodUrl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/domain/VodUrl;->type:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/domain/VodUrl;->name:Ljava/lang/String;

    .line 29
    sget-object v0, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/domain/VodUrl;->list:Ljava/util/List;

    .line 30
    sget-object v0, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/domain/VodUrl;->lists:Ljava/util/List;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/domain/VodUrl;->parse:[Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/domain/VodUrl;->duration:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/domain/VodUrl;->duration:Ljava/lang/String;

    return-object v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/vod/domain/VodUrlList;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/domain/VodUrl;->list:Ljava/util/List;

    return-object v0
.end method

.method public getLists()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/vod/domain/VodUrlList;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/domain/VodUrl;->lists:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/domain/VodUrl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParse()[Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/domain/VodUrl;->parse:[Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/domain/VodUrl;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setDuration(Ljava/lang/String;)V
    .locals 0
    .param p1, "duration"    # Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/domain/VodUrl;->duration:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/vod/domain/VodUrlList;",
            ">;)V"
        }
    .end annotation

    .line 68
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/shenma/tvlauncher/vod/domain/VodUrlList;>;"
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/domain/VodUrl;->list:Ljava/util/List;

    .line 69
    return-void
.end method

.method public setLists(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/vod/domain/VodUrlList;",
            ">;)V"
        }
    .end annotation

    .line 71
    .local p1, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/shenma/tvlauncher/vod/domain/VodUrlList;>;"
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/domain/VodUrl;->lists:Ljava/util/List;

    .line 72
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 75
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/domain/VodUrl;->name:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setParse([Ljava/lang/String;)V
    .locals 0
    .param p1, "parse"    # [Ljava/lang/String;

    .line 79
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/domain/VodUrl;->parse:[Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .line 83
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/domain/VodUrl;->type:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 88
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/domain/VodUrl;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/domain/VodUrl;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/domain/VodUrl;->list:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 91
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/domain/VodUrl;->lists:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 92
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/domain/VodUrl;->parse:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/domain/VodUrl;->duration:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    return-void
.end method
