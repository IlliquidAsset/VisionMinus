.class Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$10;
.super Ljava/lang/Object;
.source "ShipCommonAboutDetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->showBodyDownLoad()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;)V
    .locals 0

    .line 468
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$10;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 471
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$10;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

    const/4 v1, 0x2

    iput v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->type:I

    const-string v0, "lzqState"

    const-string v1, "showDownload"

    .line 472
    invoke-static {v0, v1}, Lcom/powervision/gcs/utils/show/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$10;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

    iget-object v0, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->versionMain:Lcom/powervision/gcs/view/AboutVersionView;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/AboutVersionView;->showDownload()V

    .line 474
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$10;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

    iget-object v0, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->versionMain:Lcom/powervision/gcs/view/AboutVersionView;

    new-instance v1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$10$1;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$10$1;-><init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$10;)V

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/AboutVersionView;->setOnAboutVersionListener(Lcom/powervision/gcs/view/AboutVersionView$OnAboutVersionListener;)V

    return-void
.end method
