.class Lcom/shenma/tvlauncher/vod/domain/VodUrlList$1;
.super Ljava/lang/Object;
.source "VodUrlList.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/vod/domain/VodUrlList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/shenma/tvlauncher/vod/domain/VodUrlList;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/shenma/tvlauncher/vod/domain/VodUrlList;
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 10
    new-instance v0, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;

    invoke-direct {v0, p1}, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 7
    invoke-virtual {p0, p1}, Lcom/shenma/tvlauncher/vod/domain/VodUrlList$1;->createFromParcel(Landroid/os/Parcel;)Lcom/shenma/tvlauncher/vod/domain/VodUrlList;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/shenma/tvlauncher/vod/domain/VodUrlList;
    .locals 1
    .param p1, "i"    # I

    .line 15
    new-array v0, p1, [Lcom/shenma/tvlauncher/vod/domain/VodUrlList;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 7
    invoke-virtual {p0, p1}, Lcom/shenma/tvlauncher/vod/domain/VodUrlList$1;->newArray(I)[Lcom/shenma/tvlauncher/vod/domain/VodUrlList;

    move-result-object p1

    return-object p1
.end method
