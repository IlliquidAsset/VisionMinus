.class Lcom/appunite/player/PVCamPlayerHelper$4;
.super Ljava/lang/Object;
.source "PVCamPlayerHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appunite/player/PVCamPlayerHelper;->prepareToDes()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appunite/player/PVCamPlayerHelper;


# direct methods
.method constructor <init>(Lcom/appunite/player/PVCamPlayerHelper;)V
    .locals 0

    .line 679
    iput-object p1, p0, Lcom/appunite/player/PVCamPlayerHelper$4;->this$0:Lcom/appunite/player/PVCamPlayerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 683
    iget-object v0, p0, Lcom/appunite/player/PVCamPlayerHelper$4;->this$0:Lcom/appunite/player/PVCamPlayerHelper;

    invoke-static {v0}, Lcom/appunite/player/PVCamPlayerHelper;->access$800(Lcom/appunite/player/PVCamPlayerHelper;)Lcom/powervision/gcs/usb2/MsgHandle;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/MsgHandle;->addAWork_queue(Ljava/lang/Object;)V

    return-void
.end method
