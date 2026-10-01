.class public Lcom/shenma/tvlauncher/tvback/TVBackActivity$MenuType;
.super Ljava/lang/Object;
.source "TVBackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/tvback/TVBackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MenuType"
.end annotation


# static fields
.field public static final CHANNEL_MENU:I = 0x1

.field public static final DATE_MENU:I = 0x3

.field public static final MEDIA_MENU:I = 0x4

.field public static final PROGRAMINFO_MENU:I = 0x2

.field public static final REFRESH_MENU:I = 0x5

.field public static final VERSION_MENU:I = 0x6


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;


# direct methods
.method public constructor <init>(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/tvback/TVBackActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1581
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$MenuType;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
