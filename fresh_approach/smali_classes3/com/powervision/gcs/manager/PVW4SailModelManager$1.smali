.class Lcom/powervision/gcs/manager/PVW4SailModelManager$1;
.super Ljava/lang/Object;
.source "PVW4SailModelManager.java"

# interfaces
.implements Lcom/powervision/natives/callback/DophinCallback$onSailModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/manager/PVW4SailModelManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/manager/PVW4SailModelManager;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/manager/PVW4SailModelManager;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/powervision/gcs/manager/PVW4SailModelManager$1;->this$0:Lcom/powervision/gcs/manager/PVW4SailModelManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSailModeChanged(I)V
    .locals 2

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSailModeChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PVW4SailModelManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4SailModelManager$1;->this$0:Lcom/powervision/gcs/manager/PVW4SailModelManager;

    invoke-static {v0, p1}, Lcom/powervision/gcs/manager/PVW4SailModelManager;->access$102(Lcom/powervision/gcs/manager/PVW4SailModelManager;I)I

    .line 92
    iget-object v0, p0, Lcom/powervision/gcs/manager/PVW4SailModelManager$1;->this$0:Lcom/powervision/gcs/manager/PVW4SailModelManager;

    invoke-static {v0, p1}, Lcom/powervision/gcs/manager/PVW4SailModelManager;->access$200(Lcom/powervision/gcs/manager/PVW4SailModelManager;I)V

    return-void
.end method
