.class Lcom/shenma/tvlauncher/vod/SearchActivity$1;
.super Landroid/os/Handler;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/vod/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/vod/SearchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/vod/SearchActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 119
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$1;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 121
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 154
    :pswitch_0
    return-void

    .line 150
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/shenma/tvlauncher/utils/Utils;->localIPv4get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$1;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    iget-object v1, v1, Lcom/shenma/tvlauncher/vod/SearchActivity;->sp:Landroid/content/SharedPreferences;

    const-string v2, "port"

    const/16 v3, 0x26fa

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v7, -0x1000000

    const/4 v8, -0x1

    const/16 v2, 0xc8

    const/16 v3, 0xc8

    const-string v4, "UTF-8"

    const-string v5, "H"

    const-string v6, "1"

    invoke-static/range {v1 .. v8}, Lcom/shenma/tvlauncher/utils/Utils;->createQRCodeBitmap(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 151
    .local v0, "empower":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$1;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-static {v1}, Lcom/shenma/tvlauncher/vod/SearchActivity;->-$$Nest$fgetusers_empower(Lcom/shenma/tvlauncher/vod/SearchActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 152
    return-void

    .line 147
    .end local v0    # "empower":Landroid/graphics/Bitmap;
    :pswitch_2
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$1;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->-$$Nest$fgetcontext(Lcom/shenma/tvlauncher/vod/SearchActivity;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/R$drawable;->toast_shut:I

    const-string/jumbo v2, "\u670d\u52a1\u5668\u5f00\u4e86\u5c0f\u5dee,\u8bf7\u5728\u8bd5\u4e00\u6b21!"

    invoke-static {v2, v0, v1}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Ljava/lang/String;Landroid/content/Context;I)V

    .line 148
    return-void

    .line 143
    :pswitch_3
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$1;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->-$$Nest$fgetcontext(Lcom/shenma/tvlauncher/vod/SearchActivity;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    const-string/jumbo v2, "\u8d26\u6237\u4fe1\u606f\u5df2\u5931\u6548!"

    invoke-static {v2, v0, v1}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Ljava/lang/String;Landroid/content/Context;I)V

    .line 144
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$1;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$1;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/SearchActivity;->-$$Nest$fgetcontext(Lcom/shenma/tvlauncher/vod/SearchActivity;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/vod/SearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 145
    return-void

    .line 139
    :pswitch_4
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$1;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->-$$Nest$fgetcontext(Lcom/shenma/tvlauncher/vod/SearchActivity;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    const-string/jumbo v2, "\u8d26\u6237\u4fe1\u606f\u9519\u8bef!"

    invoke-static {v2, v0, v1}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Ljava/lang/String;Landroid/content/Context;I)V

    .line 140
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$1;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$1;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/SearchActivity;->-$$Nest$fgetcontext(Lcom/shenma/tvlauncher/vod/SearchActivity;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/vod/SearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 141
    return-void

    .line 135
    :pswitch_5
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$1;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->-$$Nest$fgetcontext(Lcom/shenma/tvlauncher/vod/SearchActivity;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    const-string/jumbo v2, "\u8d26\u6237\u5df2\u88ab\u7981\u7528!"

    invoke-static {v2, v0, v1}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Ljava/lang/String;Landroid/content/Context;I)V

    .line 136
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$1;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$1;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/SearchActivity;->-$$Nest$fgetcontext(Lcom/shenma/tvlauncher/vod/SearchActivity;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/vod/SearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 137
    return-void

    .line 131
    :pswitch_6
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$1;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->-$$Nest$fgetcontext(Lcom/shenma/tvlauncher/vod/SearchActivity;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    const-string/jumbo v2, "\u8be5\u8d26\u6237\u5df2\u5728\u5176\u5b83\u8bbe\u5907\u767b\u5f55!"

    invoke-static {v2, v0, v1}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Ljava/lang/String;Landroid/content/Context;I)V

    .line 132
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$1;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$1;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/SearchActivity;->-$$Nest$fgetcontext(Lcom/shenma/tvlauncher/vod/SearchActivity;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/shenma/tvlauncher/UserActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/vod/SearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 133
    return-void

    .line 126
    :pswitch_7
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$1;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->-$$Nest$fgetcontext(Lcom/shenma/tvlauncher/vod/SearchActivity;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    const-string/jumbo v2, "\u8be5\u8d26\u6237\u5df2\u8fc7\u671f!"

    invoke-static {v2, v0, v1}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Ljava/lang/String;Landroid/content/Context;I)V

    .line 127
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$1;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$1;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-static {v2}, Lcom/shenma/tvlauncher/vod/SearchActivity;->-$$Nest$fgetcontext(Lcom/shenma/tvlauncher/vod/SearchActivity;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/shenma/tvlauncher/EmpowerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/shenma/tvlauncher/vod/SearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 128
    return-void

    .line 123
    :pswitch_8
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/SearchActivity$1;->this$0:Lcom/shenma/tvlauncher/vod/SearchActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/vod/SearchActivity;->-$$Nest$fgetcontext(Lcom/shenma/tvlauncher/vod/SearchActivity;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "\u7cdf\u7cd5,\u8bf7\u6c42\u6ca1\u6210\u529f!"

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->toast_err:I

    invoke-static {v0, v1, v2}, Lcom/shenma/tvlauncher/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 124
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
