.class Lcom/shenma/tvlauncher/application/MyApplication$1;
.super Landroid/content/BroadcastReceiver;
.source "MyApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/application/MyApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/application/MyApplication;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/application/MyApplication;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/application/MyApplication;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/shenma/tvlauncher/application/MyApplication$1;->this$0:Lcom/shenma/tvlauncher/application/MyApplication;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 58
    move-object/from16 v0, p2

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    const-string v2, "status"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 61
    .local v2, "status":I
    const-string v4, "health"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 62
    .local v4, "health":I
    const-string v5, "present"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 63
    .local v5, "present":Z
    const-string v6, "level"

    invoke-virtual {v0, v6, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 64
    .local v6, "level":I
    const-string v7, "scale"

    invoke-virtual {v0, v7, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 65
    .local v7, "scale":I
    const-string v8, "icon-small"

    invoke-virtual {v0, v8, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 66
    .local v8, "icon_small":I
    const-string v9, "plugged"

    invoke-virtual {v0, v9, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 67
    .local v9, "plugged":I
    const-string v10, "voltage"

    invoke-virtual {v0, v10, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 68
    .local v10, "voltage":I
    const-string v11, "temperature"

    invoke-virtual {v0, v11, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 69
    .local v3, "temperature":I
    const-string v11, "technology"

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/shenma/tvlauncher/application/MyApplication;->technology:Ljava/lang/String;

    .line 71
    const-string v11, ""

    .line 73
    .local v11, "statusString":Ljava/lang/String;
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 87
    :pswitch_0
    const-string v11, "full"

    goto :goto_0

    .line 84
    :pswitch_1
    const-string v11, "not charging"

    .line 85
    goto :goto_0

    .line 81
    :pswitch_2
    const-string v11, "discharging"

    .line 82
    goto :goto_0

    .line 78
    :pswitch_3
    const-string v11, "charging"

    .line 79
    goto :goto_0

    .line 75
    :pswitch_4
    const-string v11, "unknown"

    .line 76
    nop

    .line 91
    :goto_0
    const-string v12, ""

    .line 93
    .local v12, "healthString":Ljava/lang/String;
    packed-switch v4, :pswitch_data_1

    goto :goto_1

    .line 110
    :pswitch_5
    const-string v12, "unspecified failure"

    goto :goto_1

    .line 107
    :pswitch_6
    const-string v12, "voltage"

    .line 108
    goto :goto_1

    .line 104
    :pswitch_7
    const-string v12, "dead"

    .line 105
    goto :goto_1

    .line 101
    :pswitch_8
    const-string v12, "overheat"

    .line 102
    goto :goto_1

    .line 98
    :pswitch_9
    const-string v12, "good"

    .line 99
    goto :goto_1

    .line 95
    :pswitch_a
    const-string v12, "unknown"

    .line 96
    nop

    .line 114
    :goto_1
    const-string v13, ""

    .line 115
    .local v13, "acString":Ljava/lang/String;
    packed-switch v9, :pswitch_data_2

    goto :goto_2

    .line 120
    :pswitch_b
    const-string v13, "plugged usb"

    goto :goto_2

    .line 117
    :pswitch_c
    const-string v13, "plugged ac"

    .line 118
    nop

    .line 132
    :goto_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "technology="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/shenma/tvlauncher/application/MyApplication;->technology:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "MyApplication"

    invoke-static {v15, v14}, Lcom/shenma/tvlauncher/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .end local v2    # "status":I
    .end local v3    # "temperature":I
    .end local v4    # "health":I
    .end local v5    # "present":Z
    .end local v6    # "level":I
    .end local v7    # "scale":I
    .end local v8    # "icon_small":I
    .end local v9    # "plugged":I
    .end local v10    # "voltage":I
    .end local v11    # "statusString":Ljava/lang/String;
    .end local v12    # "healthString":Ljava/lang/String;
    .end local v13    # "acString":Ljava/lang/String;
    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method
