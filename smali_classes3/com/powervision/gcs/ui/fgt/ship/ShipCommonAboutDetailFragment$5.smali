.class Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$5;
.super Ljava/lang/Object;
.source "ShipCommonAboutDetailFragment.java"

# interfaces
.implements Lcom/powervision/gcs/view/AboutVersionView$OnAboutVersionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->showRemoteDownLoad(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

.field final synthetic val$isA:Z


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;Z)V
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$5;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

    iput-boolean p2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$5;->val$isA:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownload()V
    .locals 8

    .line 358
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$5;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

    const/4 v1, 0x1

    iput v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->type:I

    .line 362
    iget-object v2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$5;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

    iget v3, v2, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->type:I

    sget-object v4, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->remoteDownLoadSize:Ljava/lang/String;

    sget-object v5, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->remoteReleaseNote:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$5;->val$isA:Z

    const-string v6, ""

    invoke-static/range {v2 .. v7}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->access$400(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public onUpgrade()V
    .locals 0

    return-void
.end method
