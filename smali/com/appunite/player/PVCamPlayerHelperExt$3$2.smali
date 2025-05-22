.class Lcom/appunite/player/PVCamPlayerHelperExt$3$2;
.super Ljava/lang/Object;
.source "PVCamPlayerHelperExt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appunite/player/PVCamPlayerHelperExt$3;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/appunite/player/PVCamPlayerHelperExt$3;


# direct methods
.method constructor <init>(Lcom/appunite/player/PVCamPlayerHelperExt$3;)V
    .locals 0

    .line 658
    iput-object p1, p0, Lcom/appunite/player/PVCamPlayerHelperExt$3$2;->this$1:Lcom/appunite/player/PVCamPlayerHelperExt$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 661
    iget-object v0, p0, Lcom/appunite/player/PVCamPlayerHelperExt$3$2;->this$1:Lcom/appunite/player/PVCamPlayerHelperExt$3;

    iget-object v0, v0, Lcom/appunite/player/PVCamPlayerHelperExt$3;->this$0:Lcom/appunite/player/PVCamPlayerHelperExt;

    invoke-static {v0}, Lcom/appunite/player/PVCamPlayerHelperExt;->access$800(Lcom/appunite/player/PVCamPlayerHelperExt;)V

    return-void
.end method
