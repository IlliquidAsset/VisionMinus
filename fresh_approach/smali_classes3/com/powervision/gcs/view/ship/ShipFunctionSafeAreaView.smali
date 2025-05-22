.class public Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView;
.super Landroid/widget/RelativeLayout;
.source "ShipFunctionSafeAreaView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView$IFunctionListener;
    }
.end annotation


# instance fields
.field detailClose:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x1000
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFunctionListener:Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView$IFunctionListener;

.field private shipMainActivity:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

.field shipSafeDetailHide:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x1054
    .end annotation
.end field

.field shipSafeDetailSend:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x1055
    .end annotation
.end field

.field shipTvSafeLength:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x1067
    .end annotation
.end field

.field shipTvSafeWidth:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x1068
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    sget p2, Lcom/powervision/gcs/R$layout;->ship_function_safe_detail_view:I

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 44
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView;->mContext:Landroid/content/Context;

    .line 45
    invoke-static {p2}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method


# virtual methods
.method public setOnFunctionListener(Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView$IFunctionListener;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView;->mFunctionListener:Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView$IFunctionListener;

    return-void
.end method

.method public setWidthAndHeight(II)V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView;->shipTvSafeWidth:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView;->shipTvSafeLength:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method ship_detail_close_iv()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x1000
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView;->mFunctionListener:Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView$IFunctionListener;

    invoke-interface {v0, p0}, Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView$IFunctionListener;->onClose(Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView;)V

    return-void
.end method

.method ship_safe_detail_hide()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x1054
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView;->mFunctionListener:Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView$IFunctionListener;

    invoke-interface {v0}, Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView$IFunctionListener;->onHidden()V

    return-void
.end method

.method ship_safe_detail_send()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x1055
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView;->mFunctionListener:Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView$IFunctionListener;

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView;->shipSafeDetailSend:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Lcom/powervision/gcs/view/ship/ShipFunctionSafeAreaView$IFunctionListener;->onSend(Landroid/widget/TextView;)V

    return-void
.end method
