.class public Lcom/powervision/gcs/utils/AircraftAnimation;
.super Ljava/lang/Object;
.source "AircraftAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/utils/AircraftAnimation$OnDrawableLoadedListener;,
        Lcom/powervision/gcs/utils/AircraftAnimation$MyFrame;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/util/List;Landroid/widget/ImageView;Ljava/lang/Runnable;)V
    .locals 0

    .line 24
    invoke-static {p0, p1, p2}, Lcom/powervision/gcs/utils/AircraftAnimation;->animateRawManually(Ljava/util/List;Landroid/widget/ImageView;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$100(Ljava/util/List;Landroid/widget/ImageView;Ljava/lang/Runnable;I)V
    .locals 0

    .line 24
    invoke-static {p0, p1, p2, p3}, Lcom/powervision/gcs/utils/AircraftAnimation;->animateRawManually(Ljava/util/List;Landroid/widget/ImageView;Ljava/lang/Runnable;I)V

    return-void
.end method

.method private static animateRawManually(Ljava/util/List;Landroid/widget/ImageView;Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/gcs/utils/AircraftAnimation$MyFrame;",
            ">;",
            "Landroid/widget/ImageView;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 136
    invoke-static {p0, p1, p2, v0}, Lcom/powervision/gcs/utils/AircraftAnimation;->animateRawManually(Ljava/util/List;Landroid/widget/ImageView;Ljava/lang/Runnable;I)V

    return-void
.end method

.method private static animateRawManually(Ljava/util/List;Landroid/widget/ImageView;Ljava/lang/Runnable;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/gcs/utils/AircraftAnimation$MyFrame;",
            ">;",
            "Landroid/widget/ImageView;",
            "Ljava/lang/Runnable;",
            "I)V"
        }
    .end annotation

    .line 143
    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/utils/AircraftAnimation$MyFrame;

    const/4 v1, 0x0

    if-nez p3, :cond_0

    .line 146
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 147
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, v0, Lcom/powervision/gcs/utils/AircraftAnimation$MyFrame;->bytes:[B

    iget-object v5, v0, Lcom/powervision/gcs/utils/AircraftAnimation$MyFrame;->bytes:[B

    array-length v5, v5

    invoke-static {v4, v1, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v2, v0, Lcom/powervision/gcs/utils/AircraftAnimation$MyFrame;->drawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p3, -0x1

    .line 150
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/gcs/utils/AircraftAnimation$MyFrame;

    .line 151
    iget-object v3, v2, Lcom/powervision/gcs/utils/AircraftAnimation$MyFrame;->drawable:Landroid/graphics/drawable/Drawable;

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v3, 0x0

    .line 152
    iput-object v3, v2, Lcom/powervision/gcs/utils/AircraftAnimation$MyFrame;->drawable:Landroid/graphics/drawable/Drawable;

    .line 153
    iput-boolean v1, v2, Lcom/powervision/gcs/utils/AircraftAnimation$MyFrame;->isReady:Z

    .line 156
    :goto_0
    iget-object v1, v0, Lcom/powervision/gcs/utils/AircraftAnimation$MyFrame;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 157
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    new-instance v8, Lcom/powervision/gcs/utils/AircraftAnimation$3;

    move-object v1, v8

    move-object v2, p1

    move-object v3, v0

    move v4, p3

    move-object v5, p0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/powervision/gcs/utils/AircraftAnimation$3;-><init>(Landroid/widget/ImageView;Lcom/powervision/gcs/utils/AircraftAnimation$MyFrame;ILjava/util/List;Ljava/lang/Runnable;)V

    iget v0, v0, Lcom/powervision/gcs/utils/AircraftAnimation$MyFrame;->duration:I

    int-to-long v0, v0

    invoke-virtual {v7, v8, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    add-int/lit8 v0, p3, 0x1

    .line 183
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 184
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/powervision/gcs/utils/AircraftAnimation$4;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/powervision/gcs/utils/AircraftAnimation$4;-><init>(Ljava/util/List;ILandroid/widget/ImageView;Ljava/lang/Runnable;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 201
    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    :cond_1
    return-void
.end method

.method public static animateRawManuallyFromXML(ILandroid/widget/ImageView;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 2

    .line 45
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/powervision/gcs/utils/AircraftAnimation$1;

    invoke-direct {v1, p2, p1, p3}, Lcom/powervision/gcs/utils/AircraftAnimation$1;-><init>(Ljava/lang/Runnable;Landroid/widget/ImageView;Ljava/lang/Runnable;)V

    invoke-static {p0, v0, v1}, Lcom/powervision/gcs/utils/AircraftAnimation;->loadRaw(ILandroid/content/Context;Lcom/powervision/gcs/utils/AircraftAnimation$OnDrawableLoadedListener;)V

    return-void
.end method

.method private static loadFromXml(ILandroid/content/Context;Lcom/powervision/gcs/utils/AircraftAnimation$OnDrawableLoadedListener;)V
    .locals 2

    .line 67
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/powervision/gcs/utils/AircraftAnimation$2;

    invoke-direct {v1, p1, p0, p2}, Lcom/powervision/gcs/utils/AircraftAnimation$2;-><init>(Landroid/content/Context;ILcom/powervision/gcs/utils/AircraftAnimation$OnDrawableLoadedListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 130
    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    return-void
.end method

.method private static loadRaw(ILandroid/content/Context;Lcom/powervision/gcs/utils/AircraftAnimation$OnDrawableLoadedListener;)V
    .locals 0

    .line 60
    invoke-static {p0, p1, p2}, Lcom/powervision/gcs/utils/AircraftAnimation;->loadFromXml(ILandroid/content/Context;Lcom/powervision/gcs/utils/AircraftAnimation$OnDrawableLoadedListener;)V

    return-void
.end method
