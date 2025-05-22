.class public Lcom/mob/elp/b/b;
.super Landroid/app/Dialog;
.source "MessageDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/mob/elp/PushMessage;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/mob/elp/PushMessage;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mob/elp/PushMessage;",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ELPDialogStyle"

    .line 1
    invoke-static {p1, v0}, Lcom/mob/tools/utils/ResHelper;->getStyleRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2
    iput-object p2, p0, Lcom/mob/elp/b/b;->a:Lcom/mob/elp/PushMessage;

    .line 3
    iput-object p3, p0, Lcom/mob/elp/b/b;->h:Ljava/util/ArrayList;

    .line 4
    invoke-direct {p0, p1}, Lcom/mob/elp/b/b;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/mob/elp/PushMessage;Ljava/util/ArrayList;)Lcom/mob/elp/b/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mob/elp/PushMessage;",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/mob/elp/b/b;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/mob/elp/b/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/mob/elp/b/b;-><init>(Landroid/content/Context;Lcom/mob/elp/PushMessage;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 8

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/mob/elp/b/b;->a:Lcom/mob/elp/PushMessage;

    if-eqz v0, :cond_8

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/mob/elp/b/b;->a:Lcom/mob/elp/PushMessage;

    iget-object v1, v1, Lcom/mob/elp/PushMessage;->unfold:Lcom/mob/elp/PushMessage$Unfold;

    iget v1, v1, Lcom/mob/elp/PushMessage$Unfold;->showType:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-ne v1, v4, :cond_0

    const-string v1, "elp_in_app_msg_window"

    .line 6
    invoke-static {p1, v1}, Lcom/mob/tools/utils/ResHelper;->getLayoutRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    move-object v6, v0

    goto :goto_1

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/mob/elp/b/b;->a:Lcom/mob/elp/PushMessage;

    iget-object v1, v1, Lcom/mob/elp/PushMessage;->unfold:Lcom/mob/elp/PushMessage$Unfold;

    iget v1, v1, Lcom/mob/elp/PushMessage$Unfold;->showType:I

    if-ne v1, v3, :cond_1

    const-string v1, "elp_in_app_msg_card"

    .line 8
    invoke-static {p1, v1}, Lcom/mob/tools/utils/ResHelper;->getLayoutRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/mob/elp/b/b;->a:Lcom/mob/elp/PushMessage;

    iget-object v1, v1, Lcom/mob/elp/PushMessage;->unfold:Lcom/mob/elp/PushMessage$Unfold;

    iget v1, v1, Lcom/mob/elp/PushMessage$Unfold;->showType:I

    if-ne v1, v2, :cond_2

    const-string v1, "elp_in_app_msg_nativ"

    .line 10
    invoke-static {p1, v1}, Lcom/mob/tools/utils/ResHelper;->getLayoutRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 11
    :cond_2
    iget-object v1, p0, Lcom/mob/elp/b/b;->a:Lcom/mob/elp/PushMessage;

    iget-object v1, v1, Lcom/mob/elp/PushMessage;->unfold:Lcom/mob/elp/PushMessage$Unfold;

    iget v1, v1, Lcom/mob/elp/PushMessage$Unfold;->showType:I

    const/4 v7, 0x4

    if-ne v1, v7, :cond_3

    const-string v1, "elp_in_app_msg_banner"

    .line 12
    invoke-static {p1, v1}, Lcom/mob/tools/utils/ResHelper;->getLayoutRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_3
    :goto_1
    if-nez v6, :cond_4

    return-void

    :cond_4
    const-string v0, "tvTitle"

    .line 17
    invoke-static {p1, v0}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mob/elp/b/b;->b:Landroid/widget/TextView;

    const-string v0, "tvContent"

    .line 18
    invoke-static {p1, v0}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mob/elp/b/b;->c:Landroid/widget/TextView;

    const-string v0, "ivImg"

    .line 19
    invoke-static {p1, v0}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mob/elp/b/b;->d:Landroid/widget/ImageView;

    .line 20
    iget-object v1, p0, Lcom/mob/elp/b/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 21
    iget-object v0, p0, Lcom/mob/elp/b/b;->a:Lcom/mob/elp/PushMessage;

    iget-object v0, v0, Lcom/mob/elp/PushMessage;->unfold:Lcom/mob/elp/PushMessage$Unfold;

    iget v0, v0, Lcom/mob/elp/PushMessage$Unfold;->showType:I

    if-ne v0, v4, :cond_5

    const-string v0, "ivImg2"

    .line 22
    invoke-static {p1, v0}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mob/elp/b/b;->e:Landroid/widget/ImageView;

    const-string v0, "ivImg3"

    .line 23
    invoke-static {p1, v0}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mob/elp/b/b;->f:Landroid/widget/ImageView;

    const-string v0, "ivImg4"

    .line 24
    invoke-static {p1, v0}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mob/elp/b/b;->g:Landroid/widget/ImageView;

    .line 25
    iget-object v0, p0, Lcom/mob/elp/b/b;->e:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mob/elp/b/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 26
    iget-object v0, p0, Lcom/mob/elp/b/b;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mob/elp/b/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 27
    iget-object v0, p0, Lcom/mob/elp/b/b;->g:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mob/elp/b/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 29
    :cond_5
    invoke-virtual {p0, v6}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 30
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 31
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 33
    iget-object v0, p0, Lcom/mob/elp/b/b;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 34
    iget-object v0, p0, Lcom/mob/elp/b/b;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mob/elp/b/b;->a:Lcom/mob/elp/PushMessage;

    iget-object v1, v1, Lcom/mob/elp/PushMessage;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    :cond_6
    iget-object v0, p0, Lcom/mob/elp/b/b;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 37
    iget-object v0, p0, Lcom/mob/elp/b/b;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mob/elp/b/b;->a:Lcom/mob/elp/PushMessage;

    iget-object v1, v1, Lcom/mob/elp/PushMessage;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    const-string v0, "ivClose"

    .line 39
    invoke-static {p1, v0}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "llView"

    .line 40
    invoke-static {p1, v0}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v6, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 43
    invoke-static {}, Lcom/mob/elp/d/d;->a()Lcom/mob/elp/d/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/elp/d/d;->a(Ljava/lang/Throwable;)V

    :cond_8
    :goto_2
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    invoke-static {}, Lcom/mob/elp/a/b;->b()Lcom/mob/elp/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/elp/a/b;->a()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ivClose"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/mob/elp/b/b;->dismiss()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "llView"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/mob/elp/b/b;->dismiss()V

    .line 5
    invoke-static {}, Lcom/mob/elp/a/e;->a()Lcom/mob/elp/a/e;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/elp/b/b;->a:Lcom/mob/elp/PushMessage;

    invoke-virtual {p1, v0, v1}, Lcom/mob/elp/a/e;->a(Landroid/content/Context;Lcom/mob/elp/PushMessage;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public show()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 2
    invoke-static {}, Lcom/mob/elp/a/e;->a()Lcom/mob/elp/a/e;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/elp/b/b;->a:Lcom/mob/elp/PushMessage;

    iget-object v2, v2, Lcom/mob/elp/PushMessage;->workId:Ljava/lang/String;

    const-string v3, "show"

    invoke-virtual {v0, v1, v3, v2}, Lcom/mob/elp/a/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
