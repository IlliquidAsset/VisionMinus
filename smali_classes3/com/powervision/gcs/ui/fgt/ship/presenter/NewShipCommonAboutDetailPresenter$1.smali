.class Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter$1;
.super Ljava/lang/Object;
.source "NewShipCommonAboutDetailPresenter.java"

# interfaces
.implements Lcom/powervision/gcs/manager/PsnGetUtil$PsnGetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public PsnNotify(Ljava/lang/String;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;->access$000(Lcom/powervision/gcs/ui/fgt/ship/presenter/NewShipCommonAboutDetailPresenter;)Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/powervision/gcs/ui/fgt/ship/task/ShipCommonAboutDetailTask$View;->getPsnSucceed(Ljava/lang/String;)V

    return-void
.end method
