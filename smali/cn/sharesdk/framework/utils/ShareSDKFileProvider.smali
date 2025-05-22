.class public Lcn/sharesdk/framework/utils/ShareSDKFileProvider;
.super Landroid/content/ContentProvider;
.source "ShareSDKFileProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/framework/utils/ShareSDKFileProvider$a;,
        Lcn/sharesdk/framework/utils/ShareSDKFileProvider$PathStrategy;
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:Ljava/io/File;

.field private static c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcn/sharesdk/framework/utils/ShareSDKFileProvider$PathStrategy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private d:Lcn/sharesdk/framework/utils/ShareSDKFileProvider$PathStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "_display_name"

    const-string v1, "_size"

    .line 311
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->a:[Ljava/lang/String;

    .line 327
    new-instance v0, Ljava/io/File;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->b:Ljava/io/File;

    .line 330
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->c:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 310
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .locals 3

    const-string v0, "r"

    .line 862
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 p0, 0x10000000

    goto :goto_1

    :cond_0
    const-string v0, "w"

    .line 864
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "wt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "wa"

    .line 868
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 p0, 0x2a000000

    goto :goto_1

    :cond_2
    const-string v0, "rw"

    .line 872
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/high16 p0, 0x38000000

    goto :goto_1

    :cond_3
    const-string v0, "rwt"

    .line 875
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/high16 p0, 0x3c000000    # 0.0078125f

    goto :goto_1

    .line 880
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_0
    const/high16 p0, 0x2c000000

    :goto_1
    return p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;
    .locals 0

    .line 393
    invoke-static {p0, p1}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->a(Landroid/content/Context;Ljava/lang/String;)Lcn/sharesdk/framework/utils/ShareSDKFileProvider$PathStrategy;

    move-result-object p0

    .line 394
    invoke-interface {p0, p2}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider$PathStrategy;->getUriForFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Lcn/sharesdk/framework/utils/ShareSDKFileProvider$PathStrategy;
    .locals 2

    .line 547
    sget-object v0, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->c:Ljava/util/HashMap;

    monitor-enter v0

    .line 548
    :try_start_0
    sget-object v1, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/sharesdk/framework/utils/ShareSDKFileProvider$PathStrategy;

    if-nez v1, :cond_0

    .line 559
    invoke-static {p0, p1}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->b(Landroid/content/Context;Ljava/lang/String;)Lcn/sharesdk/framework/utils/ShareSDKFileProvider$PathStrategy;

    move-result-object v1

    .line 560
    sget-object p0, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->c:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ShareSDKFileProvider getPathStrategy strat "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-object v1

    :catchall_0
    move-exception p0

    .line 562
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static varargs a(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .line 887
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 889
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object p0, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static a(Landroid/content/Context;)[Ljava/io/File;
    .locals 5

    .line 704
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x13

    if-lt v0, v3, :cond_0

    .line 705
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ShareSDKFileProvider api >= 19"

    invoke-virtual {v0, v3, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 706
    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object p0

    return-object p0

    .line 708
    :cond_0
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "ShareSDKFileProvider api <= 19"

    invoke-virtual {v0, v4, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    .line 709
    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    aput-object p0, v0, v2

    return-object v0
.end method

.method private static a([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 2

    .line 902
    new-array v0, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 903
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static a([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 2

    .line 896
    new-array v0, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 897
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Lcn/sharesdk/framework/utils/ShareSDKFileProvider$PathStrategy;
    .locals 12

    .line 634
    new-instance v0, Lcn/sharesdk/framework/utils/ShareSDKFileProvider$a;

    invoke-direct {v0, p1}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider$a;-><init>(Ljava/lang/String;)V

    .line 642
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string p1, "Mob/cache/videos"

    const-string v1, "Mob/cache/images"

    const-string v2, "ShareSDKFileProvider target "

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    .line 644
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->a(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    const-string v5, "imageNameFilesDir"

    invoke-virtual {v0, v5, v4}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider$a;->a(Ljava/lang/String;Ljava/io/File;)V

    .line 645
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->a(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    const-string v5, "videoNameFilesDir"

    invoke-virtual {v0, v5, v4}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider$a;->a(Ljava/lang/String;Ljava/io/File;)V

    .line 646
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v4, p0, v5}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 650
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mob/"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/cache/images"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 652
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/cache/videos"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 656
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->a(Landroid/content/Context;)[Ljava/io/File;

    move-result-object v8

    .line 657
    array-length v9, v8

    const/4 v10, 0x0

    if-lez v9, :cond_1

    .line 658
    aget-object v8, v8, v3

    goto :goto_0

    :cond_1
    move-object v8, v10

    :goto_0
    const/4 v9, 0x1

    if-eqz v8, :cond_2

    new-array v11, v9, [Ljava/lang/String;

    aput-object p0, v11, v3

    .line 661
    invoke-static {v8, v11}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->a(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const-string v11, "imageNameExternal"

    invoke-virtual {v0, v11, p0}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider$a;->a(Ljava/lang/String;Ljava/io/File;)V

    new-array p0, v9, [Ljava/lang/String;

    aput-object v6, p0, v3

    .line 662
    invoke-static {v8, p0}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->a(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const-string v6, "videoNameExternal"

    invoke-virtual {v0, v6, p0}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider$a;->a(Ljava/lang/String;Ljava/io/File;)V

    .line 663
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v8, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v6, v8}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 668
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 670
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 674
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->b(Landroid/content/Context;)[Ljava/io/File;

    move-result-object v5

    .line 675
    array-length v6, v5

    if-lez v6, :cond_3

    .line 676
    aget-object v5, v5, v3

    goto :goto_1

    :cond_3
    move-object v5, v10

    :goto_1
    if-eqz v5, :cond_4

    new-array v6, v9, [Ljava/lang/String;

    aput-object p0, v6, v3

    .line 679
    invoke-static {v5, v6}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->a(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const-string v6, "imageNameEtc"

    invoke-virtual {v0, v6, p0}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider$a;->a(Ljava/lang/String;Ljava/io/File;)V

    new-array p0, v9, [Ljava/lang/String;

    aput-object v4, p0, v3

    .line 680
    invoke-static {v5, p0}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->a(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const-string v4, "videoNameEtc"

    invoke-virtual {v0, v4, p0}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider$a;->a(Ljava/lang/String;Ljava/io/File;)V

    .line 681
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 691
    :cond_4
    sget-object p0, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->b:Ljava/io/File;

    if-eqz p0, :cond_5

    .line 693
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->a(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "imageNameRoot"

    invoke-virtual {v0, v2, v1}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider$a;->a(Ljava/lang/String;Ljava/io/File;)V

    .line 694
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v10, p1}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->a(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const-string v1, "videoNameRoot"

    invoke-virtual {v0, v1, p1}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider$a;->a(Ljava/lang/String;Ljava/io/File;)V

    .line 697
    :cond_5
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ShareSDKFileProvider !!! target===> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-object v0
.end method

.method public static b(Landroid/content/Context;)[Ljava/io/File;
    .locals 4

    .line 714
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-lt v0, v2, :cond_0

    .line 715
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ShareSDKFileProvider api >= 19"

    invoke-virtual {v0, v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 716
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDirs()[Ljava/io/File;

    move-result-object p0

    return-object p0

    .line 718
    :cond_0
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ShareSDKFileProvider api <= 19"

    invoke-virtual {v0, v3, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    .line 719
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p0

    aput-object p0, v0, v1

    return-object v0
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 4

    .line 353
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 356
    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->exported:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 360
    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    if-eqz v0, :cond_0

    .line 365
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ShareSDKFileProvider attachInfo "

    invoke-virtual {v0, v3, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 367
    iget-object p2, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-static {p1, p2}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->a(Landroid/content/Context;Ljava/lang/String;)Lcn/sharesdk/framework/utils/ShareSDKFileProvider$PathStrategy;

    move-result-object p1

    iput-object p1, p0, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->d:Lcn/sharesdk/framework/utils/ShareSDKFileProvider$PathStrategy;

    .line 369
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ShareSDKFileProvider attachInfo mStrategy===> "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->d:Lcn/sharesdk/framework/utils/ShareSDKFileProvider$PathStrategy;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-void

    .line 361
    :cond_0
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "ShareSDKFileProvider attachInfo ===> Provider must grant uri permissions"

    invoke-virtual {p1, v0, p2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 362
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Provider must grant uri permissions"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 357
    :cond_1
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "ShareSDKFileProvider attachInfo ===> Provider must not be exported"

    invoke-virtual {p1, v0, p2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 358
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Provider must not be exported"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 514
    iget-object p2, p0, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->d:Lcn/sharesdk/framework/utils/ShareSDKFileProvider$PathStrategy;

    invoke-interface {p2, p1}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider$PathStrategy;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    .line 515
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    .line 468
    iget-object v0, p0, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->d:Lcn/sharesdk/framework/utils/ShareSDKFileProvider$PathStrategy;

    invoke-interface {v0, p1}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider$PathStrategy;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    .line 470
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 472
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 473
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const-string p1, "application/octet-stream"

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 488
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "No external inserts"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreate()Z
    .locals 3

    .line 340
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ShareSDKFileProvider onCreate "

    invoke-virtual {v0, v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 536
    iget-object v0, p0, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->d:Lcn/sharesdk/framework/utils/ShareSDKFileProvider$PathStrategy;

    invoke-interface {v0, p1}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider$PathStrategy;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    .line 537
    invoke-static {p2}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->a(Ljava/lang/String;)I

    move-result p2

    .line 538
    invoke-static {p1, p2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5

    .line 429
    iget-object p3, p0, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->d:Lcn/sharesdk/framework/utils/ShareSDKFileProvider$PathStrategy;

    invoke-interface {p3, p1}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider$PathStrategy;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    if-nez p2, :cond_0

    .line 432
    sget-object p2, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->a:[Ljava/lang/String;

    .line 435
    :cond_0
    array-length p3, p2

    new-array p3, p3, [Ljava/lang/String;

    .line 436
    array-length p4, p2

    new-array p4, p4, [Ljava/lang/Object;

    .line 438
    array-length p5, p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p5, :cond_3

    aget-object v2, p2, v0

    const-string v3, "_display_name"

    .line 439
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 440
    aput-object v3, p3, v1

    add-int/lit8 v2, v1, 0x1

    .line 441
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p4, v1

    :goto_1
    move v1, v2

    goto :goto_2

    :cond_1
    const-string v3, "_size"

    .line 442
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 443
    aput-object v3, p3, v1

    add-int/lit8 v2, v1, 0x1

    .line 444
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, p4, v1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 448
    :cond_3
    invoke-static {p3, v1}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->a([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 449
    invoke-static {p4, v1}, Lcn/sharesdk/framework/utils/ShareSDKFileProvider;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    .line 451
    new-instance p3, Landroid/database/MatrixCursor;

    const/4 p4, 0x1

    invoke-direct {p3, p1, p4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 452
    invoke-virtual {p3, p2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object p3
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 497
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "No external updates"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
