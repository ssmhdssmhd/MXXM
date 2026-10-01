.class public Lnet/tsz/afinal/FinalActivity;
.super Landroid/app/Activity;
.source "FinalActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 13

    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 59
    .local v0, "fields":[Ljava/lang/reflect/Field;
    if-eqz v0, :cond_6

    array-length v1, v0

    if-lez v1, :cond_6

    .line 60
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    goto :goto_2

    :cond_0
    aget-object v3, v0, v2

    .line 61
    .local v3, "field":Ljava/lang/reflect/Field;
    const-class v4, Lnet/tsz/afinal/annotation/view/ViewInject;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lnet/tsz/afinal/annotation/view/ViewInject;

    .line 62
    .local v4, "viewInject":Lnet/tsz/afinal/annotation/view/ViewInject;
    if-eqz v4, :cond_5

    .line 63
    invoke-interface {v4}, Lnet/tsz/afinal/annotation/view/ViewInject;->id()I

    move-result v5

    .line 65
    .local v5, "viewId":I
    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 66
    invoke-virtual {p0, v5}, Lnet/tsz/afinal/FinalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v3, p0, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 67
    :catch_0
    move-exception v6

    .line 68
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 71
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-interface {v4}, Lnet/tsz/afinal/annotation/view/ViewInject;->click()Ljava/lang/String;

    move-result-object v6

    .line 72
    .local v6, "clickMethod":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 73
    invoke-direct {p0, v3, v6}, Lnet/tsz/afinal/FinalActivity;->setViewClickListener(Ljava/lang/reflect/Field;Ljava/lang/String;)V

    .line 75
    :cond_1
    invoke-interface {v4}, Lnet/tsz/afinal/annotation/view/ViewInject;->longClick()Ljava/lang/String;

    move-result-object v7

    .line 76
    .local v7, "longClickMethod":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 77
    invoke-direct {p0, v3, v7}, Lnet/tsz/afinal/FinalActivity;->setViewLongClickListener(Ljava/lang/reflect/Field;Ljava/lang/String;)V

    .line 79
    :cond_2
    invoke-interface {v4}, Lnet/tsz/afinal/annotation/view/ViewInject;->itemClick()Ljava/lang/String;

    move-result-object v8

    .line 80
    .local v8, "itemClickMethod":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 81
    invoke-direct {p0, v3, v8}, Lnet/tsz/afinal/FinalActivity;->setItemClickListener(Ljava/lang/reflect/Field;Ljava/lang/String;)V

    .line 83
    :cond_3
    invoke-interface {v4}, Lnet/tsz/afinal/annotation/view/ViewInject;->itemLongClick()Ljava/lang/String;

    move-result-object v9

    .line 84
    .local v9, "itemLongClickMethod":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 85
    invoke-direct {p0, v3, v9}, Lnet/tsz/afinal/FinalActivity;->setItemLongClickListener(Ljava/lang/reflect/Field;Ljava/lang/String;)V

    .line 87
    :cond_4
    invoke-interface {v4}, Lnet/tsz/afinal/annotation/view/ViewInject;->select()Lnet/tsz/afinal/annotation/view/Select;

    move-result-object v10

    .line 88
    .local v10, "select":Lnet/tsz/afinal/annotation/view/Select;
    invoke-interface {v10}, Lnet/tsz/afinal/annotation/view/Select;->selected()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 89
    invoke-interface {v10}, Lnet/tsz/afinal/annotation/view/Select;->selected()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10}, Lnet/tsz/afinal/annotation/view/Select;->noSelected()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v3, v11, v12}, Lnet/tsz/afinal/FinalActivity;->setViewSelectListener(Ljava/lang/reflect/Field;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "viewInject":Lnet/tsz/afinal/annotation/view/ViewInject;
    .end local v5    # "viewId":I
    .end local v6    # "clickMethod":Ljava/lang/String;
    .end local v7    # "longClickMethod":Ljava/lang/String;
    .end local v8    # "itemClickMethod":Ljava/lang/String;
    .end local v9    # "itemLongClickMethod":Ljava/lang/String;
    .end local v10    # "select":Lnet/tsz/afinal/annotation/view/Select;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 94
    :cond_6
    :goto_2
    return-void
.end method

.method private setItemClickListener(Ljava/lang/reflect/Field;Ljava/lang/String;)V
    .locals 3
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "itemClickMethod"    # Ljava/lang/String;

    .line 121
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 122
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Landroid/widget/AbsListView;

    if-eqz v1, :cond_0

    .line 123
    move-object v1, v0

    check-cast v1, Landroid/widget/AbsListView;

    new-instance v2, Lnet/tsz/afinal/annotation/view/EventListener;

    invoke-direct {v2, p0}, Lnet/tsz/afinal/annotation/view/EventListener;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p2}, Lnet/tsz/afinal/annotation/view/EventListener;->itemClick(Ljava/lang/String;)Lnet/tsz/afinal/annotation/view/EventListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 125
    .end local v0    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 128
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method private setItemLongClickListener(Ljava/lang/reflect/Field;Ljava/lang/String;)V
    .locals 3
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "itemClickMethod"    # Ljava/lang/String;

    .line 132
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 133
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Landroid/widget/AbsListView;

    if-eqz v1, :cond_0

    .line 134
    move-object v1, v0

    check-cast v1, Landroid/widget/AbsListView;

    new-instance v2, Lnet/tsz/afinal/annotation/view/EventListener;

    invoke-direct {v2, p0}, Lnet/tsz/afinal/annotation/view/EventListener;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p2}, Lnet/tsz/afinal/annotation/view/EventListener;->itemLongClick(Ljava/lang/String;)Lnet/tsz/afinal/annotation/view/EventListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 136
    .end local v0    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 139
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method private setViewClickListener(Ljava/lang/reflect/Field;Ljava/lang/String;)V
    .locals 3
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "clickMethod"    # Ljava/lang/String;

    .line 99
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 100
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 101
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    new-instance v2, Lnet/tsz/afinal/annotation/view/EventListener;

    invoke-direct {v2, p0}, Lnet/tsz/afinal/annotation/view/EventListener;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p2}, Lnet/tsz/afinal/annotation/view/EventListener;->click(Ljava/lang/String;)Lnet/tsz/afinal/annotation/view/EventListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 103
    .end local v0    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 106
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method private setViewLongClickListener(Ljava/lang/reflect/Field;Ljava/lang/String;)V
    .locals 3
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "clickMethod"    # Ljava/lang/String;

    .line 110
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 111
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 112
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    new-instance v2, Lnet/tsz/afinal/annotation/view/EventListener;

    invoke-direct {v2, p0}, Lnet/tsz/afinal/annotation/view/EventListener;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p2}, Lnet/tsz/afinal/annotation/view/EventListener;->longClick(Ljava/lang/String;)Lnet/tsz/afinal/annotation/view/EventListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 114
    .end local v0    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 117
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method private setViewSelectListener(Ljava/lang/reflect/Field;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "select"    # Ljava/lang/String;
    .param p3, "noSelect"    # Ljava/lang/String;

    .line 143
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 144
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 145
    move-object v1, v0

    check-cast v1, Landroid/widget/AbsListView;

    new-instance v2, Lnet/tsz/afinal/annotation/view/EventListener;

    invoke-direct {v2, p0}, Lnet/tsz/afinal/annotation/view/EventListener;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p2}, Lnet/tsz/afinal/annotation/view/EventListener;->select(Ljava/lang/String;)Lnet/tsz/afinal/annotation/view/EventListener;

    move-result-object v2

    invoke-virtual {v2, p3}, Lnet/tsz/afinal/annotation/view/EventListener;->noSelect(Ljava/lang/String;)Lnet/tsz/afinal/annotation/view/EventListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 147
    .end local v0    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 150
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    return-void
.end method

.method public setContentView(I)V
    .locals 0
    .param p1, "layoutResID"    # I

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 39
    invoke-direct {p0}, Lnet/tsz/afinal/FinalActivity;->initView()V

    .line 40
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 52
    invoke-direct {p0}, Lnet/tsz/afinal/FinalActivity;->initView()V

    .line 53
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 44
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    invoke-direct {p0}, Lnet/tsz/afinal/FinalActivity;->initView()V

    .line 46
    return-void
.end method
