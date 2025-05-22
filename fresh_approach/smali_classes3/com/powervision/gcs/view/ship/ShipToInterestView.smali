.class public Lcom/powervision/gcs/view/ship/ShipToInterestView;
.super Landroid/widget/RelativeLayout;
.source "ShipToInterestView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/view/ship/ShipToInterestView$FunctionListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ShipToInterestView"


# instance fields
.field private functionListener:Lcom/powervision/gcs/view/ship/ShipToInterestView$FunctionListener;

.field private mContext:Landroid/content/Context;

.field private mPVW4SailModelManager:Lcom/powervision/gcs/manager/PVW4SailModelManager;

.field mTextHide:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x117a
    .end annotation
.end field

.field mTextStart:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x117b
    .end annotation
.end field

.field mTextTile:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x110c
    .end annotation
.end field

.field mTextTips:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x110b
    .end annotation
.end field

.field private missionTimerDisposable:Lio/reactivex/rxjava3/disposables/Disposable;

.field onClickListener:Landroid/view/View$OnClickListener;

.field private onSailModeChangeListener:Lcom/powervision/natives/callback/DophinCallback$onSailModeListener;

.field private type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 115
    new-instance p1, Lcom/powervision/gcs/view/ship/ShipToInterestView$1;

    invoke-direct {p1, p0}, Lcom/powervision/gcs/view/ship/ShipToInterestView$1;-><init>(Lcom/powervision/gcs/view/ship/ShipToInterestView;)V

    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipToInterestView;->onClickListener:Landroid/view/View$OnClickListener;

    .line 197
    new-instance p1, Lcom/powervision/gcs/view/ship/ShipToInterestView$2;

    invoke-direct {p1, p0}, Lcom/powervision/gcs/view/ship/ShipToInterestView$2;-><init>(Lcom/powervision/gcs/view/ship/ShipToInterestView;)V

    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipToInterestView;->onSailModeChangeListener:Lcom/powervision/natives/callback/DophinCallback$onSailModeListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, v0}, Lcom/powervision/gcs/view/ship/ShipToInterestView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    iput p2, p0, Lcom/powervision/gcs/view/ship/ShipToInterestView;->type:I

    .line 66
    invoke-direct {p0, p2}, Lcom/powervision/gcs/view/ship/ShipToInterestView;->setTitles(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    new-instance p2, Lcom/powervision/gcs/view/ship/ShipToInterestView$1;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/view/ship/ShipToInterestView$1;-><init>(Lcom/powervision/gcs/view/ship/ShipToInterestView;)V

    iput-object p2, p0, Lcom/powervision/gcs/view/ship/ShipToInterestView;->onClickListener:Landroid/view/View$OnClickListener;

    .line 197
    new-instance p2, Lcom/powervision/gcs/view/ship/ShipToInterestView$2;

    invoke-direct {p2, p0}, Lcom/powervision/gcs/view/ship/ShipToInterestView$2;-><init>(Lcom/powervision/gcs/view/ship/ShipToInterestView;)V

    iput-object p2, p0, Lcom/powervision/gcs/view/ship/ShipToInterestView;->onSailModeChangeListener:Lcom/powervision/natives/callback/DophinCallback$onSailModeListener;

    .line 71
    sget p2, Lcom/powervision/gcs/R$layout;->ship_interest_view:I

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 72
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipToInterestView;->mContext:Landroid/content/Context;

    .line 73
    invoke-static {p2}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    .line 74
    invoke-direct {p0}, Lcom/powervision/gcs/view/ship/ShipToInterestView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/view/ship/ShipToInterestView;)Lcom/powervision/gcs/view/ship/ShipToInterestView$FunctionListener;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/powervision/gcs/view/ship/ShipToInterestView;->functionListener:Lcom/powervision/gcs/view/ship/ShipToInterestView$FunctionListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/gcs/view/ship/ShipToInterestView;)Lio/reactivex/rxjava3/disposables/Disposable;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/powervision/gcs/view/ship/ShipToInterestView;->missionTimerDisposable:Lio/reactivex/rxjava3/disposables/Disposable;

    return-object p0
.end method

.method static synthetic access$102(Lcom/powervision/gcs/view/ship/ShipToInterestView;Lio/reactivex/rxjava3/disposables/Disposable;)Lio/reactivex/rxjava3/disposables/Disposable;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipToInterestView;->missionTimerDisposable:Lio/reactivex/rxjava3/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$200(Lcom/powervision/gcs/view/ship/ShipToInterestView;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/powervision/gcs/view/ship/ShipToInterestView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private dealWithMessage(Landroid/os/Message;)V
    .locals 1

    .line 163
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipToInterestView;->functionListener:Lcom/powervision/gcs/view/ship/ShipToInterestView$FunctionListener;

    if-eqz p1, :cond_0

    .line 164
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipToInterestView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/powervision/gcs/utils/ShipMessageUtils;->getInstance(Landroid/content/Context;)Lcom/powervision/gcs/utils/ShipMessageUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/utils/ShipMessageUtils;->getModeErrorMsg()Lcom/powervision/gcs/model/ship/ShipWarning;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/powervision/gcs/view/ship/ShipToInterestView$FunctionListener;->showError(Lcom/powervision/gcs/model/ship/ShipWarning;)V

    :cond_0
    return-void
.end method

.method private init()V
    .locals 2

    .line 79
    invoke-static {}, Lcom/powervision/gcs/manager/PVW4SailModelManager;->getInstance()Lcom/powervision/gcs/manager/PVW4SailModelManager;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/view/ship/ShipToInterestView;->mPVW4SailModelManager:Lcom/powervision/gcs/manager/PVW4SailModelManager;

    .line 80
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipToInterestView;->mTextStart:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipToInterestView;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipToInterestView;->mTextHide:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipToInterestView;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipToInterestView;->mPVW4SailModelManager:Lcom/powervision/gcs/manager/PVW4SailModelManager;

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipToInterestView;->onSailModeChangeListener:Lcom/powervision/natives/callback/DophinCallback$onSailModeListener;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/manager/PVW4SailModelManager;->addSailChangeListener(Lcom/powervision/natives/callback/DophinCallback$onSailModeListener;)V

    return-void
.end method

.method private setTitles(I)V
    .locals 1

    const/16 v0, 0x82

    if-ne p1, v0, :cond_0

    .line 93
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipToInterestView;->mTextTile:Landroid/widget/TextView;

    sget v0, Lcom/powervision/gcs/R$string;->PVW4_Msg_132:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 94
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipToInterestView;->mTextTips:Landroid/widget/TextView;

    sget v0, Lcom/powervision/gcs/R$string;->PVW4_Map_31:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8c

    if-ne p1, v0, :cond_1

    .line 96
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipToInterestView;->mTextTile:Landroid/widget/TextView;

    sget v0, Lcom/powervision/gcs/R$string;->PVW4_Map_27:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 97
    iget-object p1, p0, Lcom/powervision/gcs/view/ship/ShipToInterestView;->mTextTips:Landroid/widget/TextView;

    sget v0, Lcom/powervision/gcs/R$string;->PVW4_Map_30:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 2

    .line 87
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 88
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipToInterestView;->mPVW4SailModelManager:Lcom/powervision/gcs/manager/PVW4SailModelManager;

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipToInterestView;->onSailModeChangeListener:Lcom/powervision/natives/callback/DophinCallback$onSailModeListener;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/manager/PVW4SailModelManager;->removeSailChangeListener(Lcom/powervision/natives/callback/DophinCallback$onSailModeListener;)V

    return-void
.end method

.method public setActionEnable(Z)V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipToInterestView;->mTextStart:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public setActionText(I)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipToInterestView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/ship/ShipToInterestView;->setActionText(Ljava/lang/String;)V

    return-void
.end method

.method public setActionText(Ljava/lang/String;)V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipToInterestView;->mTextStart:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setComplete()V
    .locals 3

    .line 102
    iget v0, p0, Lcom/powervision/gcs/view/ship/ShipToInterestView;->type:I

    const/16 v1, 0x82

    if-ne v0, v1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipToInterestView;->mTextTips:Landroid/widget/TextView;

    sget v1, Lcom/powervision/gcs/R$string;->PVW4_Msg_132:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x8c

    if-ne v0, v1, :cond_1

    .line 105
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipToInterestView;->mTextTips:Landroid/widget/TextView;

    sget v1, Lcom/powervision/gcs/R$string;->PVW4_Map_27:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 107
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipToInterestView;->mTextStart:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/powervision/gcs/view/ship/ShipToInterestView;->mContext:Landroid/content/Context;

    sget v2, Lcom/powervision/gcs/R$string;->PVW4_AI_9:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipToInterestView;->functionListener:Lcom/powervision/gcs/view/ship/ShipToInterestView$FunctionListener;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 109
    invoke-interface {v0, v1}, Lcom/powervision/gcs/view/ship/ShipToInterestView$FunctionListener;->action(Z)V

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/powervision/gcs/view/ship/ShipToInterestView;->mTextStart:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public setFunctionListener(Lcom/powervision/gcs/view/ship/ShipToInterestView$FunctionListener;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/powervision/gcs/view/ship/ShipToInterestView;->functionListener:Lcom/powervision/gcs/view/ship/ShipToInterestView$FunctionListener;

    return-void
.end method
