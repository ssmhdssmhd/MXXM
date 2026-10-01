.class Lcom/shenma/tvlauncher/fragment/TopicFragment$2;
.super Ljava/lang/Object;
.source "TopicFragment.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/fragment/TopicFragment;->createMyReqSuccessListener()Lcom/android/volley/Response$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Lcom/shenma/tvlauncher/domain/Topic;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/fragment/TopicFragment;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/fragment/TopicFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/fragment/TopicFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 163
    iput-object p1, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment$2;->this$0:Lcom/shenma/tvlauncher/fragment/TopicFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/shenma/tvlauncher/domain/Topic;)V
    .locals 6
    .param p1, "response"    # Lcom/shenma/tvlauncher/domain/Topic;

    .line 166
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment$2;->this$0:Lcom/shenma/tvlauncher/fragment/TopicFragment;

    invoke-virtual {p1}, Lcom/shenma/tvlauncher/domain/Topic;->getData()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->-$$Nest$fputdata(Lcom/shenma/tvlauncher/fragment/TopicFragment;Ljava/util/List;)V

    .line 168
    const/4 v0, 0x0

    .line 170
    .local v0, "paramInt":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment$2;->this$0:Lcom/shenma/tvlauncher/fragment/TopicFragment;

    invoke-static {v2}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->-$$Nest$fgetdata(Lcom/shenma/tvlauncher/fragment/TopicFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 171
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment$2;->this$0:Lcom/shenma/tvlauncher/fragment/TopicFragment;

    invoke-static {v2}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->-$$Nest$fgetdata(Lcom/shenma/tvlauncher/fragment/TopicFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/domain/TopicInfo;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/domain/TopicInfo;->getTjwei()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 172
    const/4 v0, 0x0

    .line 173
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment$2;->this$0:Lcom/shenma/tvlauncher/fragment/TopicFragment;

    invoke-static {v2, v1}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->-$$Nest$fputid1(Lcom/shenma/tvlauncher/fragment/TopicFragment;I)V

    .line 174
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment$2;->this$0:Lcom/shenma/tvlauncher/fragment/TopicFragment;

    invoke-static {v2}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->-$$Nest$fgettvs(Lcom/shenma/tvlauncher/fragment/TopicFragment;)[Landroid/widget/TextView;

    move-result-object v2

    aget-object v2, v2, v3

    iget-object v4, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment$2;->this$0:Lcom/shenma/tvlauncher/fragment/TopicFragment;

    invoke-static {v4}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->-$$Nest$fgetdata(Lcom/shenma/tvlauncher/fragment/TopicFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shenma/tvlauncher/domain/TopicInfo;

    invoke-virtual {v4}, Lcom/shenma/tvlauncher/domain/TopicInfo;->getZtname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment$2;->this$0:Lcom/shenma/tvlauncher/fragment/TopicFragment;

    invoke-static {v2}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->-$$Nest$fgettvs(Lcom/shenma/tvlauncher/fragment/TopicFragment;)[Landroid/widget/TextView;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 176
    :cond_0
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment$2;->this$0:Lcom/shenma/tvlauncher/fragment/TopicFragment;

    invoke-static {v2}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->-$$Nest$fgetdata(Lcom/shenma/tvlauncher/fragment/TopicFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/domain/TopicInfo;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/domain/TopicInfo;->getTjwei()Ljava/lang/String;

    move-result-object v2

    const-string v4, "2"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 177
    const/4 v0, 0x1

    .line 178
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment$2;->this$0:Lcom/shenma/tvlauncher/fragment/TopicFragment;

    invoke-static {v2, v1}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->-$$Nest$fputid2(Lcom/shenma/tvlauncher/fragment/TopicFragment;I)V

    .line 179
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment$2;->this$0:Lcom/shenma/tvlauncher/fragment/TopicFragment;

    invoke-static {v2}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->-$$Nest$fgettvs(Lcom/shenma/tvlauncher/fragment/TopicFragment;)[Landroid/widget/TextView;

    move-result-object v2

    const/4 v4, 0x1

    aget-object v2, v2, v4

    iget-object v5, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment$2;->this$0:Lcom/shenma/tvlauncher/fragment/TopicFragment;

    invoke-static {v5}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->-$$Nest$fgetdata(Lcom/shenma/tvlauncher/fragment/TopicFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shenma/tvlauncher/domain/TopicInfo;

    invoke-virtual {v5}, Lcom/shenma/tvlauncher/domain/TopicInfo;->getZtname()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment$2;->this$0:Lcom/shenma/tvlauncher/fragment/TopicFragment;

    invoke-static {v2}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->-$$Nest$fgettvs(Lcom/shenma/tvlauncher/fragment/TopicFragment;)[Landroid/widget/TextView;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 181
    :cond_1
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment$2;->this$0:Lcom/shenma/tvlauncher/fragment/TopicFragment;

    invoke-static {v2}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->-$$Nest$fgetdata(Lcom/shenma/tvlauncher/fragment/TopicFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/domain/TopicInfo;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/domain/TopicInfo;->getTjwei()Ljava/lang/String;

    move-result-object v2

    const-string v4, "3"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 182
    const/4 v0, 0x2

    .line 183
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment$2;->this$0:Lcom/shenma/tvlauncher/fragment/TopicFragment;

    invoke-static {v2, v1}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->-$$Nest$fputid3(Lcom/shenma/tvlauncher/fragment/TopicFragment;I)V

    .line 184
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment$2;->this$0:Lcom/shenma/tvlauncher/fragment/TopicFragment;

    invoke-static {v2}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->-$$Nest$fgettvs(Lcom/shenma/tvlauncher/fragment/TopicFragment;)[Landroid/widget/TextView;

    move-result-object v2

    const/4 v4, 0x2

    aget-object v2, v2, v4

    iget-object v5, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment$2;->this$0:Lcom/shenma/tvlauncher/fragment/TopicFragment;

    invoke-static {v5}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->-$$Nest$fgetdata(Lcom/shenma/tvlauncher/fragment/TopicFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shenma/tvlauncher/domain/TopicInfo;

    invoke-virtual {v5}, Lcom/shenma/tvlauncher/domain/TopicInfo;->getZtname()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment$2;->this$0:Lcom/shenma/tvlauncher/fragment/TopicFragment;

    invoke-static {v2}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->-$$Nest$fgettvs(Lcom/shenma/tvlauncher/fragment/TopicFragment;)[Landroid/widget/TextView;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 186
    :cond_2
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment$2;->this$0:Lcom/shenma/tvlauncher/fragment/TopicFragment;

    invoke-static {v2}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->-$$Nest$fgetdata(Lcom/shenma/tvlauncher/fragment/TopicFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/domain/TopicInfo;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/domain/TopicInfo;->getTjwei()Ljava/lang/String;

    move-result-object v2

    const-string v4, "4"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 187
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment$2;->this$0:Lcom/shenma/tvlauncher/fragment/TopicFragment;

    invoke-static {v2, v1}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->-$$Nest$fputid4(Lcom/shenma/tvlauncher/fragment/TopicFragment;I)V

    .line 188
    const/4 v0, 0x3

    .line 189
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment$2;->this$0:Lcom/shenma/tvlauncher/fragment/TopicFragment;

    invoke-static {v2}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->-$$Nest$fgettvs(Lcom/shenma/tvlauncher/fragment/TopicFragment;)[Landroid/widget/TextView;

    move-result-object v2

    const/4 v4, 0x3

    aget-object v2, v2, v4

    iget-object v5, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment$2;->this$0:Lcom/shenma/tvlauncher/fragment/TopicFragment;

    invoke-static {v5}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->-$$Nest$fgetdata(Lcom/shenma/tvlauncher/fragment/TopicFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shenma/tvlauncher/domain/TopicInfo;

    invoke-virtual {v5}, Lcom/shenma/tvlauncher/domain/TopicInfo;->getZtname()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment$2;->this$0:Lcom/shenma/tvlauncher/fragment/TopicFragment;

    invoke-static {v2}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->-$$Nest$fgettvs(Lcom/shenma/tvlauncher/fragment/TopicFragment;)[Landroid/widget/TextView;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 191
    :cond_3
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment$2;->this$0:Lcom/shenma/tvlauncher/fragment/TopicFragment;

    invoke-static {v2}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->-$$Nest$fgetdata(Lcom/shenma/tvlauncher/fragment/TopicFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/domain/TopicInfo;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/domain/TopicInfo;->getTjwei()Ljava/lang/String;

    move-result-object v2

    const-string v4, "5"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 192
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment$2;->this$0:Lcom/shenma/tvlauncher/fragment/TopicFragment;

    invoke-static {v2, v1}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->-$$Nest$fputid5(Lcom/shenma/tvlauncher/fragment/TopicFragment;I)V

    .line 193
    const/4 v0, 0x4

    .line 194
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment$2;->this$0:Lcom/shenma/tvlauncher/fragment/TopicFragment;

    invoke-static {v2}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->-$$Nest$fgettvs(Lcom/shenma/tvlauncher/fragment/TopicFragment;)[Landroid/widget/TextView;

    move-result-object v2

    const/4 v4, 0x4

    aget-object v2, v2, v4

    iget-object v5, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment$2;->this$0:Lcom/shenma/tvlauncher/fragment/TopicFragment;

    invoke-static {v5}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->-$$Nest$fgetdata(Lcom/shenma/tvlauncher/fragment/TopicFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shenma/tvlauncher/domain/TopicInfo;

    invoke-virtual {v5}, Lcom/shenma/tvlauncher/domain/TopicInfo;->getZtname()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment$2;->this$0:Lcom/shenma/tvlauncher/fragment/TopicFragment;

    invoke-static {v2}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->-$$Nest$fgettvs(Lcom/shenma/tvlauncher/fragment/TopicFragment;)[Landroid/widget/TextView;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 196
    :cond_4
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment$2;->this$0:Lcom/shenma/tvlauncher/fragment/TopicFragment;

    invoke-static {v2}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->-$$Nest$fgetdata(Lcom/shenma/tvlauncher/fragment/TopicFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/domain/TopicInfo;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/domain/TopicInfo;->getTjwei()Ljava/lang/String;

    move-result-object v2

    const-string v4, "6"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 197
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment$2;->this$0:Lcom/shenma/tvlauncher/fragment/TopicFragment;

    invoke-static {v2, v1}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->-$$Nest$fputid6(Lcom/shenma/tvlauncher/fragment/TopicFragment;I)V

    .line 198
    const/4 v0, 0x5

    .line 199
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment$2;->this$0:Lcom/shenma/tvlauncher/fragment/TopicFragment;

    invoke-static {v2}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->-$$Nest$fgettvs(Lcom/shenma/tvlauncher/fragment/TopicFragment;)[Landroid/widget/TextView;

    move-result-object v2

    const/4 v4, 0x5

    aget-object v2, v2, v4

    iget-object v5, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment$2;->this$0:Lcom/shenma/tvlauncher/fragment/TopicFragment;

    invoke-static {v5}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->-$$Nest$fgetdata(Lcom/shenma/tvlauncher/fragment/TopicFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shenma/tvlauncher/domain/TopicInfo;

    invoke-virtual {v5}, Lcom/shenma/tvlauncher/domain/TopicInfo;->getZtname()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment$2;->this$0:Lcom/shenma/tvlauncher/fragment/TopicFragment;

    invoke-static {v2}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->-$$Nest$fgettvs(Lcom/shenma/tvlauncher/fragment/TopicFragment;)[Landroid/widget/TextView;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 202
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment$2;->this$0:Lcom/shenma/tvlauncher/fragment/TopicFragment;

    invoke-static {v2}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->-$$Nest$fgetdata(Lcom/shenma/tvlauncher/fragment/TopicFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/domain/TopicInfo;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/domain/TopicInfo;->getSmallpic()Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, "paramUrl":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "paramUrl="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "joychang"

    invoke-static {v4, v3}, Lcom/shenma/tvlauncher/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    if-eqz v2, :cond_6

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 211
    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/TopicFragment$2;->this$0:Lcom/shenma/tvlauncher/fragment/TopicFragment;

    invoke-static {v3, v0, v2}, Lcom/shenma/tvlauncher/fragment/TopicFragment;->-$$Nest$msetTypeImage(Lcom/shenma/tvlauncher/fragment/TopicFragment;ILjava/lang/String;)V

    .line 170
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 214
    .end local v1    # "i":I
    .end local v2    # "paramUrl":Ljava/lang/String;
    :cond_7
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 163
    check-cast p1, Lcom/shenma/tvlauncher/domain/Topic;

    invoke-virtual {p0, p1}, Lcom/shenma/tvlauncher/fragment/TopicFragment$2;->onResponse(Lcom/shenma/tvlauncher/domain/Topic;)V

    return-void
.end method
