.class final Lcom/powervision/gcs/utils/AircraftAnimation$3;
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

.field final synthetic val$thisFrame:Lcom/powervision/gcs/utils/AircraftAnimation$MyFrame;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;Lcom/powervision/gcs/utils/AircraftAnimation$MyFrame;ILjava/util/List;Ljava/lang/Runnable;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/powervision/gcs/utils/AircraftAnimation$3;->val$imageView:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/powervision/gcs/utils/AircraftAnimation$3;->val$thisFrame:Lcom/powervision/gcs/utils/AircraftAnimation$MyFrame;

    iput p3, p0, Lcom/powervision/gcs/utils/AircraftAnimation$3;->val$frameNumber:I

    iput-object p4, p0, Lcom/powervision/gcs/utils/AircraftAnimation$3;->val$myFrames:Ljava/util/List;

    iput-object p5, p0, Lcom/powervision/gcs/utils/AircraftAnimation$3;->val$onComplete:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 162
    iget-object v0, p0, Lcom/powervision/gcs/utils/AircraftAnimation$3;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/utils/AircraftAnimation$3;->val$thisFrame:Lcom/powervision/gcs/utils/AircraftAnimation$MyFrame;

    iget-object v1, v1, Lcom/powervision/gcs/utils/AircraftAnimation$MyFrame;->drawable:Landroid/graphics/drawable/Drawable;

    if-ne v0, v1, :cond_2

    .line 163
    iget v0, p0, Lcom/powervision/gcs/utils/AircraftAnimation$3;->val$frameNumber:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/powervision/gcs/utils/AircraftAnimation$3;->val$myFrames:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 164
    iget-object v0, p0, Lcom/powervision/gcs/utils/AircraftAnimation$3;->val$myFrames:Ljava/util/List;

    iget v2, p0, Lcom/powervision/gcs/utils/AircraftAnimation$3;->val$frameNumber:I

    add-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/gcs/utils/AircraftAnimation$MyFrame;

    .line 166
    iget-boolean v2, v0, Lcom/powervision/gcs/utils/AircraftAnimation$MyFrame;->isReady:Z

    if-eqz v2, :cond_0

    .line 168
    iget-object v0, p0, Lcom/powervision/gcs/utils/AircraftAnimation$3;->val$myFrames:Ljava/util/List;

    iget-object v2, p0, Lcom/powervision/gcs/utils/AircraftAnimation$3;->val$imageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/powervision/gcs/utils/AircraftAnimation$3;->val$onComplete:Ljava/lang/Runnable;

    iget v4, p0, Lcom/powervision/gcs/utils/AircraftAnimation$3;->val$frameNumber:I

    add-int/2addr v4, v1

    invoke-static {v0, v2, v3, v4}, Lcom/powervision/gcs/utils/AircraftAnimation;->access$100(Ljava/util/List;Landroid/widget/ImageView;Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 171
    :cond_0
    iput-boolean v1, v0, Lcom/powervision/gcs/utils/AircraftAnimation$MyFrame;->isReady:Z

    goto :goto_0

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/powervision/gcs/utils/AircraftAnimation$3;->val$onComplete:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 175
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    :goto_0
    return-void
.end method
