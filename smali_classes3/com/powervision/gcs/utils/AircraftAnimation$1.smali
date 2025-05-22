.class final Lcom/powervision/gcs/utils/AircraftAnimation$1;
.super Ljava/lang/Object;
.source "AircraftAnimation.java"

# interfaces
.implements Lcom/powervision/gcs/utils/AircraftAnimation$OnDrawableLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/utils/AircraftAnimation;->animateRawManuallyFromXML(ILandroid/widget/ImageView;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$imageView:Landroid/widget/ImageView;

.field final synthetic val$onComplete:Ljava/lang/Runnable;

.field final synthetic val$onStart:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Landroid/widget/ImageView;Ljava/lang/Runnable;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/powervision/gcs/utils/AircraftAnimation$1;->val$onStart:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/powervision/gcs/utils/AircraftAnimation$1;->val$imageView:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/powervision/gcs/utils/AircraftAnimation$1;->val$onComplete:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawableLoaded(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/gcs/utils/AircraftAnimation$MyFrame;",
            ">;)V"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/powervision/gcs/utils/AircraftAnimation$1;->val$onStart:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 50
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/utils/AircraftAnimation$1;->val$imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/powervision/gcs/utils/AircraftAnimation$1;->val$onComplete:Ljava/lang/Runnable;

    invoke-static {p1, v0, v1}, Lcom/powervision/gcs/utils/AircraftAnimation;->access$000(Ljava/util/List;Landroid/widget/ImageView;Ljava/lang/Runnable;)V

    return-void
.end method
