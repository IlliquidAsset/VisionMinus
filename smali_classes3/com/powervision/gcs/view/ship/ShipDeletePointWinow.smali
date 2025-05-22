.class public Lcom/powervision/gcs/view/ship/ShipDeletePointWinow;
.super Landroid/widget/PopupWindow;
.source "ShipDeletePointWinow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/view/ship/ShipDeletePointWinow$onDeletePointListener;
    }
.end annotation


# instance fields
.field private deleteText:Landroid/widget/TextView;

.field private heightValue:I

.field private index:I

.field private onDeleteListener:Lcom/powervision/gcs/view/ship/ShipDeletePointWinow$onDeletePointListener;

.field private submitText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 36
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/powervision/gcs/R$layout;->ship_delete_point_window:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 38
    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/ship/ShipDeletePointWinow;->setContentView(Landroid/view/View;)V

    const/16 v0, 0x3e8

    .line 39
    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/ship/ShipDeletePointWinow;->setWidth(I)V

    const/16 v0, 0x320

    .line 40
    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/ship/ShipDeletePointWinow;->setHeight(I)V

    .line 41
    invoke-direct {p0, p1}, Lcom/powervision/gcs/view/ship/ShipDeletePointWinow;->initView(Landroid/view/View;)V

    .line 42
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/ShipDeletePointWinow;->setListener()V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1

    .line 47
    sget v0, Lcom/powervision/gcs/R$id;->confirm_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipDeletePointWinow;->submitText:Landroid/widget/TextView;

    .line 48
    sget v0, Lcom/powervision/gcs/R$id;->cancel_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipDeletePointWinow;->deleteText:Landroid/widget/TextView;

    return-void
.end method

.method private setListener()V
    .locals 0

    return-void
.end method


# virtual methods
.method cancel_text()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0xc6f
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipDeletePointWinow;->onDeleteListener:Lcom/powervision/gcs/view/ship/ShipDeletePointWinow$onDeletePointListener;

    invoke-interface {v0}, Lcom/powervision/gcs/view/ship/ShipDeletePointWinow$onDeletePointListener;->cancel()V

    return-void
.end method

.method confirm_text()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0xc9f
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipDeletePointWinow;->onDeleteListener:Lcom/powervision/gcs/view/ship/ShipDeletePointWinow$onDeletePointListener;

    iget v1, p0, Lcom/powervision/gcs/view/ship/ShipDeletePointWinow;->index:I

    invoke-interface {v0, v1}, Lcom/powervision/gcs/view/ship/ShipDeletePointWinow$onDeletePointListener;->confirm(I)V

    return-void
.end method

.method public getIndex()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/powervision/gcs/view/ship/ShipDeletePointWinow;->index:I

    return v0
.end method

.method public setIndex(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/powervision/gcs/view/ship/ShipDeletePointWinow;->index:I

    return-void
.end method

.method public setOnDeletePointListener(Lcom/powervision/gcs/view/ship/ShipDeletePointWinow$onDeletePointListener;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipDeletePointWinow;->onDeleteListener:Lcom/powervision/gcs/view/ship/ShipDeletePointWinow$onDeletePointListener;

    return-void
.end method
