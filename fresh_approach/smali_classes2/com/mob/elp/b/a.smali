.class public Lcom/mob/elp/b/a;
.super Ljava/lang/Object;
.source "InAppMessage.java"


# static fields
.field private static b:Lcom/mob/elp/b/a;


# instance fields
.field private a:Lcom/mob/elp/b/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/mob/elp/b/a;)Lcom/mob/elp/b/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mob/elp/b/a;->a:Lcom/mob/elp/b/b;

    return-object p0
.end method

.method static synthetic a(Lcom/mob/elp/b/a;Lcom/mob/elp/b/b;)Lcom/mob/elp/b/b;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mob/elp/b/a;->a:Lcom/mob/elp/b/b;

    return-object p1
.end method

.method public static b()Lcom/mob/elp/b/a;
    .locals 2

    .line 1
    sget-object v0, Lcom/mob/elp/b/a;->b:Lcom/mob/elp/b/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/mob/elp/b/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/mob/elp/b/a;->b:Lcom/mob/elp/b/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/mob/elp/b/a;

    invoke-direct {v1}, Lcom/mob/elp/b/a;-><init>()V

    sput-object v1, Lcom/mob/elp/b/a;->b:Lcom/mob/elp/b/a;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lcom/mob/elp/b/a;->b:Lcom/mob/elp/b/a;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/mob/elp/b/b;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/mob/elp/b/a;->a:Lcom/mob/elp/b/b;

    return-object v0
.end method

.method public a(Landroid/app/Activity;Lcom/mob/elp/PushMessage;Ljava/lang/String;)V
    .locals 8

    .line 4
    :try_start_0
    new-instance v0, Lcom/mob/elp/d/e;

    invoke-direct {v0}, Lcom/mob/elp/d/e;-><init>()V

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->getScreenWidth(Landroid/content/Context;)I

    move-result v2

    .line 9
    iget-object v3, p2, Lcom/mob/elp/PushMessage;->unfold:Lcom/mob/elp/PushMessage$Unfold;

    iget v3, v3, Lcom/mob/elp/PushMessage$Unfold;->showType:I

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 10
    iget-object v3, p2, Lcom/mob/elp/PushMessage;->unfold:Lcom/mob/elp/PushMessage$Unfold;

    iget-object v3, v3, Lcom/mob/elp/PushMessage$Unfold;->images:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/16 v3, 0x36

    .line 11
    invoke-static {p1, v3}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v5, v2, 0x4

    const/16 v2, 0x3c

    .line 12
    invoke-static {p1, v2}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v2

    goto :goto_1

    .line 13
    :cond_0
    iget-object v3, p2, Lcom/mob/elp/PushMessage;->unfold:Lcom/mob/elp/PushMessage$Unfold;

    iget v3, v3, Lcom/mob/elp/PushMessage$Unfold;->showType:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_1

    .line 14
    iget-object v3, p2, Lcom/mob/elp/PushMessage;->unfold:Lcom/mob/elp/PushMessage$Unfold;

    iget-object v3, v3, Lcom/mob/elp/PushMessage$Unfold;->image:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v3, 0x5a

    .line 15
    invoke-static {p1, v3}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v5

    const/16 v3, 0x2a

    .line 16
    invoke-static {p1, v3}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v3

    :goto_0
    sub-int/2addr v2, v3

    move v7, v5

    move v5, v2

    move v2, v7

    goto :goto_1

    .line 17
    :cond_1
    iget-object v3, p2, Lcom/mob/elp/PushMessage;->unfold:Lcom/mob/elp/PushMessage$Unfold;

    iget v3, v3, Lcom/mob/elp/PushMessage$Unfold;->showType:I

    const/4 v6, 0x3

    if-ne v3, v6, :cond_2

    .line 18
    iget-object v2, p2, Lcom/mob/elp/PushMessage;->unfold:Lcom/mob/elp/PushMessage$Unfold;

    iget-object v2, v2, Lcom/mob/elp/PushMessage$Unfold;->image:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x2d

    .line 19
    invoke-static {p1, v2}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v5

    move v2, v5

    goto :goto_1

    .line 21
    :cond_2
    iget-object v3, p2, Lcom/mob/elp/PushMessage;->unfold:Lcom/mob/elp/PushMessage$Unfold;

    iget v3, v3, Lcom/mob/elp/PushMessage$Unfold;->showType:I

    if-ne v3, v4, :cond_3

    .line 22
    iget-object v3, p2, Lcom/mob/elp/PushMessage;->unfold:Lcom/mob/elp/PushMessage$Unfold;

    iget-object v3, v3, Lcom/mob/elp/PushMessage$Unfold;->image:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v3, 0x64

    .line 23
    invoke-static {p1, v3}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v5

    const/16 v3, 0xc

    .line 24
    invoke-static {p1, v3}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v3

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    .line 26
    :goto_1
    new-instance v3, Lcom/mob/elp/b/a$a;

    invoke-direct {v3, p0, p2, p3, p1}, Lcom/mob/elp/b/a$a;-><init>(Lcom/mob/elp/b/a;Lcom/mob/elp/PushMessage;Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v5, v2, v3}, Lcom/mob/elp/d/e;->a(Ljava/util/ArrayList;IILcom/mob/elp/d/e$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 55
    invoke-static {}, Lcom/mob/elp/d/d;->a()Lcom/mob/elp/d/d;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/elp/d/d;->a(Ljava/lang/Throwable;)V

    .line 56
    invoke-static {}, Lcom/mob/elp/a/b;->b()Lcom/mob/elp/a/b;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 57
    invoke-static {p3}, Lcom/mob/mcl/MCLSDK;->deleteMsg(Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_4
    const/4 p1, 0x0

    throw p1
.end method
