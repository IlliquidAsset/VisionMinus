.class public Lcn/sharesdk/framework/i;
.super Lcn/sharesdk/framework/utils/d;
.source "ShareSDKCoreThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/framework/i$a;
    }
.end annotation


# instance fields
.field private b:Lcn/sharesdk/framework/i$a;

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/sharesdk/framework/Platform;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcn/sharesdk/framework/CustomPlatform;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcn/sharesdk/framework/Service;",
            ">;"
        }
    .end annotation
.end field

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcn/sharesdk/framework/utils/d;-><init>()V

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcn/sharesdk/framework/i;->j:Z

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/framework/i;->c:Ljava/util/HashMap;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/framework/i;->d:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/framework/i;->e:Ljava/util/HashMap;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/framework/i;->f:Ljava/util/HashMap;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/framework/i;->g:Ljava/util/HashMap;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/framework/i;->h:Ljava/util/HashMap;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/framework/i;->i:Ljava/util/HashMap;

    return-void
.end method

.method private a(Lcn/sharesdk/framework/b/a;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/b/a;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "res"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "error"

    .line 538
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 539
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    const-string v0, "ShareSDK parse sns config ==>>"

    new-array v2, v4, [Ljava/lang/Object;

    new-instance v4, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v4}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v4, p2}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v3

    invoke-virtual {p1, v0, v2}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-object v1

    .line 543
    :cond_0
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 544
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    const-string p2, "ShareSDK platform config result ==>>"

    new-array v0, v4, [Ljava/lang/Object;

    const-string v2, "SNS configuration is empty"

    aput-object v2, v0, v3

    invoke-virtual {p1, p2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-object v1

    .line 548
    :cond_1
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_2

    return-object v1

    .line 552
    :cond_2
    invoke-virtual {p1, p2}, Lcn/sharesdk/framework/b/a;->c(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 554
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    return-object v1
.end method

.method static synthetic a(Lcn/sharesdk/framework/i;Lcn/sharesdk/framework/b/a;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcn/sharesdk/framework/i;->a(Lcn/sharesdk/framework/b/a;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcn/sharesdk/framework/i;Ljava/util/HashMap;)Z
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/i;->a(Ljava/util/HashMap;)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/util/HashMap;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 561
    iget-object v0, p0, Lcn/sharesdk/framework/i;->h:Ljava/util/HashMap;

    monitor-enter v0

    .line 562
    :try_start_0
    invoke-static {p1}, Lcn/sharesdk/framework/h;->a(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 563
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 564
    iget-object v1, p0, Lcn/sharesdk/framework/i;->h:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 565
    iput-object p1, p0, Lcn/sharesdk/framework/i;->h:Ljava/util/HashMap;

    const/4 p1, 0x1

    .line 566
    monitor-exit v0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 568
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 570
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private j()V
    .locals 10

    .line 129
    iget-object v0, p0, Lcn/sharesdk/framework/i;->c:Ljava/util/HashMap;

    monitor-enter v0

    .line 130
    :try_start_0
    iget-object v1, p0, Lcn/sharesdk/framework/i;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 132
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    const/4 v2, 0x1

    .line 133
    invoke-virtual {v1, v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 134
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v3, 0x0

    .line 137
    :try_start_2
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "ShareSDK.xml"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    .line 139
    :try_start_3
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_0
    const-string v4, "utf-8"

    .line 141
    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 142
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    :goto_1
    if-eq v4, v2, :cond_2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 145
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 146
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 147
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v6

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_0

    .line 149
    invoke-interface {v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v8

    .line 150
    invoke-interface {v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 151
    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 153
    :cond_0
    iget-object v6, p0, Lcn/sharesdk/framework/i;->c:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    goto :goto_1

    .line 157
    :cond_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v1

    .line 159
    :try_start_4
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 161
    :goto_3
    monitor-exit v0

    return-void

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1
.end method


# virtual methods
.method public a()Landroid/app/Activity;
    .locals 1

    .line 69
    invoke-static {}, Lcn/sharesdk/framework/h;->b()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 0

    .line 82
    invoke-static {p1, p2, p3}, Lcn/sharesdk/framework/h;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 293
    :cond_0
    invoke-virtual {p0}, Lcn/sharesdk/framework/i;->e()[Lcn/sharesdk/framework/Platform;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 298
    :cond_1
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 299
    invoke-virtual {v4}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    return-object v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public a(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 452
    iget-object v0, p0, Lcn/sharesdk/framework/i;->h:Ljava/util/HashMap;

    monitor-enter v0

    .line 453
    :try_start_0
    iget-object v1, p0, Lcn/sharesdk/framework/i;->h:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 455
    monitor-exit v0

    return-object v1

    .line 458
    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 459
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 460
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 2

    .line 593
    sget-object v0, Lcn/sharesdk/framework/i$a;->b:Lcn/sharesdk/framework/i$a;

    iget-object v1, p0, Lcn/sharesdk/framework/i;->b:Lcn/sharesdk/framework/i$a;

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 597
    :cond_0
    invoke-static {}, Lcn/sharesdk/framework/b/a;->a()Lcn/sharesdk/framework/b/a;

    move-result-object v0

    .line 598
    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/b/a;->a(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;ZILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 575
    sget-object v0, Lcn/sharesdk/framework/i$a;->b:Lcn/sharesdk/framework/i$a;

    iget-object v1, p0, Lcn/sharesdk/framework/i;->b:Lcn/sharesdk/framework/i$a;

    if-eq v0, v1, :cond_0

    return-object p1

    .line 579
    :cond_0
    invoke-static {}, Lcn/sharesdk/framework/b/a;->a()Lcn/sharesdk/framework/b/a;

    move-result-object v0

    .line 580
    invoke-virtual {v0, p1, p3, p2, p4}, Lcn/sharesdk/framework/b/a;->a(Ljava/lang/String;IZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(I)V
    .locals 0

    .line 346
    sput p1, Lcom/mob/tools/network/NetworkHelper;->connectionTimeout:I

    return-void
.end method

.method public a(II)V
    .locals 2

    .line 434
    iget-object v0, p0, Lcn/sharesdk/framework/i;->h:Ljava/util/HashMap;

    monitor-enter v0

    .line 435
    :try_start_0
    iget-object v1, p0, Lcn/sharesdk/framework/i;->h:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    .line 436
    iget-object v1, p0, Lcn/sharesdk/framework/i;->h:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(ILcn/sharesdk/framework/Platform;)V
    .locals 0

    .line 362
    invoke-static {p1, p2}, Lcn/sharesdk/framework/h;->a(ILcn/sharesdk/framework/Platform;)V

    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0

    .line 65
    invoke-static {p1}, Lcn/sharesdk/framework/h;->a(Landroid/app/Activity;)V

    return-void
.end method

.method protected a(Landroid/os/Message;)V
    .locals 6

    .line 165
    iget-object p1, p0, Lcn/sharesdk/framework/i;->i:Ljava/util/HashMap;

    monitor-enter p1

    .line 166
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/framework/i;->d:Ljava/util/ArrayList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    const-string v1, "SHARESDK"

    .line 171
    invoke-static {v1}, Lcom/mob/commons/eventrecoder/EventRecorder;->checkRecord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 172
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 174
    invoke-static {}, Lcn/sharesdk/framework/b/a;->a()Lcn/sharesdk/framework/b/a;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcn/sharesdk/framework/b/a;->a(Ljava/util/HashMap;)V

    .line 175
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EventRecorder checkRecord result =="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/String;)I

    .line 176
    invoke-virtual {p0}, Lcn/sharesdk/framework/i;->i()V

    .line 178
    :cond_0
    invoke-static {}, Lcom/mob/commons/eventrecoder/EventRecorder;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 180
    :try_start_2
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 182
    :goto_0
    iget-object v1, p0, Lcn/sharesdk/framework/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 183
    invoke-static {}, Lcn/sharesdk/framework/h;->a()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 185
    iget-object v2, p0, Lcn/sharesdk/framework/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 187
    :cond_1
    iget-object v1, p0, Lcn/sharesdk/framework/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/sharesdk/framework/Platform;

    .line 188
    iget-object v3, p0, Lcn/sharesdk/framework/i;->f:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform;->getPlatformId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object v3, p0, Lcn/sharesdk/framework/i;->e:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform;->getPlatformId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 191
    :cond_2
    iget-object v1, p0, Lcn/sharesdk/framework/i;->a:Landroid/os/Handler;

    invoke-static {v1}, Lcn/sharesdk/framework/h;->a(Landroid/os/Handler;)V

    .line 192
    sget-object v1, Lcn/sharesdk/framework/i$a;->b:Lcn/sharesdk/framework/i$a;

    iput-object v1, p0, Lcn/sharesdk/framework/i;->b:Lcn/sharesdk/framework/i$a;

    .line 194
    new-instance v1, Lcn/sharesdk/framework/i$1;

    invoke-direct {v1, p0}, Lcn/sharesdk/framework/i$1;-><init>(Lcn/sharesdk/framework/i;)V

    .line 198
    invoke-virtual {v1}, Lcn/sharesdk/framework/i$1;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 202
    :try_start_3
    sget-object v1, Lcn/sharesdk/framework/i$a;->b:Lcn/sharesdk/framework/i$a;

    iput-object v1, p0, Lcn/sharesdk/framework/i;->b:Lcn/sharesdk/framework/i$a;

    .line 203
    iget-object v1, p0, Lcn/sharesdk/framework/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 204
    iget-object v1, p0, Lcn/sharesdk/framework/i;->i:Ljava/util/HashMap;

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_1
    move-exception v1

    .line 200
    :try_start_4
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 202
    :try_start_5
    sget-object v1, Lcn/sharesdk/framework/i$a;->b:Lcn/sharesdk/framework/i$a;

    iput-object v1, p0, Lcn/sharesdk/framework/i;->b:Lcn/sharesdk/framework/i$a;

    .line 203
    iget-object v1, p0, Lcn/sharesdk/framework/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 204
    iget-object v1, p0, Lcn/sharesdk/framework/i;->i:Ljava/util/HashMap;

    goto :goto_2

    .line 206
    :goto_3
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 207
    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    return-void

    :catchall_2
    move-exception v1

    .line 202
    :try_start_7
    sget-object v2, Lcn/sharesdk/framework/i$a;->b:Lcn/sharesdk/framework/i$a;

    iput-object v2, p0, Lcn/sharesdk/framework/i;->b:Lcn/sharesdk/framework/i$a;

    .line 203
    iget-object v2, p0, Lcn/sharesdk/framework/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 204
    iget-object v2, p0, Lcn/sharesdk/framework/i;->i:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    throw v1

    :catchall_3
    move-exception v1

    .line 206
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    throw v1

    :catchall_4
    move-exception v0

    .line 207
    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v0
.end method

.method public a(Lcn/sharesdk/framework/loopshare/LoopShareResultListener;)V
    .locals 3

    .line 95
    :try_start_0
    invoke-static {p1}, Lcn/sharesdk/framework/h;->a(Lcn/sharesdk/framework/loopshare/LoopShareResultListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 97
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ShareSDKCoreThrad prepareLoopShare "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Object;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcn/sharesdk/framework/Service;",
            ">;)V"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcn/sharesdk/framework/i;->i:Ljava/util/HashMap;

    monitor-enter v0

    .line 216
    :try_start_0
    iget-object v1, p0, Lcn/sharesdk/framework/i;->i:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    .line 221
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/sharesdk/framework/Service;

    .line 222
    iget-object v2, p0, Lcn/sharesdk/framework/i;->i:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    invoke-virtual {v1}, Lcn/sharesdk/framework/Service;->onBind()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 225
    :try_start_2
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 227
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public a(Ljava/lang/String;I)V
    .locals 0

    .line 366
    invoke-static {p1, p2}, Lcn/sharesdk/framework/h;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 427
    iget-object v0, p0, Lcn/sharesdk/framework/i;->c:Ljava/util/HashMap;

    monitor-enter v0

    .line 428
    :try_start_0
    iget-object v1, p0, Lcn/sharesdk/framework/i;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    .line 429
    iget-object v1, p0, Lcn/sharesdk/framework/i;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 370
    iget-object v0, p0, Lcn/sharesdk/framework/i;->c:Ljava/util/HashMap;

    monitor-enter v0

    .line 371
    :try_start_0
    iget-object v1, p0, Lcn/sharesdk/framework/i;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 373
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 376
    :cond_0
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 377
    :try_start_1
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 378
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 379
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 381
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 384
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 385
    :try_start_2
    iget-object p2, p0, Lcn/sharesdk/framework/i;->c:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 388
    iget-object p2, p0, Lcn/sharesdk/framework/i;->d:Ljava/util/ArrayList;

    monitor-enter p2

    .line 389
    :try_start_3
    iget-object v0, p0, Lcn/sharesdk/framework/i;->b:Lcn/sharesdk/framework/i$a;

    sget-object v1, Lcn/sharesdk/framework/i$a;->a:Lcn/sharesdk/framework/i$a;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne v0, v1, :cond_3

    .line 391
    :try_start_4
    iget-object v0, p0, Lcn/sharesdk/framework/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 393
    :try_start_5
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 396
    :cond_3
    :goto_1
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 397
    iget-object p2, p0, Lcn/sharesdk/framework/i;->d:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/framework/Platform;

    if-eqz v0, :cond_4

    .line 398
    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 399
    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->a()V

    :cond_5
    return-void

    :catchall_1
    move-exception p1

    .line 396
    :try_start_6
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    .line 384
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw p1

    :catchall_3
    move-exception p1

    .line 386
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw p1
.end method

.method public a(Ljava/util/HashMap;Lcn/sharesdk/framework/loopshare/MoblinkActionListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcn/sharesdk/framework/loopshare/MoblinkActionListener;",
            ")V"
        }
    .end annotation

    .line 87
    :try_start_0
    invoke-static {p1, p2}, Lcn/sharesdk/framework/h;->a(Ljava/util/HashMap;Lcn/sharesdk/framework/loopshare/MoblinkActionListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 89
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShareSDKCoreThread mobLinkGetMobID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2, p1, v0}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Object;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 74
    invoke-static {p1}, Lcn/sharesdk/framework/h;->a(Z)V

    return-void
.end method

.method public b(Ljava/lang/String;)I
    .locals 3

    .line 415
    iget-object v0, p0, Lcn/sharesdk/framework/i;->d:Ljava/util/ArrayList;

    monitor-enter v0

    .line 416
    :try_start_0
    iget-object v1, p0, Lcn/sharesdk/framework/i;->g:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 417
    :try_start_1
    iget-object v2, p0, Lcn/sharesdk/framework/i;->e:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 418
    iget-object v2, p0, Lcn/sharesdk/framework/i;->e:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 420
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return p1

    :catchall_0
    move-exception p1

    .line 422
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1

    :catchall_1
    move-exception p1

    .line 423
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 441
    iget-object v0, p0, Lcn/sharesdk/framework/i;->c:Ljava/util/HashMap;

    monitor-enter v0

    .line 442
    :try_start_0
    iget-object v1, p0, Lcn/sharesdk/framework/i;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 444
    monitor-exit v0

    return-object p1

    .line 447
    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 448
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(I)V
    .locals 0

    .line 350
    sput p1, Lcom/mob/tools/network/NetworkHelper;->readTimout:I

    return-void
.end method

.method protected b(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcn/sharesdk/framework/Service;",
            ">;)V"
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lcn/sharesdk/framework/i;->i:Ljava/util/HashMap;

    monitor-enter v0

    .line 232
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    .line 233
    iget-object v1, p0, Lcn/sharesdk/framework/i;->i:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    iget-object v1, p0, Lcn/sharesdk/framework/i;->i:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/sharesdk/framework/Service;

    .line 235
    invoke-virtual {v1}, Lcn/sharesdk/framework/Service;->onUnbind()V

    .line 236
    iget-object v1, p0, Lcn/sharesdk/framework/i;->i:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(Z)V
    .locals 0

    .line 354
    iput-boolean p1, p0, Lcn/sharesdk/framework/i;->k:Z

    return-void
.end method

.method public b()Z
    .locals 1

    .line 78
    invoke-static {}, Lcn/sharesdk/framework/h;->c()Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/Class;)Lcn/sharesdk/framework/Service;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcn/sharesdk/framework/Service;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcn/sharesdk/framework/i;->i:Ljava/util/HashMap;

    monitor-enter v0

    .line 243
    :try_start_0
    iget-object v1, p0, Lcn/sharesdk/framework/i;->b:Lcn/sharesdk/framework/i$a;

    sget-object v2, Lcn/sharesdk/framework/i$a;->a:Lcn/sharesdk/framework/i$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-ne v1, v2, :cond_0

    .line 245
    :try_start_1
    iget-object v1, p0, Lcn/sharesdk/framework/i;->i:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 247
    :try_start_2
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 252
    :cond_0
    :goto_0
    :try_start_3
    iget-object v1, p0, Lcn/sharesdk/framework/i;->i:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/sharesdk/framework/Service;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v0

    return-object p1

    :catchall_1
    move-exception p1

    .line 254
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    .line 257
    monitor-exit v0

    return-object p1

    :catchall_2
    move-exception p1

    .line 258
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method

.method public c(I)Ljava/lang/String;
    .locals 3

    .line 407
    iget-object v0, p0, Lcn/sharesdk/framework/i;->d:Ljava/util/ArrayList;

    monitor-enter v0

    .line 408
    :try_start_0
    iget-object v1, p0, Lcn/sharesdk/framework/i;->g:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 409
    :try_start_1
    iget-object v2, p0, Lcn/sharesdk/framework/i;->f:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object p1

    :catchall_0
    move-exception p1

    .line 410
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    .line 411
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 584
    sget-object v0, Lcn/sharesdk/framework/i$a;->b:Lcn/sharesdk/framework/i$a;

    iget-object v1, p0, Lcn/sharesdk/framework/i;->b:Lcn/sharesdk/framework/i$a;

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 588
    :cond_0
    invoke-static {}, Lcn/sharesdk/framework/b/a;->a()Lcn/sharesdk/framework/b/a;

    move-result-object v0

    .line 589
    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/b/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 107
    invoke-static {}, Lcn/sharesdk/framework/h;->d()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 1

    .line 111
    sget-object v0, Lcn/sharesdk/framework/i$a;->a:Lcn/sharesdk/framework/i$a;

    iput-object v0, p0, Lcn/sharesdk/framework/i;->b:Lcn/sharesdk/framework/i$a;

    .line 113
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->a()Lcom/mob/tools/log/NLog;

    .line 115
    invoke-static {}, Lcom/mob/commons/eventrecoder/EventRecorder;->prepare()V

    .line 117
    invoke-direct {p0}, Lcn/sharesdk/framework/i;->j()V

    .line 125
    invoke-super {p0}, Lcn/sharesdk/framework/utils/d;->d()V

    return-void
.end method

.method public d(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcn/sharesdk/framework/CustomPlatform;",
            ">;)V"
        }
    .end annotation

    .line 262
    iget-object v0, p0, Lcn/sharesdk/framework/i;->g:Ljava/util/HashMap;

    monitor-enter v0

    .line 263
    :try_start_0
    iget-object v1, p0, Lcn/sharesdk/framework/i;->g:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    .line 268
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/sharesdk/framework/CustomPlatform;

    .line 269
    iget-object v2, p0, Lcn/sharesdk/framework/i;->g:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 271
    invoke-virtual {v1}, Lcn/sharesdk/framework/CustomPlatform;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 272
    iget-object p1, p0, Lcn/sharesdk/framework/i;->f:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcn/sharesdk/framework/CustomPlatform;->getPlatformId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1}, Lcn/sharesdk/framework/CustomPlatform;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget-object p1, p0, Lcn/sharesdk/framework/i;->e:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcn/sharesdk/framework/CustomPlatform;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcn/sharesdk/framework/CustomPlatform;->getPlatformId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 276
    :try_start_2
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 278
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public e(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcn/sharesdk/framework/CustomPlatform;",
            ">;)V"
        }
    .end annotation

    .line 282
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    .line 283
    iget-object v0, p0, Lcn/sharesdk/framework/i;->g:Ljava/util/HashMap;

    monitor-enter v0

    .line 284
    :try_start_0
    iget-object v1, p0, Lcn/sharesdk/framework/i;->g:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public e()[Lcn/sharesdk/framework/Platform;
    .locals 9

    .line 307
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 308
    iget-object v2, p0, Lcn/sharesdk/framework/i;->d:Ljava/util/ArrayList;

    monitor-enter v2

    .line 309
    :try_start_0
    iget-object v3, p0, Lcn/sharesdk/framework/i;->b:Lcn/sharesdk/framework/i$a;

    sget-object v4, Lcn/sharesdk/framework/i$a;->a:Lcn/sharesdk/framework/i$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ne v3, v4, :cond_0

    .line 311
    :try_start_1
    iget-object v3, p0, Lcn/sharesdk/framework/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 313
    :try_start_2
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 316
    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 317
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 318
    iget-object v3, p0, Lcn/sharesdk/framework/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/sharesdk/framework/Platform;

    if-eqz v4, :cond_1

    .line 319
    invoke-virtual {v4}, Lcn/sharesdk/framework/Platform;->b()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 320
    invoke-virtual {v4}, Lcn/sharesdk/framework/Platform;->a()V

    .line 321
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 324
    :cond_2
    invoke-static {v2}, Lcn/sharesdk/framework/h;->a(Ljava/util/ArrayList;)V

    .line 326
    iget-object v3, p0, Lcn/sharesdk/framework/i;->g:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 327
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/sharesdk/framework/Platform;

    if-eqz v4, :cond_3

    .line 328
    invoke-virtual {v4}, Lcn/sharesdk/framework/Platform;->b()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 329
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 333
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_5

    const/4 v0, 0x0

    return-object v0

    .line 337
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v4, v3, [Lcn/sharesdk/framework/Platform;

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v3, :cond_6

    .line 339
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/sharesdk/framework/Platform;

    aput-object v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 341
    :cond_6
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    const-string v3, "sort list use time: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v5

    invoke-virtual {v2, v3, v6}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-object v4

    :catchall_1
    move-exception v0

    .line 316
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public f()Z
    .locals 1

    .line 358
    iget-boolean v0, p0, Lcn/sharesdk/framework/i;->k:Z

    return v0
.end method

.method public g()Z
    .locals 2

    .line 469
    iget-object v0, p0, Lcn/sharesdk/framework/i;->h:Ljava/util/HashMap;

    monitor-enter v0

    .line 470
    :try_start_0
    iget-object v1, p0, Lcn/sharesdk/framework/i;->h:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/sharesdk/framework/i;->h:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    .line 471
    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    .line 473
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 474
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public h()Z
    .locals 5

    .line 481
    sget-object v0, Lcn/sharesdk/framework/i$a;->b:Lcn/sharesdk/framework/i$a;

    iget-object v1, p0, Lcn/sharesdk/framework/i;->b:Lcn/sharesdk/framework/i$a;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 482
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "Statistics module unopened"

    invoke-virtual {v0, v3, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v2

    .line 486
    :cond_0
    invoke-static {}, Lcn/sharesdk/framework/b/a;->a()Lcn/sharesdk/framework/b/a;

    move-result-object v0

    .line 488
    invoke-virtual {v0}, Lcn/sharesdk/framework/b/a;->e()Ljava/util/HashMap;

    move-result-object v1

    .line 489
    invoke-direct {p0, v0, v1}, Lcn/sharesdk/framework/i;->a(Lcn/sharesdk/framework/b/a;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 491
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 492
    invoke-direct {p0, v1}, Lcn/sharesdk/framework/i;->a(Ljava/util/HashMap;)Z

    move-result v2

    :cond_1
    if-eqz v2, :cond_2

    .line 497
    new-instance v1, Lcn/sharesdk/framework/i$2;

    invoke-direct {v1, p0, v0}, Lcn/sharesdk/framework/i$2;-><init>(Lcn/sharesdk/framework/i;Lcn/sharesdk/framework/b/a;)V

    .line 514
    invoke-virtual {v1}, Lcn/sharesdk/framework/i$2;->start()V

    goto :goto_0

    .line 518
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Lcn/sharesdk/framework/b/a;->f()Ljava/util/HashMap;

    move-result-object v1

    .line 519
    invoke-direct {p0, v0, v1}, Lcn/sharesdk/framework/i;->a(Lcn/sharesdk/framework/b/a;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 521
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 522
    invoke-direct {p0, v3}, Lcn/sharesdk/framework/i;->a(Ljava/util/HashMap;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 525
    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/b/a;->a(Ljava/util/HashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 529
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_3
    :goto_0
    return v2
.end method

.method public i()V
    .locals 2

    .line 603
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->clearCache(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 605
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
