.class Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment$4;
.super Ljava/lang/Object;
.source "Home2RecommentThemeEightFrgment.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;->createMyReqSuccessListener()Lcom/android/volley/Response$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Lcom/shenma/tvlauncher/domain/Recommend;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 264
    iput-object p1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/shenma/tvlauncher/domain/Recommend;)V
    .locals 13
    .param p1, "response"    # Lcom/shenma/tvlauncher/domain/Recommend;

    .line 267
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;

    invoke-virtual {p1}, Lcom/shenma/tvlauncher/domain/Recommend;->getData()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;->data:Ljava/util/List;

    .line 268
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;

    iget-object v0, v0, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;->data:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;

    iget-object v0, v0, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;

    invoke-static {v0}, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;->-$$Nest$fgettitle1(Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;

    iget-object v1, v1, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;->data:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/RecommendInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/RecommendInfo;->getTjinfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;

    invoke-static {v0}, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;->-$$Nest$fgettitle2(Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;

    iget-object v1, v1, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;->data:Ljava/util/List;

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/RecommendInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/RecommendInfo;->getTjinfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;

    invoke-static {v0}, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;->-$$Nest$fgettitle3(Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;

    iget-object v1, v1, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;->data:Ljava/util/List;

    const/4 v4, 0x2

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/RecommendInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/RecommendInfo;->getTjinfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;

    invoke-static {v0}, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;->-$$Nest$fgettitle4(Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;

    iget-object v1, v1, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;->data:Ljava/util/List;

    const/4 v5, 0x3

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/RecommendInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/RecommendInfo;->getTjinfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;

    invoke-static {v0}, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;->-$$Nest$fgettitle5(Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;

    iget-object v1, v1, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;->data:Ljava/util/List;

    const/4 v6, 0x4

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/RecommendInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/RecommendInfo;->getTjinfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;

    invoke-static {v0}, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;->-$$Nest$fgettitle6(Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;

    iget-object v1, v1, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;->data:Ljava/util/List;

    const/4 v7, 0x5

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/RecommendInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/RecommendInfo;->getTjinfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;

    invoke-static {v0}, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;->-$$Nest$fgettitle7(Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;

    iget-object v1, v1, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;->data:Ljava/util/List;

    const/4 v8, 0x6

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/RecommendInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/RecommendInfo;->getTjinfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;

    invoke-static {v0}, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;->-$$Nest$fgettitle8(Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;

    iget-object v1, v1, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;->data:Ljava/util/List;

    const/4 v9, 0x7

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/RecommendInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/RecommendInfo;->getTjinfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;

    invoke-static {v0}, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;->-$$Nest$fgettitle9(Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;

    iget-object v1, v1, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;->data:Ljava/util/List;

    const/16 v10, 0x8

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/RecommendInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/RecommendInfo;->getTjinfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;

    invoke-static {v0}, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;->-$$Nest$fgettitle10(Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;

    iget-object v1, v1, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;->data:Ljava/util/List;

    const/16 v11, 0x9

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/RecommendInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/RecommendInfo;->getTjinfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;

    invoke-static {v0}, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;->-$$Nest$fgettitle11(Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;

    iget-object v1, v1, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;->data:Ljava/util/List;

    const/16 v12, 0xa

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/RecommendInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/RecommendInfo;->getTjinfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;

    iget-object v1, v1, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;->data:Ljava/util/List;

    .line 284
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/RecommendInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/RecommendInfo;->getTjpicur()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    .line 285
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->dontAnimate()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    .line 286
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;

    invoke-static {v1}, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;->-$$Nest$fgetimg1(Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;)Landroid/widget/ImageView;

    move-result-object v1

    .line 287
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 288
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;

    iget-object v1, v1, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;->data:Ljava/util/List;

    .line 289
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/RecommendInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/RecommendInfo;->getTjpicur()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    .line 290
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->dontAnimate()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    .line 291
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;

    invoke-static {v1}, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;->-$$Nest$fgetimg2(Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;)Landroid/widget/ImageView;

    move-result-object v1

    .line 292
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 293
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;

    iget-object v1, v1, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;->data:Ljava/util/List;

    .line 294
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/RecommendInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/RecommendInfo;->getTjpicur()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    .line 295
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->dontAnimate()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    .line 296
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;

    invoke-static {v1}, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;->-$$Nest$fgetimg3(Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;)Landroid/widget/ImageView;

    move-result-object v1

    .line 297
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 298
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;

    iget-object v1, v1, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;->data:Ljava/util/List;

    .line 299
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/RecommendInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/RecommendInfo;->getTjpicur()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    .line 300
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->dontAnimate()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    .line 301
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;

    invoke-static {v1}, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;->-$$Nest$fgetimg4(Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;)Landroid/widget/ImageView;

    move-result-object v1

    .line 302
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 303
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;

    iget-object v1, v1, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;->data:Ljava/util/List;

    .line 304
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/RecommendInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/RecommendInfo;->getTjpicur()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    .line 305
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->dontAnimate()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    .line 306
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;

    invoke-static {v1}, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;->-$$Nest$fgetimg5(Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;)Landroid/widget/ImageView;

    move-result-object v1

    .line 307
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 308
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;

    iget-object v1, v1, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;->data:Ljava/util/List;

    .line 309
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/RecommendInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/RecommendInfo;->getTjpicur()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    .line 310
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->dontAnimate()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    .line 311
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;

    invoke-static {v1}, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;->-$$Nest$fgetimg6(Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;)Landroid/widget/ImageView;

    move-result-object v1

    .line 312
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 313
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;

    iget-object v1, v1, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;->data:Ljava/util/List;

    .line 314
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/RecommendInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/RecommendInfo;->getTjpicur()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    .line 315
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->dontAnimate()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    .line 316
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;

    invoke-static {v1}, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;->-$$Nest$fgetimg7(Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;)Landroid/widget/ImageView;

    move-result-object v1

    .line 317
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 318
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;

    iget-object v1, v1, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;->data:Ljava/util/List;

    .line 319
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/RecommendInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/RecommendInfo;->getTjpicur()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    .line 320
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->dontAnimate()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    .line 321
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;

    invoke-static {v1}, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;->-$$Nest$fgetimg8(Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;)Landroid/widget/ImageView;

    move-result-object v1

    .line 322
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 323
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;

    iget-object v1, v1, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;->data:Ljava/util/List;

    .line 324
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/RecommendInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/RecommendInfo;->getTjpicur()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    .line 325
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->dontAnimate()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    .line 326
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;

    invoke-static {v1}, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;->-$$Nest$fgetimg9(Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;)Landroid/widget/ImageView;

    move-result-object v1

    .line 327
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 328
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;

    iget-object v1, v1, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;->data:Ljava/util/List;

    .line 329
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/RecommendInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/RecommendInfo;->getTjpicur()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    .line 330
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->dontAnimate()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    .line 331
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;

    invoke-static {v1}, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;->-$$Nest$fgetimg10(Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;)Landroid/widget/ImageView;

    move-result-object v1

    .line 332
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 333
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;

    invoke-virtual {v0}, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;

    iget-object v1, v1, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;->data:Ljava/util/List;

    .line 334
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/RecommendInfo;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/RecommendInfo;->getTjpicur()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    .line 335
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->dontAnimate()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    .line 336
    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment$4;->this$0:Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;

    invoke-static {v1}, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;->-$$Nest$fgetimg11(Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment;)Landroid/widget/ImageView;

    move-result-object v1

    .line 337
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 338
    return-void

    .line 269
    :cond_1
    :goto_0
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

    .line 264
    check-cast p1, Lcom/shenma/tvlauncher/domain/Recommend;

    invoke-virtual {p0, p1}, Lcom/shenma/tvlauncher/fragment/Home2RecommentThemeEightFrgment$4;->onResponse(Lcom/shenma/tvlauncher/domain/Recommend;)V

    return-void
.end method
