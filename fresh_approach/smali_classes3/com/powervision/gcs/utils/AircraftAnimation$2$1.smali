.class Lcom/powervision/gcs/utils/AircraftAnimation$2$1;
.super Ljava/lang/Object;
.source "AircraftAnimation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/utils/AircraftAnimation$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/utils/AircraftAnimation$2;

.field final synthetic val$myFrames:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/utils/AircraftAnimation$2;Ljava/util/ArrayList;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/powervision/gcs/utils/AircraftAnimation$2$1;->this$0:Lcom/powervision/gcs/utils/AircraftAnimation$2;

    iput-object p2, p0, Lcom/powervision/gcs/utils/AircraftAnimation$2$1;->val$myFrames:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/powervision/gcs/utils/AircraftAnimation$2$1;->this$0:Lcom/powervision/gcs/utils/AircraftAnimation$2;

    iget-object v0, v0, Lcom/powervision/gcs/utils/AircraftAnimation$2;->val$onDrawableLoadedListener:Lcom/powervision/gcs/utils/AircraftAnimation$OnDrawableLoadedListener;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/powervision/gcs/utils/AircraftAnimation$2$1;->this$0:Lcom/powervision/gcs/utils/AircraftAnimation$2;

    iget-object v0, v0, Lcom/powervision/gcs/utils/AircraftAnimation$2;->val$onDrawableLoadedListener:Lcom/powervision/gcs/utils/AircraftAnimation$OnDrawableLoadedListener;

    iget-object v1, p0, Lcom/powervision/gcs/utils/AircraftAnimation$2$1;->val$myFrames:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/powervision/gcs/utils/AircraftAnimation$OnDrawableLoadedListener;->onDrawableLoaded(Ljava/util/List;)V

    :cond_0
    return-void
.end method
