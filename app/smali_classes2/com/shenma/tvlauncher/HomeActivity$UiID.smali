.class Lcom/shenma/tvlauncher/HomeActivity$UiID;
.super Ljava/lang/Object;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UiID"
.end annotation


# static fields
.field public static final AUTO_LOGIN_FAIL:I = 0x3

.field public static final AUTO_LOGIN_SUCCESS:I = 0x2

.field public static final RESPONSE_NO_SUCCESS:I = 0x1

.field public static final SHOW_UPDATE_DIALOG:I = 0x4


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/HomeActivity;


# direct methods
.method private constructor <init>(Lcom/shenma/tvlauncher/HomeActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 2554
    iput-object p1, p0, Lcom/shenma/tvlauncher/HomeActivity$UiID;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2555
    return-void
.end method
