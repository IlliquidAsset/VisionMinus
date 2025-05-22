.class public Lcom/mob/elp/d/f;
.super Ljava/lang/Object;
.source "NotificationColorUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/elp/d/f$b;
    }
.end annotation


# direct methods
.method private static a(Landroid/content/Context;)I
    .locals 5

    const/4 v0, 0x0

    .line 7
    :try_start_0
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Notification Title"

    .line 8
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 10
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    .line 11
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    .line 16
    iget-object v3, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_1

    .line 17
    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :goto_1
    move-object v2, v1

    goto :goto_2

    .line 18
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_2

    .line 19
    invoke-static {p0, v1}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    goto :goto_1

    :cond_2
    :goto_2
    if-nez v2, :cond_3

    return v0

    .line 25
    :cond_3
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p0, v1}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    const v1, 0x1020016

    .line 26
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x1

    new-array v2, v2, [I

    if-nez v1, :cond_4

    .line 29
    new-instance v1, Lcom/mob/elp/d/f$a;

    invoke-direct {v1, v2}, Lcom/mob/elp/d/f$a;-><init>([I)V

    invoke-static {p0, v1}, Lcom/mob/elp/d/f;->a(Landroid/view/View;Lcom/mob/elp/d/f$b;)V

    .line 40
    aget p0, v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    .line 49
    invoke-static {}, Lcom/mob/elp/d/d;->a()Lcom/mob/elp/d/d;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MobPush get notification color failed, error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/mob/elp/d/d;->a(Ljava/lang/String;)V

    :cond_4
    return v0
.end method

.method private static a(Landroid/view/View;Lcom/mob/elp/d/f$b;)V
    .locals 5

    if-eqz p0, :cond_1

    .line 50
    move-object v0, p1

    check-cast v0, Lcom/mob/elp/d/f$a;

    .line 51
    instance-of v1, p0, Landroid/widget/TextView;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 52
    move-object v1, p0

    check-cast v1, Landroid/widget/TextView;

    .line 53
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Notification Title"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 54
    iget-object v0, v0, Lcom/mob/elp/d/f$a;->a:[I

    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    aput v1, v0, v2

    .line 55
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 56
    check-cast p0, Landroid/view/ViewGroup;

    .line 57
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 58
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 59
    invoke-static {v1, p1}, Lcom/mob/elp/d/f;->a(Landroid/view/View;Lcom/mob/elp/d/f$b;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static a()Z
    .locals 7

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/elp/d/f;->a(Landroid/content/Context;)I

    move-result v1

    const/high16 v2, -0x1000000

    or-int/2addr v1, v2

    .line 2
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    sub-int/2addr v3, v4

    .line 3
    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    sub-int/2addr v4, v5

    .line 4
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    sub-int/2addr v2, v1

    mul-int v3, v3, v3

    mul-int v4, v4, v4

    add-int/2addr v3, v4

    mul-int v2, v2, v2

    add-int/2addr v3, v2

    int-to-double v1, v3

    .line 5
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide v3, 0x4066800000000000L    # 180.0

    const/4 v5, 0x1

    cmpg-double v6, v1, v3

    if-gez v6, :cond_0

    const/4 v0, 0x1

    :cond_0
    xor-int/2addr v0, v5

    return v0

    :catchall_0
    move-exception v1

    .line 6
    invoke-static {}, Lcom/mob/elp/d/d;->a()Lcom/mob/elp/d/d;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MobPush get notification theme failed, error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mob/elp/d/d;->a(Ljava/lang/String;)V

    return v0
.end method
