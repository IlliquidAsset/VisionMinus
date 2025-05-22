.class public Lcom/mob/elp/PushMessage;
.super Ljava/lang/Object;
.source "PushMessage.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/elp/PushMessage$Unfold;,
        Lcom/mob/elp/PushMessage$ClickAction;
    }
.end annotation


# instance fields
.field public clickAction:Lcom/mob/elp/PushMessage$ClickAction;

.field public content:Ljava/lang/String;

.field public extras:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public title:Ljava/lang/String;

.field public type:I

.field public unfold:Lcom/mob/elp/PushMessage$Unfold;

.field public workId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkInt(Ljava/util/HashMap;Ljava/lang/String;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 3
    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 4
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method private static checkList(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 3
    instance-of p1, p0, Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 4
    check-cast p0, Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 11
    :catchall_0
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method private static checkMap(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 3
    instance-of p1, p0, Ljava/util/HashMap;

    if-eqz p1, :cond_0

    .line 4
    check-cast p0, Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 11
    :catchall_0
    :cond_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0
.end method

.method private static checkString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 3
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 4
    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static createPushMessage(Ljava/lang/String;Ljava/lang/String;)Lcom/mob/elp/PushMessage;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    .line 3
    new-instance v0, Lcom/mob/elp/PushMessage;

    invoke-direct {v0}, Lcom/mob/elp/PushMessage;-><init>()V

    .line 4
    iput-object p1, v0, Lcom/mob/elp/PushMessage;->workId:Ljava/lang/String;

    const-string p1, "title"

    .line 5
    invoke-static {p0, p1}, Lcom/mob/elp/PushMessage;->checkString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/mob/elp/PushMessage;->title:Ljava/lang/String;

    const-string p1, "content"

    .line 6
    invoke-static {p0, p1}, Lcom/mob/elp/PushMessage;->checkString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/mob/elp/PushMessage;->content:Ljava/lang/String;

    .line 7
    iget-object p1, v0, Lcom/mob/elp/PushMessage;->title:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/mob/elp/PushMessage;->title:Ljava/lang/String;

    :cond_0
    const-string p1, "type"

    const/4 v1, 0x0

    .line 11
    invoke-static {p0, p1, v1}, Lcom/mob/elp/PushMessage;->checkInt(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result p1

    iput p1, v0, Lcom/mob/elp/PushMessage;->type:I

    const-string p1, "extras"

    .line 13
    invoke-static {p0, p1}, Lcom/mob/elp/PushMessage;->checkMap(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, v0, Lcom/mob/elp/PushMessage;->extras:Ljava/util/HashMap;

    .line 15
    new-instance p1, Lcom/mob/elp/PushMessage$ClickAction;

    invoke-direct {p1}, Lcom/mob/elp/PushMessage$ClickAction;-><init>()V

    iput-object p1, v0, Lcom/mob/elp/PushMessage;->clickAction:Lcom/mob/elp/PushMessage$ClickAction;

    const-string p1, "clickAction"

    .line 16
    invoke-static {p0, p1}, Lcom/mob/elp/PushMessage;->checkMap(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    .line 17
    iget-object v2, v0, Lcom/mob/elp/PushMessage;->clickAction:Lcom/mob/elp/PushMessage$ClickAction;

    const-string v3, "action"

    invoke-static {p1, v3, v1}, Lcom/mob/elp/PushMessage;->checkInt(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/mob/elp/PushMessage$ClickAction;->action:I

    .line 18
    iget-object v2, v0, Lcom/mob/elp/PushMessage;->clickAction:Lcom/mob/elp/PushMessage$ClickAction;

    const-string v3, "url"

    invoke-static {p1, v3}, Lcom/mob/elp/PushMessage;->checkString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/mob/elp/PushMessage$ClickAction;->url:Ljava/lang/String;

    .line 19
    iget-object v2, v0, Lcom/mob/elp/PushMessage;->clickAction:Lcom/mob/elp/PushMessage$ClickAction;

    const-string v3, "scheme"

    invoke-static {p1, v3}, Lcom/mob/elp/PushMessage;->checkString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/mob/elp/PushMessage$ClickAction;->scheme:Ljava/lang/String;

    .line 21
    new-instance p1, Lcom/mob/elp/PushMessage$Unfold;

    invoke-direct {p1}, Lcom/mob/elp/PushMessage$Unfold;-><init>()V

    iput-object p1, v0, Lcom/mob/elp/PushMessage;->unfold:Lcom/mob/elp/PushMessage$Unfold;

    const-string p1, "unfold"

    .line 22
    invoke-static {p0, p1}, Lcom/mob/elp/PushMessage;->checkMap(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    .line 23
    iget-object p1, v0, Lcom/mob/elp/PushMessage;->unfold:Lcom/mob/elp/PushMessage$Unfold;

    const-string v2, "location"

    invoke-static {p0, v2, v1}, Lcom/mob/elp/PushMessage;->checkInt(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Lcom/mob/elp/PushMessage$Unfold;->location:I

    .line 24
    iget-object p1, v0, Lcom/mob/elp/PushMessage;->unfold:Lcom/mob/elp/PushMessage$Unfold;

    const-string v2, "showType"

    invoke-static {p0, v2, v1}, Lcom/mob/elp/PushMessage;->checkInt(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Lcom/mob/elp/PushMessage$Unfold;->showType:I

    .line 26
    iget-object p1, v0, Lcom/mob/elp/PushMessage;->unfold:Lcom/mob/elp/PushMessage$Unfold;

    iget p1, p1, Lcom/mob/elp/PushMessage$Unfold;->showType:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const-string p1, "window"

    .line 27
    invoke-static {p0, p1}, Lcom/mob/elp/PushMessage;->checkMap(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    .line 28
    iget-object p1, v0, Lcom/mob/elp/PushMessage;->unfold:Lcom/mob/elp/PushMessage$Unfold;

    const-string v1, "images"

    invoke-static {p0, v1}, Lcom/mob/elp/PushMessage;->checkList(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    iput-object p0, p1, Lcom/mob/elp/PushMessage$Unfold;->images:Ljava/util/ArrayList;

    goto :goto_0

    .line 29
    :cond_1
    iget-object p1, v0, Lcom/mob/elp/PushMessage;->unfold:Lcom/mob/elp/PushMessage$Unfold;

    iget p1, p1, Lcom/mob/elp/PushMessage$Unfold;->showType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    const-string v2, "image"

    if-ne p1, v1, :cond_2

    :try_start_1
    const-string p1, "card"

    .line 30
    invoke-static {p0, p1}, Lcom/mob/elp/PushMessage;->checkMap(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    .line 31
    iget-object p1, v0, Lcom/mob/elp/PushMessage;->unfold:Lcom/mob/elp/PushMessage$Unfold;

    invoke-static {p0, v2}, Lcom/mob/elp/PushMessage;->checkString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/mob/elp/PushMessage$Unfold;->image:Ljava/lang/String;

    goto :goto_0

    .line 32
    :cond_2
    iget-object p1, v0, Lcom/mob/elp/PushMessage;->unfold:Lcom/mob/elp/PushMessage$Unfold;

    iget p1, p1, Lcom/mob/elp/PushMessage$Unfold;->showType:I

    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    const-string p1, "original"

    .line 33
    invoke-static {p0, p1}, Lcom/mob/elp/PushMessage;->checkMap(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    .line 34
    iget-object p1, v0, Lcom/mob/elp/PushMessage;->unfold:Lcom/mob/elp/PushMessage$Unfold;

    invoke-static {p0, v2}, Lcom/mob/elp/PushMessage;->checkString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/mob/elp/PushMessage$Unfold;->image:Ljava/lang/String;

    goto :goto_0

    .line 35
    :cond_3
    iget-object p1, v0, Lcom/mob/elp/PushMessage;->unfold:Lcom/mob/elp/PushMessage$Unfold;

    iget p1, p1, Lcom/mob/elp/PushMessage$Unfold;->showType:I

    const/4 v1, 0x4

    if-ne p1, v1, :cond_4

    const-string p1, "banner"

    .line 36
    invoke-static {p0, p1}, Lcom/mob/elp/PushMessage;->checkMap(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    .line 37
    iget-object p1, v0, Lcom/mob/elp/PushMessage;->unfold:Lcom/mob/elp/PushMessage$Unfold;

    invoke-static {p0, v2}, Lcom/mob/elp/PushMessage;->checkString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/mob/elp/PushMessage$Unfold;->image:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :goto_0
    return-object v0

    :catchall_0
    move-exception p0

    .line 41
    invoke-static {}, Lcom/mob/elp/d/d;->a()Lcom/mob/elp/d/d;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/mob/elp/d/d;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method
