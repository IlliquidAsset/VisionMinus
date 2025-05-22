.class final Lcom/powervision/gcs/utils/AircraftAnimation$4;
.super Ljava/lang/Object;
.source "AircraftAnimation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/utils/AircraftAnimation;->animateRawManually(Ljava/util/List;Landroid/widget/ImageView;Ljava/lang/Runnable;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$frameNumber:I

.field final synthetic val$imageView:Landroid/widget/ImageView;

.field final synthetic val$myFrames:Ljava/util/List;

.field final synthetic val$onComplete:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/util/List;ILandroid/widget/ImageView;Ljava/lang/Runnable;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/powervision/gcs/utils/AircraftAnimation$4;->val$myFrames:Ljava/util/List;

    iput p2, p0, Lcom/powervision/gcs/utils/AircraftAnimation$4;->val$frameNumber:I

    iput-object p3, p0, Lcom/powervision/gcs/utils/AircraftAnimation$4;->val$imageView:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/powervision/gcs/utils/AircraftAnimation$4;->val$onComplete:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 187
    iget-object v0, p0, Lcom/powervision/gcs/utils/AircraftAnimation$4;->val$myFrames:Ljava/util/List;

    iget v1, p0, Lcom/powervision/gcs/utils/AircraftAnimation$4;->val$frameNumber:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/utils/AircraftAnimation$MyFrame;

    .line 188
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/powervision/gcs/utils/AircraftAnimation$4;->val$imageView:Landroid/widget/ImageView;

    .line 189
    invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, v0, Lcom/powervision/gcs/utils/AircraftAnimation$MyFrame;->bytes:[B

    iget-object v5, v0, Lcom/powervision/gcs/utils/AircraftAnimation$MyFrame;->bytes:[B

    array-length v5, v5

    const/4 v6, 0x0

    .line 190
    invoke-static {v4, v6, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v1, v0, Lcom/powervision/gcs/utils/AircraftAnimation$MyFrame;->drawable:Landroid/graphics/drawable/Drawable;

    .line 192
    iget-boolean v1, v0, Lcom/powervision/gcs/utils/AircraftAnimation$MyFrame;->isReady:Z

    if-eqz v1, :cond_0

    .line 194
    iget-object v0, p0, Lcom/powervision/gcs/utils/AircraftAnimation$4;->val$myFrames:Ljava/util/List;

    iget-object v1, p0, Lcom/powervision/gcs/utils/AircraftAnimation$4;->val$imageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/powervision/gcs/utils/AircraftAnimation$4;->val$onComplete:Ljava/lang/Runnable;

    iget v4, p0, Lcom/powervision/gcs/utils/AircraftAnimation$4;->val$frameNumber:I

    add-int/2addr v4, v2

    invoke-static {v0, v1, v3, v4}, Lcom/powervision/gcs/utils/AircraftAnimation;->access$100(Ljava/util/List;Landroid/widget/ImageView;Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 197
    :cond_0
    iput-boolean v2, v0, Lcom/powervision/gcs/utils/AircraftAnimation$MyFrame;->isReady:Z

    :goto_0
    return-void
.end method
