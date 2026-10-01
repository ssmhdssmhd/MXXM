.class Lcom/shenma/tvlauncher/tvback/TVBackActivity$5;
.super Ljava/lang/Object;
.source "TVBackActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/tvback/TVBackActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V
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

    .line 418
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$5;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .line 421
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$5;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$fgetisFull(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 422
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$5;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$fgetisControllerShow(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$5;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$mshowController(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V

    .line 424
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$5;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$mhideControllerDelay(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V

    goto :goto_0

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$5;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$mcancelDelayHide(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V

    .line 427
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$5;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$mhideController(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V

    .line 429
    :goto_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$5;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-static {v0}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$mhideMenu(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V

    .line 430
    return-void

    .line 433
    :cond_1
    sget v0, Lcom/shenma/tvlauncher/R$id;->rb_tv_back_rd_1:I

    const/4 v1, 0x1

    if-ne p2, v0, :cond_2

    .line 434
    const/4 v0, 0x0

    sput v0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rbChecked:I

    .line 435
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$5;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    sget v2, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rbChecked:I

    invoke-virtual {v0, v2}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->setProgramData(I)V

    goto :goto_1

    .line 436
    :cond_2
    sget v0, Lcom/shenma/tvlauncher/R$id;->rb_tv_back_rd_2:I

    if-ne p2, v0, :cond_3

    .line 437
    sput v1, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rbChecked:I

    .line 438
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$5;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    sget v2, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rbChecked:I

    invoke-virtual {v0, v2}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->setProgramData(I)V

    goto :goto_1

    .line 439
    :cond_3
    sget v0, Lcom/shenma/tvlauncher/R$id;->rb_tv_back_rd_3:I

    if-ne p2, v0, :cond_4

    .line 440
    const/4 v0, 0x2

    sput v0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rbChecked:I

    .line 441
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$5;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    sget v2, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rbChecked:I

    invoke-virtual {v0, v2}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->setProgramData(I)V

    goto :goto_1

    .line 442
    :cond_4
    sget v0, Lcom/shenma/tvlauncher/R$id;->rb_tv_back_rd_4:I

    if-ne p2, v0, :cond_5

    .line 443
    const/4 v0, 0x3

    sput v0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rbChecked:I

    .line 444
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$5;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    sget v2, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rbChecked:I

    invoke-virtual {v0, v2}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->setProgramData(I)V

    goto :goto_1

    .line 445
    :cond_5
    sget v0, Lcom/shenma/tvlauncher/R$id;->rb_tv_back_rd_5:I

    if-ne p2, v0, :cond_6

    .line 446
    const/4 v0, 0x4

    sput v0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rbChecked:I

    .line 447
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$5;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    sget v2, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rbChecked:I

    invoke-virtual {v0, v2}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->setProgramData(I)V

    goto :goto_1

    .line 448
    :cond_6
    sget v0, Lcom/shenma/tvlauncher/R$id;->rb_tv_back_rd_6:I

    if-ne p2, v0, :cond_7

    .line 449
    const/4 v0, 0x5

    sput v0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rbChecked:I

    .line 450
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$5;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    sget v2, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rbChecked:I

    invoke-virtual {v0, v2}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->setProgramData(I)V

    goto :goto_1

    .line 451
    :cond_7
    sget v0, Lcom/shenma/tvlauncher/R$id;->rb_tv_back_rd_7:I

    if-ne p2, v0, :cond_8

    .line 452
    const/4 v0, 0x6

    sput v0, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rbChecked:I

    .line 453
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$5;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    sget v2, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rbChecked:I

    invoke-virtual {v0, v2}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->setProgramData(I)V

    .line 456
    :cond_8
    :goto_1
    invoke-static {}, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->-$$Nest$sfgetrb()[Landroid/widget/RadioButton;

    move-result-object v0

    sget v2, Lcom/shenma/tvlauncher/tvback/TVBackActivity;->rbChecked:I

    aget-object v0, v0, v2

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 457
    return-void
.end method
