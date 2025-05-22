.class final Lcom/powervision/gcs/utils/AircraftAnimation$2;
.super Ljava/lang/Object;
.source "AircraftAnimation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/utils/AircraftAnimation;->loadFromXml(ILandroid/content/Context;Lcom/powervision/gcs/utils/AircraftAnimation$OnDrawableLoadedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$onDrawableLoadedListener:Lcom/powervision/gcs/utils/AircraftAnimation$OnDrawableLoadedListener;

.field final synthetic val$resourceId:I


# direct methods
.method constructor <init>(Landroid/content/Context;ILcom/powervision/gcs/utils/AircraftAnimation$OnDrawableLoadedListener;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/powervision/gcs/utils/AircraftAnimation$2;->val$context:Landroid/content/Context;

    iput p2, p0, Lcom/powervision/gcs/utils/AircraftAnimation$2;->val$resourceId:I

    iput-object p3, p0, Lcom/powervision/gcs/utils/AircraftAnimation$2;->val$onDrawableLoadedListener:Lcom/powervision/gcs/utils/AircraftAnimation$OnDrawableLoadedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    iget-object v1, p0, Lcom/powervision/gcs/utils/AircraftAnimation$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/powervision/gcs/utils/AircraftAnimation$2;->val$resourceId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 76
    :try_start_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v2

    :goto_0
    const/4 v3, 0x1

    if-eq v2, v3, :cond_6

    if-nez v2, :cond_0

    goto :goto_3

    :cond_0
    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    .line 82
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "item"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x3e8

    const/16 v6, 0x3e8

    .line 86
    :goto_1
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v7

    if-ge v4, v7, :cond_3

    .line 87
    invoke-interface {v1, v4}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "drawable"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 90
    invoke-interface {v1, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 89
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 92
    iget-object v7, p0, Lcom/powervision/gcs/utils/AircraftAnimation$2;->val$context:Landroid/content/Context;

    .line 93
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 94
    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 92
    invoke-static {v2}, Lcom/powervision/gcs/utils/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v2

    goto :goto_2

    .line 95
    :cond_1
    invoke-interface {v1, v4}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "duration"

    .line 96
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 97
    invoke-interface {v1, v4, v5}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(II)I

    move-result v6

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 102
    :cond_3
    new-instance v3, Lcom/powervision/gcs/utils/AircraftAnimation$MyFrame;

    invoke-direct {v3}, Lcom/powervision/gcs/utils/AircraftAnimation$MyFrame;-><init>()V

    .line 103
    iput-object v2, v3, Lcom/powervision/gcs/utils/AircraftAnimation$MyFrame;->bytes:[B

    .line 104
    iput v6, v3, Lcom/powervision/gcs/utils/AircraftAnimation$MyFrame;->duration:I

    .line 105
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    const/4 v3, 0x3

    .line 114
    :cond_5
    :goto_3
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 117
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 121
    :cond_6
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/powervision/gcs/utils/AircraftAnimation$2;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/powervision/gcs/utils/AircraftAnimation$2$1;

    invoke-direct {v2, p0, v0}, Lcom/powervision/gcs/utils/AircraftAnimation$2$1;-><init>(Lcom/powervision/gcs/utils/AircraftAnimation$2;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
