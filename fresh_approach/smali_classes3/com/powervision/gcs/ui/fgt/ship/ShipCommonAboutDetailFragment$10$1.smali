.class Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$10$1;
.super Ljava/lang/Object;
.source "ShipCommonAboutDetailFragment.java"

# interfaces
.implements Lcom/powervision/gcs/view/AboutVersionView$OnAboutVersionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$10;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$10;)V
    .locals 0

    .line 474
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$10$1;->this$1:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownload()V
    .locals 7

    .line 478
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$10$1;->this$1:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$10;

    iget-object v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$10;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$10$1;->this$1:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$10;

    iget-object v0, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$10;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

    iget v2, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->type:I

    sget-object v3, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->bodyDownLoadSize:Ljava/lang/String;

    sget-object v4, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->bodyReleaseNote:Ljava/lang/String;

    sget-object v5, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->BODYZIPNAME:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->access$400(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public onUpgrade()V
    .locals 0

    return-void
.end method
