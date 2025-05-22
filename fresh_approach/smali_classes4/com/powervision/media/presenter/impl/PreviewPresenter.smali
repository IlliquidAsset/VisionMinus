.class public Lcom/powervision/media/presenter/impl/PreviewPresenter;
.super Lcom/powervision/base/base/BasePresenter;
.source "PreviewPresenter.java"

# interfaces
.implements Lcom/powervision/media/presenter/IPreviewPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BasePresenter<",
        "Lcom/powervision/media/ui/view/IPreviewView;",
        "Lcom/powervision/media/model/impl/PreviewModel;",
        ">;",
        "Lcom/powervision/media/presenter/IPreviewPresenter;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/powervision/base/base/BasePresenter;-><init>()V

    return-void
.end method
