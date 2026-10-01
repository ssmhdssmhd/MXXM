.class Lcom/shenma/tvlauncher/fragment/AppFragment$9;
.super Ljava/lang/Object;
.source "AppFragment.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/fragment/AppFragment;->createMyReqSuccessListener()Lcom/android/volley/Response$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Lcom/shenma/tvlauncher/domain/RecApp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/fragment/AppFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/fragment/AppFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 304
    iput-object p1, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$9;->this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/shenma/tvlauncher/domain/RecApp;)V
    .locals 7
    .param p1, "response"    # Lcom/shenma/tvlauncher/domain/RecApp;

    .line 308
    if-eqz p1, :cond_3

    const-string v0, "200"

    invoke-virtual {p1}, Lcom/shenma/tvlauncher/domain/RecApp;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 309
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$9;->this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;

    invoke-virtual {p1}, Lcom/shenma/tvlauncher/domain/RecApp;->getData()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shenma/tvlauncher/fragment/AppFragment;->-$$Nest$fputdata(Lcom/shenma/tvlauncher/fragment/AppFragment;Ljava/util/List;)V

    .line 310
    iget-object v0, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$9;->this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;

    invoke-static {v0}, Lcom/shenma/tvlauncher/fragment/AppFragment;->-$$Nest$fgetdata(Lcom/shenma/tvlauncher/fragment/AppFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/domain/RecAppInfo;

    .line 311
    .local v1, "recAppInfo":Lcom/shenma/tvlauncher/domain/RecAppInfo;
    const-string v2, "1"

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjtype()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 312
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$9;->this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;

    invoke-static {v2}, Lcom/shenma/tvlauncher/fragment/AppFragment;->-$$Nest$fgetbigImageIndexDef(Lcom/shenma/tvlauncher/fragment/AppFragment;)I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_0

    .line 313
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$9;->this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/fragment/AppFragment;->-$$Nest$fputbigImageIndexDef(Lcom/shenma/tvlauncher/fragment/AppFragment;I)V

    .line 314
    :cond_0
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$9;->this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;

    invoke-static {v2}, Lcom/shenma/tvlauncher/fragment/AppFragment;->-$$Nest$fgetmap(Lcom/shenma/tvlauncher/fragment/AppFragment;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$9;->this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;

    invoke-static {v3}, Lcom/shenma/tvlauncher/fragment/AppFragment;->-$$Nest$fgetbigImageIndexDef(Lcom/shenma/tvlauncher/fragment/AppFragment;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$9;->this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;

    invoke-static {v2}, Lcom/shenma/tvlauncher/fragment/AppFragment;->-$$Nest$fgetimageLoader(Lcom/shenma/tvlauncher/fragment/AppFragment;)Lcom/android/volley/toolbox/ImageLoader;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->HEARD_URL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 317
    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjpicur()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$9;->this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;

    iget-object v4, v4, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_typeLogs:[Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$9;->this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;

    invoke-static {v5}, Lcom/shenma/tvlauncher/fragment/AppFragment;->-$$Nest$fgetbigImageIndexDef(Lcom/shenma/tvlauncher/fragment/AppFragment;)I

    move-result v5

    aget-object v4, v4, v5

    sget v5, Lcom/shenma/tvlauncher/R$drawable;->app_iv_1:I

    sget v6, Lcom/shenma/tvlauncher/R$drawable;->app_iv_1:I

    .line 318
    invoke-static {v4, v5, v6}, Lcom/android/volley/toolbox/ImageLoader;->getImageListener(Landroid/widget/ImageView;II)Lcom/android/volley/toolbox/ImageLoader$ImageListener;

    move-result-object v4

    .line 315
    invoke-virtual {v2, v3, v4}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 322
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$9;->this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;

    invoke-static {v2}, Lcom/shenma/tvlauncher/fragment/AppFragment;->-$$Nest$fgetimgurls(Lcom/shenma/tvlauncher/fragment/AppFragment;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$9;->this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;

    invoke-static {v3}, Lcom/shenma/tvlauncher/fragment/AppFragment;->-$$Nest$fgetbigImageIndexDef(Lcom/shenma/tvlauncher/fragment/AppFragment;)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->HEARD_URL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 323
    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjpicur()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 324
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$9;->this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;

    invoke-static {v2}, Lcom/shenma/tvlauncher/fragment/AppFragment;->-$$Nest$fgetbigImageIndexDef(Lcom/shenma/tvlauncher/fragment/AppFragment;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/fragment/AppFragment;->-$$Nest$fputbigImageIndexDef(Lcom/shenma/tvlauncher/fragment/AppFragment;I)V

    goto :goto_1

    .line 326
    :cond_1
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$9;->this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;

    invoke-static {v2}, Lcom/shenma/tvlauncher/fragment/AppFragment;->-$$Nest$fgetsmallImageIndexDef(Lcom/shenma/tvlauncher/fragment/AppFragment;)I

    move-result v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_2

    .line 327
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$9;->this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/fragment/AppFragment;->-$$Nest$fputsmallImageIndexDef(Lcom/shenma/tvlauncher/fragment/AppFragment;I)V

    .line 328
    :cond_2
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$9;->this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;

    invoke-static {v2}, Lcom/shenma/tvlauncher/fragment/AppFragment;->-$$Nest$fgetmap(Lcom/shenma/tvlauncher/fragment/AppFragment;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$9;->this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;

    invoke-static {v3}, Lcom/shenma/tvlauncher/fragment/AppFragment;->-$$Nest$fgetsmallImageIndexDef(Lcom/shenma/tvlauncher/fragment/AppFragment;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$9;->this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;

    invoke-static {v2}, Lcom/shenma/tvlauncher/fragment/AppFragment;->-$$Nest$fgetimageLoader(Lcom/shenma/tvlauncher/fragment/AppFragment;)Lcom/android/volley/toolbox/ImageLoader;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->HEARD_URL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 331
    invoke-virtual {v1}, Lcom/shenma/tvlauncher/domain/RecAppInfo;->getTjpicur()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$9;->this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;

    iget-object v4, v4, Lcom/shenma/tvlauncher/fragment/AppFragment;->app_typeLogs:[Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$9;->this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;

    invoke-static {v5}, Lcom/shenma/tvlauncher/fragment/AppFragment;->-$$Nest$fgetsmallImageIndexDef(Lcom/shenma/tvlauncher/fragment/AppFragment;)I

    move-result v5

    aget-object v4, v4, v5

    sget v5, Lcom/shenma/tvlauncher/R$drawable;->app_iv_2:I

    sget v6, Lcom/shenma/tvlauncher/R$drawable;->app_iv_2:I

    .line 332
    invoke-static {v4, v5, v6}, Lcom/android/volley/toolbox/ImageLoader;->getImageListener(Landroid/widget/ImageView;II)Lcom/android/volley/toolbox/ImageLoader$ImageListener;

    move-result-object v4

    .line 329
    invoke-virtual {v2, v3, v4}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 336
    iget-object v2, p0, Lcom/shenma/tvlauncher/fragment/AppFragment$9;->this$0:Lcom/shenma/tvlauncher/fragment/AppFragment;

    invoke-static {v2}, Lcom/shenma/tvlauncher/fragment/AppFragment;->-$$Nest$fgetsmallImageIndexDef(Lcom/shenma/tvlauncher/fragment/AppFragment;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/fragment/AppFragment;->-$$Nest$fputsmallImageIndexDef(Lcom/shenma/tvlauncher/fragment/AppFragment;I)V

    .line 338
    .end local v1    # "recAppInfo":Lcom/shenma/tvlauncher/domain/RecAppInfo;
    :goto_1
    goto/16 :goto_0

    .line 340
    :cond_3
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

    .line 304
    check-cast p1, Lcom/shenma/tvlauncher/domain/RecApp;

    invoke-virtual {p0, p1}, Lcom/shenma/tvlauncher/fragment/AppFragment$9;->onResponse(Lcom/shenma/tvlauncher/domain/RecApp;)V

    return-void
.end method
