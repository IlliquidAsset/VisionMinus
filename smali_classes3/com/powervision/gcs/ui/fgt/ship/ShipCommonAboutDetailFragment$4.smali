.class Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$4;
.super Ljava/lang/Object;
.source "ShipCommonAboutDetailFragment.java"

# interfaces
.implements Lcom/powervision/gcs/view/AboutVersionView$OnAboutVersionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->showRemoteDownLoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

.field final synthetic val$md5:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$4;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

    iput-object p2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$4;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$4;->val$md5:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownload()V
    .locals 3

    .line 336
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$4;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

    const/4 v1, 0x1

    iput v1, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->type:I

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$4;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$4;->val$md5:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remoteurl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqVersion"

    invoke-static {v1, v0}, Lcom/powervision/gcs/utils/show/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade()V
    .locals 0

    return-void
.end method
